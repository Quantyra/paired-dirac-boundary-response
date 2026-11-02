#!/usr/bin/env bash
# Exact-source Lean replay of `R3_kernel_integrableOn`: the (4.3) kernel is
# integrable on (0, inf).
#
# The retained Space build lost the `.ir` sidecar of a handful of modules, which
# makes them unimportable. This runner rebuilds exactly those modules from the
# pinned Mathlib sources into a symlink farm (`$run/farm`) that precedes the
# retained build in LEAN_PATH. The retained trees are never written to; the farm
# is created fresh inside the run directory.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-integrab-${RUN_TAG:-dev}"
pk="$HOME/quantyra-space-runs/space-20261007T093129Z-retry1/packages"
ml="$pk/mathlib"
treelib="$ml/.lake/build/lib/lean"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
mathlib_sha='c5ea00351c28e24afc9f0f84379aa41082b1188f'

flat_sha='c769670d0a3172326aa24fe5d72ef57fbb72f17a199cc2e161b582d9190c49eb'
cubic_sha='6d49d6ac2f92c479e8033f23d760ac593bfaefb4d80b6f22948f5600955c1a90'
small_sha='b68f338739d524db5993cbaaec0322e4ef6d9f6833ee8bcdc6b99ad67b64c324'
asym_sha='0803650ff8974637ec4fa7975c91f90079d3acaee4194f72955ee4c6a91a0e89'
source="$HOME/ManuscriptR2Assembly.lean"
source_sha='d194b3413918084915429e7b44e666d7acf1aa23446b2d19b89548691218a2ca'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test -x "$toolchain/lean"
test "$(git -C "$ml" rev-parse HEAD)" = "$mathlib_sha"
printf '%s  %s\n' "$flat_sha"  "$HOME/ManuscriptFlatBound.lean"    | sha256sum -c -
printf '%s  %s\n' "$cubic_sha" "$HOME/ManuscriptCubic.lean"        | sha256sum -c -
printf '%s  %s\n' "$small_sha" "$HOME/ManuscriptSmallOrder.lean"   | sha256sum -c -
printf '%s  %s\n' "$asym_sha"  "$HOME/ManuscriptR2Asymptotics.lean"| sha256sum -c -
printf '%s  %s\n' "$source_sha" "$source"                          | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
grep -F 'd024af099ca4bf2c86f649261ebf59565dc8c622' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

lean_path=""
for pkg in batteries Qq aesop proofwidgets importGraph LeanSearchClient plausible mathlib; do
  pkg_lib="$pk/$pkg/.lake/build/lib/lean"
  test -d "$pkg_lib"
  lean_path="${lean_path:+$lean_path:}$pkg_lib"
done
lean_path="$lean_path:$(dirname "$toolchain")/lib/lean"

# ---- symlink farm over the retained build (writes stay inside the run) ----
farm="$run/farm"
cp -as "$treelib" "$farm"
farm_path="$farm:$lean_path"
printf '%s\n' "$farm_path" > "$run/lean-path.txt"

# ---- rebuild the modules whose .ir sidecar is missing ----
mkdir "$run/probe"
cat > "$run/probe/Probe.lean" <<'EOF'
import Mathlib.MeasureTheory.Integral.IntegrableOn
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
example : (1 : ℝ) = 1 := rfl
EOF
: > "$run/farm-rebuild.log"
i=0
while [ $i -lt 140 ]; do
  i=$((i+1))
  set +e
  out=$(cd "$run/probe" && LEAN_PATH="$run/probe:$farm_path" timeout 900 lean Probe.lean 2>&1)
  code=$?
  set -e
  if [ $code -eq 0 ]; then
    echo "probe ok after $((i-1)) rebuilds" | tee -a "$run/farm-rebuild.log"
    break
  fi
  mod=$(printf '%s\n' "$out" | sed -n 's/.*missing IR data file for module \([A-Za-z0-9_.]*\).*/\1/p' | head -1)
  if [ -z "$mod" ]; then
    printf '%s\n' "$out" | grep -m3 'error' || true
    echo "no further IR module identified; aborting" | tee -a "$run/farm-rebuild.log"
    exit 1
  fi
  rel=$(printf '%s' "$mod" | tr '.' '/')
  echo "rebuild $mod" | tee -a "$run/farm-rebuild.log"
  rm -f "$farm/$rel.olean" "$farm/$rel.olean.private" "$farm/$rel.olean.server" "$farm/$rel.ilean"
  cp "$ml/$rel.lean" "$farm/$rel.lean"
  ( cd "$farm" && LEAN_PATH="$farm_path" timeout 1800 lean -R "$farm" -o "$farm/$rel.olean" "$rel.lean" >> "$run/farm-rebuild.log" 2>&1 )
  test -f "$farm/$rel.olean"
done

# ---- compile the dependency chain, then the target ----
cp "$HOME/ManuscriptFlatBound.lean" "$run/"
cp "$HOME/ManuscriptCubic.lean" "$run/"
cp "$HOME/ManuscriptSmallOrder.lean" "$run/"
cp "$HOME/ManuscriptR2Asymptotics.lean" "$run/"
cp "$source" "$run/ManuscriptR2Assembly.lean"
cd "$run"
sha256sum ManuscriptFlatBound.lean ManuscriptCubic.lean ManuscriptSmallOrder.lean \
  ManuscriptR2Asymptotics.lean ManuscriptR2Assembly.lean | tee lean-source-sha256.txt

export LEAN_PATH="$run:$farm_path"
for m in ManuscriptFlatBound ManuscriptCubic ManuscriptSmallOrder ManuscriptR2Asymptotics; do
  echo "--- dependency: $m ---"
  lean -o "$m.olean" "$m.lean" 2>&1 | tee "$m.log"
  grep -q 'sorryAx' "$m.log" && { echo "sorryAx in $m"; exit 1; }
done
echo '--- target: ManuscriptR2Assembly ---'
lean -o ManuscriptR2Assembly.olean ManuscriptR2Assembly.lean 2>&1 | tee lean.log

theorems="volume_Ioc_zero_one_lt_top continuous_R2 continuous_R3 measurable_R3_kernel
R3_kernel_integrableOn"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum ManuscriptR2Assembly.lean | tee target-source-sha256.txt
sha256sum ManuscriptR2Assembly.olean | tee olean-sha256.txt
echo RECEIPT_COMPLETE

#!/usr/bin/env bash
# Exact-source Lean replay of the (4.8) integral formalization on the
# Quantyra GCP builder; never run locally. This is the first manuscript
# receipt that uses the Space reference Mathlib build, which contains
# Mathlib.MeasureTheory.Integral.IntervalIntegral.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-integral-20261101-r2"
deps="$HOME/quantyra-space-runs/space-20261007T093129Z-retry1/packages"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/ManuscriptIntegral.lean"
source_sha='608ed5ead89e6911ce77f8a6dfd1494524a095097e3aec7f090e70f42adf2de0'
mathlib_sha='c5ea00351c28e24afc9f0f84379aa41082b1188f'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test -x "$toolchain/lean"
test "$(git -C "$deps/mathlib" rev-parse HEAD)" = "$mathlib_sha"
test -f "$deps/mathlib/.lake/build/lib/lean/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.olean"
printf '%s  %s\n' "$source_sha" "$source" | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
grep -F 'd024af099ca4bf2c86f649261ebf59565dc8c622' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

lean_path=""
for pkg in batteries Qq aesop proofwidgets importGraph LeanSearchClient plausible mathlib; do
  pkg_lib="$deps/$pkg/.lake/build/lib/lean"
  test -d "$pkg_lib"
  lean_path="${lean_path:+$lean_path:}$pkg_lib"
done
lean_path="$lean_path:$(dirname "$toolchain")/lib/lean"
export LEAN_PATH="$run:$lean_path"
printf '%s\n' "$lean_path" > "$run/lean-path.txt"

cp "$source" "$run/ManuscriptIntegral.lean"
cd "$run"
sha256sum ManuscriptIntegral.lean | tee lean-source-sha256.txt
lean -o ManuscriptIntegral.olean ManuscriptIntegral.lean 2>&1 | tee lean.log

theorems="flat_time_integral_bound flat_time_integral_bound_of_bounded continuum_variation_of_constants"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c lean-source-sha256.txt
sha256sum ManuscriptIntegral.olean | tee olean-sha256.txt

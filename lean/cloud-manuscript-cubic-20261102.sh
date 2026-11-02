#!/usr/bin/env bash
# Exact-source Lean replay of the Proposition 4.1 coefficient algebra and the
# R3 kernel structure on the Quantyra GCP builder; never run locally.
#
# Compiles the already-certified kernel-bound module first (its source hash is
# pinned), then the new module that imports it.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-cubic-${RUN_TAG:-dev}"
deps="$HOME/quantyra-space-runs/space-20261007T093129Z-retry1/packages"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
base_source="$HOME/ManuscriptFlatBound.lean"
base_sha='c769670d0a3172326aa24fe5d72ef57fbb72f17a199cc2e161b582d9190c49eb'
source="$HOME/ManuscriptCubic.lean"
source_sha='6d49d6ac2f92c479e8033f23d760ac593bfaefb4d80b6f22948f5600955c1a90'
mathlib_sha='c5ea00351c28e24afc9f0f84379aa41082b1188f'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test -x "$toolchain/lean"
test "$(git -C "$deps/mathlib" rev-parse HEAD)" = "$mathlib_sha"
printf '%s  %s\n' "$base_sha" "$base_source" | sha256sum -c -
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

cp "$base_source" "$run/ManuscriptFlatBound.lean"
cp "$source" "$run/ManuscriptCubic.lean"
cd "$run"
sha256sum ManuscriptFlatBound.lean ManuscriptCubic.lean | tee lean-source-sha256.txt

echo '--- dependency module: ManuscriptFlatBound ---'
lean -o ManuscriptFlatBound.olean ManuscriptFlatBound.lean 2>&1 | tee base-lean.log
sha256sum ManuscriptFlatBound.olean | tee base-olean-sha256.txt

echo '--- target module: ManuscriptCubic ---'
lean -o ManuscriptCubic.olean ManuscriptCubic.lean 2>&1 | tee lean.log

theorems="R3_eq pi_rpow_three_halves sqrt_pi_mul_sqrt_pi cubic_coefficient
Ffun_le_one R3_nonpos R3_lower R3_large_neg R3_kernel_domination
R3_kernel_upper"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
for log in base-lean.log lean.log; do
  if grep -q 'sorryAx' "$log"; then
    echo "Unexpected sorryAx in $log." >&2
    exit 1
  fi
done
sha256sum -c lean-source-sha256.txt
sha256sum ManuscriptCubic.olean | tee olean-sha256.txt

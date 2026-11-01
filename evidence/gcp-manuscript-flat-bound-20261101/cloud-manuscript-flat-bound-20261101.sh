#!/usr/bin/env bash
# Exact-source Lean replay of the (4.7) kernel-bound formalization on the
# Quantyra GCP builder; never run locally. Uses the Space reference Mathlib
# build, which contains Mathlib.MeasureTheory.Integral.IntervalIntegral.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-flat-bound-${RUN_TAG:-dev}"
deps="$HOME/quantyra-space-runs/space-20261007T093129Z-retry1/packages"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/ManuscriptFlatBound.lean"
source_sha='c769670d0a3172326aa24fe5d72ef57fbb72f17a199cc2e161b582d9190c49eb'
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

cp "$source" "$run/ManuscriptFlatBound.lean"
cd "$run"
sha256sum ManuscriptFlatBound.lean | tee lean-source-sha256.txt
lean -o ManuscriptFlatBound.olean ManuscriptFlatBound.lean 2>&1 | tee lean.log

theorems="phi_remainder integral_weightA_sq integral_weightA_cu
phi_remainder_nonneg phi_remainder_le_cubic phi_remainder_le_quadratic
R2_eq_half_integral R2_nonneg R2_le_cubic R2_le_quadratic R2_bound"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c lean-source-sha256.txt
sha256sum ManuscriptFlatBound.olean | tee olean-sha256.txt

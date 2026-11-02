#!/usr/bin/env bash
# Exact-source Lean replay of the (4.7) kernel-bound formalization on the
# Quantyra GCP builder; never run locally. Uses the Space reference Mathlib
# build, which contains Mathlib.MeasureTheory.Integral.IntervalIntegral.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-fourier-${RUN_TAG:-dev}"
deps="$HOME/quantyra-space-runs/space-20261007T093129Z-retry1/packages"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/ManuscriptFourier.lean"
source_sha='f5af6e3825a1a8c66923ae8d5ba64740b951d10ed7fe5a786d7ad03107181b7d'
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

cp "$source" "$run/ManuscriptFourier.lean"
cd "$run"
sha256sum ManuscriptFourier.lean | tee lean-source-sha256.txt
lean -o ManuscriptFourier.olean ManuscriptFourier.lean 2>&1 | tee lean.log

theorems="symbol_identity plancherel_l2 plancherel_draft"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c lean-source-sha256.txt
sha256sum ManuscriptFourier.olean | tee olean-sha256.txt

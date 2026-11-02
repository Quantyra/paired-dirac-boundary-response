#!/usr/bin/env bash
# Exact-source Lean replay of the (2.4) block-system elimination on the
# Quantyra GCP builder; never run locally. The certified ManuscriptFormal
# module is recompiled first from its pinned source.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-dyson-${RUN_TAG:-dev}"
deps="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/source/lean"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
base_source="$HOME/ManuscriptFormal.lean"
base_sha='dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13'
source="$HOME/ManuscriptDyson.lean"
source_sha='9592cad195d69e4d2434e1732b489afef987a0c923f284b4088d47949772c841'
mathlib_sha='c5ea00351c28e24afc9f0f84379aa41082b1188f'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test -x "$toolchain/lean"
test "$(git -C "$deps/.lake/packages/mathlib" rev-parse HEAD)" = "$mathlib_sha"
printf '%s  %s\n' "$base_sha" "$base_source" | sha256sum -c -
printf '%s  %s\n' "$source_sha" "$source" | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
grep -F 'd024af099ca4bf2c86f649261ebf59565dc8c622' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

lean_path=""
for pkg in batteries Qq aesop proofwidgets importGraph LeanSearchClient plausible mathlib; do
  pkg_lib="$deps/.lake/packages/$pkg/.lake/build/lib/lean"
  test -d "$pkg_lib"
  lean_path="${lean_path:+$lean_path:}$pkg_lib"
done
lean_path="$lean_path:$deps/.lake/build/lib/lean:$(dirname "$toolchain")/lib/lean"
export LEAN_PATH="$run:$lean_path"
printf '%s\n' "$lean_path" > "$run/lean-path.txt"

cp "$base_source" "$run/ManuscriptFormal.lean"
cp "$source" "$run/ManuscriptDyson.lean"
cd "$run"
sha256sum ManuscriptFormal.lean ManuscriptDyson.lean | tee lean-source-sha256.txt

echo '--- dependency: ManuscriptFormal ---'
lean -o ManuscriptFormal.olean ManuscriptFormal.lean 2>&1 | tee base-lean.log
echo '--- target: ManuscriptDyson ---'
lean -o ManuscriptDyson.olean ManuscriptDyson.lean 2>&1 | tee lean.log

theorems="homogeneous_propagation first_order_vertex second_order_vertex"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
for log in base-lean.log lean.log; do
  if grep -q 'sorryAx' "$log"; then
    echo "Unexpected sorryAx in $log." >&2
    exit 1
  fi
done
sha256sum ManuscriptDyson.lean ManuscriptFormal.lean
sha256sum ManuscriptDyson.olean | tee olean-sha256.txt
echo RECEIPT_COMPLETE

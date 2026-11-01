#!/usr/bin/env bash
# Exact-source Lean replay of the fourth-order full-Weyl angular jet on the
# Quantyra GCP builder; never run locally.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-full-weyl-angular-jet-exact-20261031-r3"
deps="$HOME/quantyra-space-runs/space-20261007T093129Z-retry1/packages"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/FullWeylAngularJet.lean"
source_sha='e5f804e0a28087408e197719da807925414e3d1fe09c5b2b1395d5dba6a521e2'
mathlib_sha='c5ea00351c28e24afc9f0f84379aa41082b1188f'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test -x "$toolchain/lean"
test "$(git -C "$deps/mathlib" rev-parse HEAD)" = "$mathlib_sha"
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

cp "$source" "$run/FullWeylAngularJet.lean"
cd "$run"
sha256sum FullWeylAngularJet.lean | tee lean-source-sha256.txt
lean -o FullWeylAngularJet.olean FullWeylAngularJet.lean 2>&1 | tee lean.log
for theorem in full_weyl_leading_angular_jet full_weyl_subtracted_jet_through_fourth_order; do
  grep -F "$theorem" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c lean-source-sha256.txt
sha256sum FullWeylAngularJet.olean | tee olean-sha256.txt

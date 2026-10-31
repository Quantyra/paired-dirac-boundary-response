#!/usr/bin/env bash
# Exact-source Lean replay on the Quantyra GCP builder; never run locally.
set -euo pipefail

run="$HOME/quantyra-space-runs/paper1-full-weyl-orbit-correction-vertices-687dd7e4-20261031"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
deps="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/source/lean"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/FullWeylOrbitCorrectionVerticesDraft.lean"
source_sha='687dd7e4917a4bfa7b875ee1570d911dd4754f5e033799acdf7cbaf882a3cda9'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test "$(cat "$base/exit-code")" = 0
test "$(git -C "$base/source" rev-parse HEAD)" = 6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5
test -f "$base/source/lean/lakefile.toml"
test -x "$toolchain/lean"
printf '%s  %s\n' "$source_sha" "$source" | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

pkg_root="$deps/.lake/packages"
lean_path=""
for pkg in batteries Qq aesop proofwidgets importGraph LeanSearchClient plausible mathlib; do
  pkg_lib="$pkg_root/$pkg/.lake/build/lib/lean"
  test -d "$pkg_lib"
  lean_path="${lean_path:+$lean_path:}$pkg_lib"
done
lean_path="$lean_path:$deps/.lake/build/lib/lean:$(dirname "$toolchain")/lib/lean"
export LEAN_PATH="$run:$lean_path"

cp "$source" "$run/FullWeylOrbitCorrectionVerticesDraft.lean"
cd "$run"
sha256sum FullWeylOrbitCorrectionVerticesDraft.lean | tee lean-source-sha256.txt
lean -o FullWeylOrbitCorrectionVerticesDraft.olean FullWeylOrbitCorrectionVerticesDraft.lean 2>&1 | tee lean.log
for theorem in FullWeylOrbitCorrection.mixed_commutator_vertex; do
  grep -F "$theorem" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c lean-source-sha256.txt
sha256sum FullWeylOrbitCorrectionVerticesDraft.olean | tee olean-sha256.txt

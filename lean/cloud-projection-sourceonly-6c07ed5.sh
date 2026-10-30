#!/bin/bash
# Check later drafts against the completed task-owned source-only build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-projection-sourceonly-6c07ed5-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '07779dc45b79cf9b8881b57f56f0a4a63691570478940d1ed02b34402d220191' "$HOME/paper1-projection-6c07ed5.bundle" | sha256sum -c -
git clone "$HOME/paper1-projection-6c07ed5.bundle" "$run/source"
git -C "$run/source" checkout --detach 6c07ed597035a526ef167cf93c170e676c0cda7e
git -C "$run/source" rev-parse HEAD
sha256sum "$run/source/lean/PairedDirac.lean" "$run/source/lean/AdjointDraft.lean" "$run/source/lean/SquareDomainDraft.lean" "$run/source/lean/GraphBoundsDraft.lean"
cmp "$run/source/lean/PairedDirac.lean" "$base/source/lean/PairedDirac.lean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run/source/lean"
export LEAN_PATH="$run/source/lean:$lean_path"
lean -o AdjointDraft.olean AdjointDraft.lean
lean -o SquareDomainDraft.olean SquareDomainDraft.lean
lean -o PositiveSquareDraft.olean PositiveSquareDraft.lean
lean GraphProjectionDraft.lean
lean GraphBoundsDraft.lean
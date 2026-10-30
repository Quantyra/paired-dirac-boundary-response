#!/bin/bash
# Check later drafts against the completed task-owned source-only build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-positive-sourceonly-097cc93-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '3fd0d69d8bc90dceebc1e1e6f9596e2d3830ab6b49a8bbcd5c0ab97acb6276c9' "$HOME/paper1-positive-097cc93.bundle" | sha256sum -c -
git clone "$HOME/paper1-positive-097cc93.bundle" "$run/source"
git -C "$run/source" checkout --detach 097cc93f8f5bcfa10c2bbdf9f7be7d7283f79812
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
lean PositiveSquareDraft.lean
lean GraphBoundsDraft.lean
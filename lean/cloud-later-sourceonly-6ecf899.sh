#!/bin/bash
# Check later drafts against the completed task-owned source-only build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-later-sourceonly-6ecf899-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '7ee641ef39e8422fb5ad3869d43cb0f1088a7504240b1cdb9733955a81219c4e' "$HOME/paper1-later-drafts-6ecf899.bundle" | sha256sum -c -
git clone "$HOME/paper1-later-drafts-6ecf899.bundle" "$run/source"
git -C "$run/source" checkout --detach 6ecf899fe864c8945a4444850922ac1011c2343e
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
lean SquareDomainDraft.lean
lean GraphBoundsDraft.lean
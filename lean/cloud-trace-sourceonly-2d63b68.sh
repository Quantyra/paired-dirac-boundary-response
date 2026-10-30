#!/bin/bash
# Check later drafts against the completed task-owned source-only build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-trace-sourceonly-2d63b68-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '3375f16b8a47468a2a1faa8ebfcaac9096fd627790dc69d62088bbf16fff173f' "$HOME/paper1-trace-2d63b68.bundle" | sha256sum -c -
git clone "$HOME/paper1-trace-2d63b68.bundle" "$run/source"
git -C "$run/source" checkout --detach 2d63b68881b564e536da2e5afae00f623f5ff9e1
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
lean -o GraphProjectionDraft.olean GraphProjectionDraft.lean
lean -o ClosedGraphDraft.olean ClosedGraphDraft.lean
lean -o CongruenceSquareDraft.olean CongruenceSquareDraft.lean
lean TraceDomainDraft.lean
lean GraphBoundsDraft.lean
#!/bin/bash
# Development-only graph lemma check, after the exact-tree dependency build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-graph-draft-b55befb-20261029"
base="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '3b034a49560a601aba06d3f3c28099fb7d5a1baacd8a5d7fce69097cc650ff9a' "$HOME/paper1-graph-b55befb.bundle" | sha256sum -c -
git clone "$HOME/paper1-graph-b55befb.bundle" "$run/source"
git -C "$run/source" checkout --detach b55befb15d55013b552969eb703eb1446fe64094
git -C "$run/source" rev-parse HEAD
sha256sum "$run/source/lean/ClosedGraphDraft.lean"
git -C "$run/source" status --short
export PATH="$base/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
# Typecheck the immutable draft from its own checkout using the completed
# development build's environment. This is not a clean source-only build.
lake --no-cache env lean "$run/source/lean/ClosedGraphDraft.lean"

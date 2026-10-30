#!/bin/bash
# Development-only graph lemma check, after the exact-tree dependency build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-square-olddeps-8fb66f9-20261029"
base="$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '78e2e3dbb86e4d89676a2a5ee49aa4472a3bf3da4f8a7687021a06f75b5448ec' "$HOME/paper1-square-8fb66f9.bundle" | sha256sum -c -
git clone "$HOME/paper1-square-8fb66f9.bundle" "$run/source"
git -C "$run/source" checkout --detach 8fb66f9759aca25e688aefe6ca6daaf466df1ce0
git -C "$run/source" rev-parse HEAD
sha256sum "$run/source/lean/AdjointDraft.lean"
git -C "$run/source" status --short
export PATH="$base/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
# Typecheck the immutable draft from its own checkout using the completed
# development build's environment. This is not a clean source-only build.
lake --no-cache env lean -o "$run/source/lean/AdjointDraft.olean" "$run/source/lean/AdjointDraft.lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
LEAN_PATH="$run/source/lean:$lean_path" lean "$run/source/lean/SquareDomainDraft.lean"

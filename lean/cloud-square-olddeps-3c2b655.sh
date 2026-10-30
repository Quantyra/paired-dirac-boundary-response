#!/bin/bash
# Development-only graph lemma check, after the exact-tree dependency build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-square-olddeps-3c2b655-20261029"
base="$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' 'bfdd8b0b86c6920c090fcc8f5856771a5a1bb610fb6e24fa18f6fa8045b7207b' "$HOME/paper1-square-3c2b655.bundle" | sha256sum -c -
git clone "$HOME/paper1-square-3c2b655.bundle" "$run/source"
git -C "$run/source" checkout --detach 3c2b655
git -C "$run/source" rev-parse HEAD
sha256sum "$run/source/lean/AdjointDraft.lean"
git -C "$run/source" status --short
export PATH="$base/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
# Typecheck the immutable draft from its own checkout using the completed
# development build's environment. This is not a clean source-only build.
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run/source/lean"
export LEAN_PATH="$run/source/lean:$lean_path"
lean -o AdjointDraft.olean AdjointDraft.lean
lean SquareDomainDraft.lean

#!/bin/bash
# Development-only graph lemma check, after the exact-tree dependency build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-closedness-olddeps-7f7ddaf-20261029"
base="$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '8232aa438086baf078e8dcdc4a9baf18b193749deaf03385076e9e5f47cf49e7' "$HOME/paper1-closedness-7f7ddaf.bundle" | sha256sum -c -
git clone "$HOME/paper1-closedness-7f7ddaf.bundle" "$run/source"
git -C "$run/source" checkout --detach 7f7ddaf7d294c6d479237b3fc37c0ced8069bbfd
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

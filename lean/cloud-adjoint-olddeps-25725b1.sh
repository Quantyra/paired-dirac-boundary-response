#!/bin/bash
# Development-only graph lemma check, after the exact-tree dependency build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-adjoint-olddeps-25725b1-20261029"
base="$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' 'dcf21426c7573285be04bd64bd375628ab73251fa646fbddd49f3c94a0db40b4' "$HOME/paper1-adjoint-25725b1.bundle" | sha256sum -c -
git clone "$HOME/paper1-adjoint-25725b1.bundle" "$run/source"
git -C "$run/source" checkout --detach 25725b16d1e260b793f5743f9cf131117234bbb2
git -C "$run/source" rev-parse HEAD
sha256sum "$run/source/lean/AdjointDraft.lean"
git -C "$run/source" status --short
export PATH="$base/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
# Typecheck the immutable draft from its own checkout using the completed
# development build's environment. This is not a clean source-only build.
lake --no-cache env lean "$run/source/lean/AdjointDraft.lean"

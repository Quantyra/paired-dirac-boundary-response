#!/bin/bash
# Development-only graph lemma check, after the exact-tree dependency build.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-graphbounds-olddeps-b487ca9-20261029"
base="$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
printf '%s  %s\n' '19649f0b91b1d95cbb5dcbfaecb1ea59267ec910e16e03023f8e67d45701edd9' "$HOME/paper1-graphbounds-b487ca9.bundle" | sha256sum -c -
git clone "$HOME/paper1-graphbounds-b487ca9.bundle" "$run/source"
git -C "$run/source" checkout --detach b487ca9f45ce793ef3bb00efb9e873b10d3af62c
git -C "$run/source" rev-parse HEAD
sha256sum "$run/source/lean/GraphBoundsDraft.lean"
git -C "$run/source" status --short
export PATH="$base/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
# Typecheck the immutable draft from its own checkout using the completed
# development build's environment. This is not a clean source-only build.
lake --no-cache env lean "$run/source/lean/GraphBoundsDraft.lean"

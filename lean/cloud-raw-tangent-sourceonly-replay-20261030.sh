#!/bin/bash
# Replay the tangent form-factor identity on GCP using the pinned source-only
# Lean 4.30.0 environment. This is not an independent dependency rebuild.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-raw-tangent-sourceonly-20261030"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
test "$(git -C "$base/source" rev-parse HEAD)" = 6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5
cp "$HOME/FlatFormFactorIntegral.lean" "$HOME/RawTangentFormFactor.lean" "$run/"
printf '%s  %s\n' \
  '0bda3ceb94db5f69ef4a8ec878974905a4552c0646a70a3aa4605881c5e0b22b' "$run/FlatFormFactorIntegral.lean" \
  '5be3b10ce9494eb8354abf058e995ede4ede361a0a7a3cdf1b7c1a1a0b13b5a9' "$run/RawTangentFormFactor.lean" | sha256sum -c -
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$lean_path"
lean -o FlatFormFactorIntegral.olean FlatFormFactorIntegral.lean
lean RawTangentFormFactor.lean

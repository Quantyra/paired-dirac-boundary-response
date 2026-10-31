#!/bin/bash
# Targeted GCP Lean 4.30.0 check for the full-Weyl angular jet identity.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-full-weyl-angular-jet-20261030c"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
test "$(cat "$base/exit-code")" = 0
test "$(git -C "$base/source" rev-parse HEAD)" = 6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5
cp "$HOME/FullWeylAngularJet.lean" "$run/"
printf '%s  %s\n' \
  '8e72285e4a9eb74bde549d88d53a2c37fbe1ebe8a0ddb9ca3fb0be7d103286e9' \
  "$run/FullWeylAngularJet.lean" | sha256sum -c -
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$lean_path"
lean -o FullWeylAngularJet.olean FullWeylAngularJet.lean

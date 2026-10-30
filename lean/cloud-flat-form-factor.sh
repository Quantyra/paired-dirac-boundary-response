#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-flat-form-factor-20261030b"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
cp "$HOME/FlatFormFactorObstruction.lean" "$run/FlatFormFactorObstruction.lean"
sha256sum "$run/FlatFormFactorObstruction.lean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$lean_path"
lean FlatFormFactorObstruction.lean
#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-raw-tangent-20261030c"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
cp "$HOME/FlatFormFactorIntegral.lean" "$HOME/RawTangentFormFactor.lean" "$run/"
sha256sum "$run/FlatFormFactorIntegral.lean" "$run/RawTangentFormFactor.lean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$lean_path"
lean -o FlatFormFactorIntegral.olean FlatFormFactorIntegral.lean
lean RawTangentFormFactor.lean
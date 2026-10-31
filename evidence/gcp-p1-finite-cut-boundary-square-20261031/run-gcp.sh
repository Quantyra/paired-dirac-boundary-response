#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-finite-cut-boundary-square-20261031-r2"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
src="$HOME/P1FiniteCutBoundarySquare.lean"
domain="$HOME/FiniteCutCongruenceDomain.lean"
robin="$HOME/ProjectedRobinCongruence.lean"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
finish() {
  code=$?
  printf "%s\n" "$code" > "$run/exit-code"
  date -u > "$run/finished-utc"
  rm -f "$base/source/lean/P1FiniteCutBoundarySquare.lean" \
        "$base/source/lean/FiniteCutCongruenceDomain.lean" \
        "$base/source/lean/ProjectedRobinCongruence.lean"
}
trap finish EXIT
set -e
date -u
hostname
printf '%s  %s\n' 'C8DA78B6145838C4CD238636C5D2E921FE9D826537571F2C87B81AE4ED763C7A' "$src" | sha256sum -c -
printf '%s  %s\n' 'F027BAE8861A86CDF2BE95AD7C938553CC59608EC52C049262847209AD48204F' "$domain" | sha256sum -c -
printf '%s  %s\n' 'C1C0A73D9CEEC075F635C5FA495C924EC557D3C0D55179E48928B0B00DA683CB' "$robin" | sha256sum -c -
cp "$src" "$domain" "$robin" "$run/"
cp "$src" "$domain" "$robin" "$base/source/lean/"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
export LEAN_PATH="$run:$lean_path"
lean -o "$run/FiniteCutCongruenceDomain.olean" FiniteCutCongruenceDomain.lean
lean -o "$run/ProjectedRobinCongruence.olean" ProjectedRobinCongruence.lean
lean P1FiniteCutBoundarySquare.lean

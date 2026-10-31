#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-projected-robin-congruence-20261031"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
source="$HOME/ProjectedRobinCongruence.lean"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
printf '%s  %s\n' \
  'C1C0A73D9CEEC075F635C5FA495C924EC557D3C0D55179E48928B0B00DA683CB' \
  "$source" | sha256sum -c -
cp "$source" "$run/ProjectedRobinCongruence.lean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$base/source/lean"
lake env lean "$run/ProjectedRobinCongruence.lean"

#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-domain-dev-f7b70c1-20261029"
mkdir "$run" || exit $?
cd "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
date -u
hostname
git clone https://github.com/Quantyra/paired-dirac-boundary-response.git source || exit $?
cd source || exit $?
git checkout --detach f7b70c1 || exit $?
git rev-parse HEAD
sha256sum lean/PairedDirac.lean lean/lean-toolchain lean/lakefile.toml
"$HOME/.elan/bin/elan" toolchain install leanprover/lean4:v4.30.0 || exit $?
cd lean || exit $?
"$HOME/.elan/bin/lean" --version || exit $?
"$HOME/.elan/bin/lake" update || exit $?
sha256sum lake-manifest.json
"$HOME/.elan/bin/lake" exe cache get || exit $?
"$HOME/.elan/bin/lake" build PairedDirac || exit $?

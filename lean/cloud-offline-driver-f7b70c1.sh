#!/bin/bash
# Isolated offline development run for the exact f7b70c1 snapshot. No shared
# toolchains, caches, repositories, or other campaigns are modified.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-domain-offline-f7b70c1-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
cd "$run"
date -u
hostname
printf '%s  %s\n' 'acd0bfc46afa5a9ee930e009da88613f519d3f9659717d7c0a95c816ae7fae52' "$HOME/paper1-source-2cfe95c.bundle" | sha256sum -c -
printf '%s  %s\n' 'b836bdd1d4739fb8ba2efca39b732f9250405b23b13ac808171fc1ceae97936f' "$HOME/paper1-mathlib-c5ea003-offline.tar.gz" | sha256sum -c -
printf '%s  %s\n' '4dad74141c2c119ca1aa626656be83b8e14238afba97271fd7bf1eb3f081b319' "$HOME/lean-4.30.0-linux-paper1.tar.zst" | sha256sum -c -
git clone "$HOME/paper1-source-2cfe95c.bundle" source
cd source
git checkout --detach f7b70c1
git rev-parse HEAD
sha256sum lean/PairedDirac.lean lean/lean-toolchain lean/lakefile.toml
mkdir "$run/dependencies" "$run/toolchain"
tar -xzf "$HOME/paper1-mathlib-c5ea003-offline.tar.gz" -C "$run/dependencies"
sha256sum "$run/dependencies"/*.tar "$run/dependencies/lake-manifest.json"
tar --zstd -xf "$HOME/lean-4.30.0-linux-paper1.tar.zst" -C "$run/toolchain"
export PATH="$run/toolchain/lean-4.30.0-linux/bin:$PATH"
cd lean
lean --version
lake --version
mkdir -p .lake/packages
for archive in "$run/dependencies"/*.tar; do
  name="$(basename "$archive" .tar)"
  mkdir ".lake/packages/$name"
  tar -xf "$archive" -C ".lake/packages/$name"
done
cp "$run/dependencies/lake-manifest.json" lake-manifest.json
sha256sum lake-manifest.json
# The archived source trees intentionally contain no .git metadata. Lake's
# behavior with the pinned manifest is part of this development attempt.
lake build PairedDirac

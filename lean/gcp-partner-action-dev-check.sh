#!/usr/bin/env bash
# GCP development check only: imports Mathlib from an existing Lake workspace.
# Not a clean dependency replay. Pass workspace, source directory, new run directory.
set -euo pipefail
if [[ $# -ne 3 ]]; then echo 'usage: script LAKE_WORKSPACE SOURCE_DIR NEW_RUN_DIR' >&2; exit 2; fi
workspace=$(realpath "$1")
source_dir=$(realpath "$2")
run=$3
mkdir "$run"
run=$(realpath "$run")
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
date -u
hostname
printf 'Workspace: %s\nSource: %s\n' "$workspace" "$source_dir"
mkdir "$run/sources"
for name in PairedDirac AdjointDraft SquareDomainDraft PositiveSquareDraft PartnerSquareDomain PartnerSquareActionDraft; do
  cp "$source_dir/$name.lean" "$run/sources/$name.lean"
done
cd "$run/sources"
sha256sum ./*.lean > "$run/source-sha256.txt"
cd "$workspace"
lake --no-cache env lean --version
lake --no-cache env printenv LEAN_PATH > "$run/inherited-lean-path.txt"
export LEAN_PATH="$run/sources:$(cat "$run/inherited-lean-path.txt")"
cd "$run/sources"
for name in PairedDirac AdjointDraft SquareDomainDraft PositiveSquareDraft PartnerSquareDomain PartnerSquareActionDraft; do
  echo "Checking $name"
  (cd "$workspace" && lake --no-cache env env LEAN_PATH="$LEAN_PATH" lean -o "$run/sources/$name.olean" "$run/sources/$name.lean") 2>&1 | tee "$run/$name.log"
  if grep -q 'sorryAx' "$run/$name.log"; then echo 'sorryAx found' >&2; exit 1; fi
done
sha256sum -c "$run/source-sha256.txt"
sha256sum ./*.olean > "$run/olean-sha256.txt"
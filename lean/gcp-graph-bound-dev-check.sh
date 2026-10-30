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
git -C "$source_dir" rev-parse HEAD > "$run/source-commit.txt"
git -C "$source_dir" status --porcelain > "$run/source-status.txt"
mkdir "$run/sources"
for name in PairedDirac GraphBoundsDraft GraphBoundsComposedDraft; do
  cp "$source_dir/$name.lean" "$run/sources/$name.lean"
done
cd "$run/sources"
sha256sum ./*.lean > "$run/source-sha256.txt"
# Record workspace provenance; this development check does not make a clean-replay claim.
if git -C "$workspace" rev-parse --show-toplevel > "$run/workspace-root.txt" 2>/dev/null; then
  git -C "$workspace" rev-parse HEAD > "$run/workspace-commit.txt"
  git -C "$workspace" status --porcelain > "$run/workspace-status.txt"
else
  printf '%s\n' 'Workspace is not a Git worktree.' > "$run/workspace-status.txt"
fi
if [[ -f "$workspace/lake-manifest.json" ]]; then
  sha256sum "$workspace/lake-manifest.json" > "$run/lake-manifest-sha256.txt"
fi
cd "$workspace"
lake --no-cache env printenv PATH > "$run/inherited-path.txt"
lake --no-cache env printenv LEAN_PATH > "$run/inherited-lean-path.txt"
export PATH="$(cat "$run/inherited-path.txt")"
export LEAN_PATH="$run/sources:$(cat "$run/inherited-lean-path.txt")"
cd "$run/sources"
printf "%s  %s\n" 7d3309e705a992be7c7e4e01a810c7d1f1e5bf008a92c8fed0bab59158703354 GraphBoundsComposedDraft.lean | sha256sum -c -
lean --version | tee "$run/lean-version.txt"
grep -F "version 4.30.0" "$run/lean-version.txt"
for name in PairedDirac GraphBoundsDraft GraphBoundsComposedDraft; do
  echo "Checking $name"
  lean -o "$name.olean" "$name.lean" 2>&1 | tee "$run/$name.log"
  if grep -q 'sorryAx' "$run/$name.log"; then echo 'sorryAx found' >&2; exit 1; fi
done
grep -F "'PairedDirac.congruence_graph_lower_composed_draft' depends on axioms:" "$run/GraphBoundsComposedDraft.log"
sha256sum -c "$run/source-sha256.txt"
sha256sum ./*.olean > "$run/olean-sha256.txt"

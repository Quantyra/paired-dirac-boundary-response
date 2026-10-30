#!/bin/bash
# Fresh source-only replay of the finite-matrix grading lemma; run only on GCP.
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-grading-clean-20261030a"
archives="$HOME/paper1-exact-tree-archives-20261029"
work="/dev/shm/paper1-grading-clean-20261030a"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
date -u
hostname
cd "$HOME"
sha256sum -c paper1-clean-replay-bundle.sha256
printf '%s  %s\n' '4076013b327344dd752f30322f63cf9f4b5aa2a40494188819195bc989defa6e' "$HOME/paper1-gitmeta-c5ea003.tar.gz" | sha256sum -c -
printf '%s  %s\n' '4dad74141c2c119ca1aa626656be83b8e14238afba97271fd7bf1eb3f081b319' "$HOME/lean-4.30.0-linux-paper1.tar.zst" | sha256sum -c -
cd "$archives"
sha256sum -c <<'SUMS'
93ed2beaf312c788b7fed7cb532fb3a3e3f270cee7c9d7caf0971c65f876303c  Cli.tar
9b0b773dbf760cf3f209ae08f3b7be2ee7462de945736700def87d1210724115  LeanSearchClient.tar
256a1ba7f622950e1c08bb31292c7190e6ba5302dce51ce479e4168083dedf29  Qq.tar
b1785d5d61eb5ce18cf0014478c989b295d6066c73c4786f7e65c47f8df260f4  aesop.tar
41edc4561879f200c0215bfec72258f968e50807679de56ec8d829292f7cd2c8  batteries.tar
3adaf5ab57848caf32d117910aaed1cbcef3f5ea573f5358c9aaabe373c6571c  importGraph.tar
e02f9079352fa741592aa8d9fe5c6116064d95c0c7bed87b4f1e94bbf4e603e3  mathlib.tar
9115d94ad45d38756b8f72c4ad11e6d336f760d4f9d43d2fbc333cda304f20a1  plausible.tar
d7316b08c66d55f32ae0bdf13b5e827d3fd49b37b9096d29faa4ac92e0508a2d  proofwidgets.tar
SUMS
mkdir "$work"
cd "$work"
git clone "$HOME/paper1-clean-replay.bundle" source
expected="$(cat "$HOME/paper1-clean-replay-head.txt")"
git -C source checkout --detach "$expected"
test "$(git -C source rev-parse HEAD)" = "$expected"
test -z "$(git -C source status --porcelain)"
git -C source rev-parse HEAD
mkdir toolchain
tar --zstd -xf "$HOME/lean-4.30.0-linux-paper1.tar.zst" -C toolchain
export PATH="$work/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
lake --version
cd "$work/source/lean"
cp "$HOME/GradingOddTrace.lean" GradingOddTrace.lean
printf '%s  %s\n' '3fced26e3baf0823203e9d0a2b7b33edfc2841b81138d2cae7a96eab3ca7dc6c' GradingOddTrace.lean | sha256sum -c -
git -C "$work/source" status --porcelain > "$run/source-overlay-status.txt"
sha256sum ./*.lean > "$run/lean-source-sha256.txt"
mkdir -p .lake/packages
for archive in "$archives"/*.tar; do
  name="$(basename "$archive" .tar)"
  mkdir ".lake/packages/$name"
  tar -xf "$archive" -C ".lake/packages/$name"
done
tar -xzf "$HOME/paper1-gitmeta-c5ea003.tar.gz" -C .lake/packages
cp "$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029/dependencies/lake-manifest.json" lake-manifest.json
printf '%s  %s\n' '61d78cb094e771f720b480be1183e4727021b3b81b1aecf0e23807b022b22407' lake-manifest.json | sha256sum -c -
for archive in "$archives"/*.tar; do
  name="$(basename "$archive" .tar)"
  python3 "$HOME/paper1-verify-git-tree-archive-v3.py" ".lake/packages/$name" HEAD "$archive" --flat
  git -C ".lake/packages/$name" read-tree HEAD
  status="$(git -C ".lake/packages/$name" status --porcelain --untracked-files=all)"
  if test -n "$status"; then printf 'Unclean dependency %s:\n%s\n' "$name" "$status"; exit 1; fi
  printf 'Clean dependency: %s %s\n' "$name" "$(git -C ".lake/packages/$name" rev-parse HEAD)"
done
python3 - <<'PY'
import json, pathlib, subprocess
manifest=json.loads(pathlib.Path('lake-manifest.json').read_text())
for package in manifest['packages']:
    name, rev = package['name'], package.get('rev')
    if rev is None:
        raise SystemExit(f'missing pinned revision for {name}')
    actual=subprocess.check_output(['git','-C',f'.lake/packages/{name}','rev-parse','HEAD'],text=True).strip()
    if actual != rev:
        raise SystemExit(f'revision mismatch {name}: {actual} != {rev}')
    print(f'Manifest revision verified: {name} {rev}', flush=True)
PY
lake --no-cache build Mathlib.Data.Complex.Basic Mathlib.LinearAlgebra.Matrix.Trace
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
export LEAN_PATH="$PWD:$lean_path"
lean -o GradingOddTrace.olean GradingOddTrace.lean 2>&1 | tee "$run/GradingOddTrace.log"
if grep -q 'sorryAx' "$run/GradingOddTrace.log"; then exit 1; fi
grep -F "'PairedDirac.grading_odd_trace_zero' depends on axioms:" "$run/GradingOddTrace.log"
sha256sum -c "$run/lean-source-sha256.txt"
sha256sum GradingOddTrace.olean > "$run/lean-olean-sha256.txt"
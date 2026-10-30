#!/bin/bash
# Fresh task-owned source-only build from exact-tree reconstructed archives.
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
set -e
date -u
hostname
printf '%s  %s\n' '35e6274a388d1a11e4e9ca97120b4072c1987c0a172048c0b4b40c68df23addf' "$HOME/paper1-sourceonly-6858aa7.bundle" | sha256sum -c -
printf '%s  %s\n' '4076013b327344dd752f30322f63cf9f4b5aa2a40494188819195bc989defa6e' "$HOME/paper1-gitmeta-c5ea003.tar.gz" | sha256sum -c -
printf '%s  %s\n' '4dad74141c2c119ca1aa626656be83b8e14238afba97271fd7bf1eb3f081b319' "$HOME/lean-4.30.0-linux-paper1.tar.zst" | sha256sum -c -
cd "$HOME/paper1-exact-tree-archives-20261029"
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
cd "$run"
git clone "$HOME/paper1-sourceonly-6858aa7.bundle" source
cd source
git checkout --detach 6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5
git rev-parse HEAD
sha256sum lean/PairedDirac.lean lean/lean-toolchain lean/lakefile.toml
# Reuse the toolchain extracted and verified by the completed exact-tree run.
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
cd lean
lean --version
lake --version
mkdir -p .lake/packages
for archive in "$HOME/paper1-exact-tree-archives-20261029"/*.tar; do
  name="$(basename "$archive" .tar)"
  mkdir ".lake/packages/$name"
  tar -xf "$archive" -C ".lake/packages/$name"
done
tar -xzf "$HOME/paper1-gitmeta-c5ea003.tar.gz" -C .lake/packages
cp "$HOME/quantyra-space-runs/paper1-domain-offline-gitmeta-f7b70c1-20261029/dependencies/lake-manifest.json" lake-manifest.json
printf '%s  %s\n' '61d78cb094e771f720b480be1183e4727021b3b81b1aecf0e23807b022b22407' lake-manifest.json | sha256sum -c -
for archive in "$HOME/paper1-exact-tree-archives-20261029"/*.tar; do
  name="$(basename "$archive" .tar)"
  python3 "$HOME/paper1-verify-git-tree-archive-v3.py" ".lake/packages/$name" HEAD "$archive" --flat
done
lake --no-cache build PairedDirac
lake --no-cache env lean ClosedGraphDraft.lean
lake --no-cache env lean AdjointDraft.lean

# GCP full-Weyl/orbit seam coefficient replay: corrected coefficients

Status: the corrected seam coefficient-difference source compiled
successfully on the Quantyra GCP Lean builder. This certifies two rational
coefficient identities. It proves no integral evaluation, no analytic
remainder, no half-folding normalization, no physical response and no
common-regulator transfer.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Run directory: `paper1-full-weyl-seam-coefficient-comparison-98f2e713-20261031`
- Base source identity: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Source SHA-256: `98f2e7138670b493fc5c0b551ca8ae7a78a499673977ad76a5e1418a5c90036e`
- OLean SHA-256: `8de00010c63781d2c9a1ead4ac5554db244c05bbce5a2172abb7b38744046676`
- Exit code: `0`
- Finished: `Sat Oct 31 23:06:00 UTC 2026`

The runner is
`lean/cloud-full-weyl-seam-coefficient-comparison-98f2e713-20261031.sh`,
SHA-256 `7709a23edfd8b897c271a71543ea428dcd1d3612a15bd1e4a5204ca7f0d9c3e7`.

Lean reported both declarations as depending only on the standard axioms
`propext`, `Classical.choice`, and `Quot.sound`. No `sorryAx` was reported:

- `FullWeylSeamCoefficientComparison.fullWeyl_cubic_difference`
- `FullWeylSeamCoefficientComparison.fullWeyl_log_difference`

## What this supersedes

The earlier receipt
[`gcp-full-weyl-seam-comparison-20261031`](../gcp-full-weyl-seam-comparison-20261031/README.md)
compiled source `20B628D1...` and remains valid as ring algebra, but its log
theorem was stated for a full-Weyl coefficient that was wrong by a factor of
two. This run certifies the corrected pair:

```text
fullWeylCubic - orbitTowerCubic = cubicCorrection
  (-27/512 - (-15/512) = -3/128, times b^2 c_u c_w / sqrtPi)

fullWeylLog - orbitTowerLog = fullWeylLogCorrection
  (-2 b^2 C/(35 pi) - 2 b^2 (-C/(70 pi)) = -b^2 C/(35 pi))
```

The corrected log coefficients are the ones implied by `K_4=-1/5040` and the
stated Fourier tail, as recorded in
`notes/full-weyl-angular-seam-coefficients.md`. The coefficients themselves
are still analytic inputs from that note; this receipt certifies only the
subtraction.

## Dependency provenance limit

The source was compiled against the retained Mathlib/package build in
`paper1-domain-exact-tree-f7b70c1-20261029`, with Lean 4.30.0. Those
dependency artifacts were reused rather than rebuilt in this run. This
receipt does not hash each imported `.olean` or independently establish its
source and build provenance, so dependency acceptance remains open.

## Receipt contents

This directory preserves the copied Lean source, compiled `.olean`, Lean and
Lake version output, full run log, source and `.olean` hashes, terminal exit
code, and finish time from GCP. Both retained artifact hashes were recomputed
after transfer and match the builder's record byte for byte.

## Hash verification caveat

The repository has `core.autocrlf=true`, so the text files here are stored in
Git with LF endings and checked out on Windows with CRLF. The recorded
SHA-256 values are for the LF bytes that GCP produced and that Git stores.
Recompute them against the stored blob (for example `git show` or
`git cat-file blob`), not against a CRLF working copy. The `.olean` files are
binary and are stored and restored verbatim.

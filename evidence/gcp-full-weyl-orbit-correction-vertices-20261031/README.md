# GCP full-Weyl orbit correction vertex replay

Status: the abstract mixed-commutator coefficient identity compiled
successfully on the Quantyra GCP Lean builder. This certifies one ring
identity under explicit hypotheses. It does not formalize angular-mass
derivatives, parameter differentiability, represented operators or domains,
heat traces, curved estimates, or the physical response.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Run directory: `paper1-full-weyl-orbit-correction-vertices-687dd7e4-20261031`
- Base source identity: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Source SHA-256: `687dd7e4917a4bfa7b875ee1570d911dd4754f5e033799acdf7cbaf882a3cda9`
- OLean SHA-256: `10e4b07a364c9b431718e08f76c342dfdb274adbf5d6412d810a45609bcdf542`
- Exit code: `0`
- Finished: `Sat Oct 31 23:08:40 UTC 2026`

The runner is `lean/cloud-full-weyl-orbit-correction-vertices-687dd7e4-20261031.sh`,
SHA-256 `44507cd6ce17c4395978e03f002b4213f5effdeb684799d1d6f4d05c1f709cff`.

Lean reported `FullWeylOrbitCorrection.mixed_commutator_vertex` as depending
only on `propext` and `Quot.sound`. No `sorryAx` was reported.

## Certified statement and the hypotheses it actually uses

With `twiceDiracJet D u = -(u * D + D * u)` in a ring `R`, Lean proves

```text
-(twiceDiracJet D u * w - w * twiceDiracJet D u)
  - (twiceDiracJet D w * u - u * twiceDiracJet D w)
  + 2 * (D * (u * w) - (u * w) * D)
  = 4 * (D * (u * w) - (u * w) * D)
```

from the scalar commutation `u * w = w * u` and the product-rule hypothesis
`hproduct`.

Lean's unused-variable linter reports that the two further commutation
hypotheses in the statement, `hduw` and `hdwu`, are **not used** by the
proof. The identity holds under the strictly weaker hypothesis set
`{huw, hproduct}`. The statement retains them as declared, so the certified
theorem is weaker than it could be; this is recorded rather than silently
tightened, because the audit text states the hypothesis set.

## Dependency provenance limit

The source was compiled against the retained Mathlib/package build in
`paper1-domain-exact-tree-f7b70c1-20261029`, with Lean 4.30.0. Those
dependency artifacts were reused rather than rebuilt in this run. This
receipt does not hash each imported `.olean` or independently establish its
source and build provenance, so dependency acceptance remains open.

## Retained failures

Four earlier failing attempts at this declaration are preserved in
[`gcp-full-weyl-orbit-correction-vertices-failures-20261031`](../gcp-full-weyl-orbit-correction-vertices-failures-20261031/README.md).

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

# GCP curved scalar/contact jet replay

Status: the corrected pointwise-algebra source compiled successfully on the
Quantyra GCP Lean builder. This certifies only two polynomial/rational
identities. It does not derive the Hessian expansion, justify any integration
by parts or vanishing flux, identify the `O(t)` remainders, or certify a heat
trace, the common-regulator response, or the physical observable.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Run directory: `paper1-curved-scalar-contact-jet-e8bc8514-20261031`
- Base source identity: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Source SHA-256: `e8bc85145e142ea6fd0dea295fe37f2297343ab5d803bb7a02e566512c770ba1`
- OLean SHA-256: `6d93d9d1c054750c07df023d09981950ebfad408d45e169d56f8cffd893c10d9`
- Exit code: `0`
- Finished: `Sat Oct 31 22:57:50 UTC 2026`

The runner is `lean/cloud-curved-scalar-contact-jet-20261031.sh`,
SHA-256 `6ddf332f99a10ea55857834c05f5e7bd57514375f7bf4fa8dd99e1ca0681134e`.

Lean reported these two declarations, each depending only on the standard
axioms `propext`, `Classical.choice`, and `Quot.sound`. No `sorryAx` was
reported:

- `curved_scalar_contact_jet_identity`
- `flat_local_coefficient_difference`

The first states that the expanded nine-term rational jet expression equals
its grouped total-derivative form for `f != 0`. The second states that
`flatFullWeylLocal - flatSourceConversionLocal = flatLocalCoefficientResidual`
for `b0 != 0` and `t != 0`. Both are statements about the displayed
expressions only; the coefficients themselves remain analytic inputs from the
ordinary proof audit.

## Relation to the failed first attempt

The first attempt at source SHA-256
`6a952be2f8139ac62cc6e1e84aef31bda5ccb814f080a57cb6b3b5ebb51255b3` failed
with exit code 1 and is retained in
[`gcp-curved-scalar-contact-jet-import-failure-20261031`](../gcp-curved-scalar-contact-jet-import-failure-20261031/README.md).
Both of its theorems reported `sorryAx`. The corrected source changes only
the imports, the `noncomputable` markers that `Real.pi` forces on the three
definitions, and the tactic blocks. Every theorem statement, definition body
and documented scope limit is unchanged from the failed attempt, as the two
retained sources in these receipts show.

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

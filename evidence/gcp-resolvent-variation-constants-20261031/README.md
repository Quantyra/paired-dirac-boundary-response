# GCP P1-B resolvent-variation constant replay

Status: the exact rational-arithmetic source compiled successfully on the
Quantyra GCP Lean builder. This certifies only the seven finite rational
inequalities and constant identities in `ResolventVariationConstants.lean`.
It does not certify the analytic Taylor-tail comparison that motivates the
`expRationalUpper` bound, the Banach-valued Cauchy estimates, the operator
and domain hypotheses of the P1-B resolvent variation, the plus/minus square
factorization, the physical instantiation, or any trace response.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Run directory: `paper1-resolvent-variation-constants-20261031`
- Base source identity: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Source SHA-256: `bb92d956d74faa62b05a7c34bfe5d8d52b554056c0ede8f454a8961253e42b36`
- OLean SHA-256: `fda06a01e7c45c0b3ece013e2dd8d3ffc43f15edf19ef42d05c4b4c5a7aa6131`
- Exit code: `0`
- Finished: `Sat Oct 31 22:38:45 UTC 2026`

The runner is `lean/cloud-resolvent-variation-constants-20261031.sh`,
SHA-256 `bc4513fc373b7b603a7a46bad2d5ec37835b4529cdf9d1882399b173ee1c2773`,
executed verbatim on the builder. It verifies the base source commit and the
pinned source hash, loads the cached package libraries, compiles the copied
source, requires each theorem name in the Lean output, and fails if `sorryAx`
appears.

As first prepared, this runner would not have run: it pointed `LEAN_PATH` at
the `paper1-sourceonly-6858aa7-20261029` package tree, which has no built
`mathlib` library, and it required a `lake-manifest.json` that tree does not
contain. It was corrected to the dependency layout already proven by the
flat source-contact ledger replay: the retained
`paper1-domain-exact-tree-f7b70c1-20261029` package build, a `lakefile.toml`
precondition, and the eight packages that actually carry built libraries.

Lean reported these seven declarations, each depending only on the standard
axioms `propext`, `Classical.choice`, and `Quot.sound`. No `sorryAx` was
reported:

- `exp_upper_at_002`
- `exp_upper_at_0125`
- `exp_upper_at_0127`
- `neumann_q_upper_lt`
- `conjugated_resolvent_ball_constant_lt`
- `first_cauchy_constant_eq`
- `mixed_cauchy_constant_eq`

Together these give, over the rationals, the Neumann factor bound `q<0.134`,
the conjugated ball constant `C<1.32`, and the two Cauchy constants
`264/25=10.56` and `8448/25=337.92` recorded in
`notes/resolvent-variation-constants.md`. The inequality `(5)` that licenses
`expRationalUpper` as an upper bound for `exp` is an ordinary analytic
argument in that note and is not formalized here.

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

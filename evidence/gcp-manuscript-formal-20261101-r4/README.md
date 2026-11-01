# GCP exact-source replay: manuscript formalization, fourth extension

Status: `lean/ManuscriptFormal.lean` at SHA-256
`ca83944d343f01f27cc17cfbc79cd894683d0e1b17cd63d8bd83f001bbc4c618`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFormal.olean` at SHA-256
`0fa4c59b6f46f4685cba0eb335f253fb46f3e270b2317ca34a5e99d810d3998c`.
No `sorryAx` was reported. Thirty-one declarations are now machine-checked;
the earlier receipts remain valid for their own sources.

## New declaration in this run

- `discrete_variation_of_constants` — the exact telescoping identity behind
  `(2.5)`. For matrices `U j` over `ℂ`, vectors `Y j`, sources `b j`, and the
  recursion `Y j = U j *ᵥ Y (j+1) - b j`, the accumulated propagator
  `P k = U 0 * ⋯ * U (k-1)` satisfies

  ```text
  Y 0 = P k *ᵥ Y k - Σ_{j<k} P j *ᵥ b j,
  ```

  so each source is propagated by the product of the preceding steps. This
  is the finite-dimensional algebraic core of the manuscript's
  `Y(s0) = U(s0,s1) Y(s1) - ∫ U(s0,s) b(s) ds`.

## What this does not certify

The **continuum** statement `(2.5)` is not formalized. The integral, the
fundamental-matrix equation `∂_s U(s0,s) = -U(s0,s) K(s)`, and the limit from
the partition to the integral are analysis; no ODE or integration theory is
used in this file. The certificate covers the telescoping identity that any
such continuum argument would invoke, at the discrete level, and nothing
more. The ledger marks `(2.5)` accordingly.

## Retained failed attempt

A first attempt in run directory `p1-manuscript-formal-20261101-r5` stopped
at the source-hash precondition: the builder copy of `ManuscriptFormal.lean`
was still the previous revision, so `sha256sum -c` failed before any Lean
invocation. The pre-check did its job. That directory is retained on the
builder; this receipt records the successful run after re-transfer.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-formal-20261101-r6`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Source SHA-256: `ca83944d343f01f27cc17cfbc79cd894683d0e1b17cd63d8bd83f001bbc4c618`
- OLean SHA-256: `0fa4c59b6f46f4685cba0eb335f253fb46f3e270b2317ca34a5e99d810d3998c`
- Exit code: `0`
- Finished: `Sun Nov  1 10:15:21 UTC 2026`

The runner is
[`lean/cloud-manuscript-formal-20261101.sh`](../../lean/cloud-manuscript-formal-20261101.sh);
a copy of the executed script is retained here. It pins the source hash,
verifies the Mathlib commit, requires all thirty-one axiom reports, and fails
on `sorryAx`.

## Dependency provenance limit

The run reused the retained exact-tree Mathlib build of
`paper1-domain-exact-tree-f7b70c1-20261029` rather than rebuilding it, and it
does not hash each imported `.olean`/`.ir`.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.

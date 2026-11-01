# GCP exact-source replay: manuscript formalization, third extension

Status: `lean/ManuscriptFormal.lean` at SHA-256
`d551719a38535b1f9468c152cbf963133d00fcff525532e1b4e855668a6eb07e`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFormal.olean` at SHA-256
`fcf612d0f30768c2a888bc0ee6ae4fdf5c9cc4265c5e2d50c074b391c85f5fe5`.
No `sorryAx` was reported. Thirty declarations are now machine-checked; the
earlier receipts (`gcp-manuscript-formal-20261101`,
`gcp-manuscript-formal-20261101-r2`) remain valid for their own sources.

## New declarations in this run

Proposition 2.1, multiplier identity:

- `multiplier_identity` — for an associative ring with a unit `Ei` of `E`,
  if the product rule gives `D E = E D - (1/2) E c(db)`, then
  `Ei (D E) = D - (1/2) c(db)`. With `D_b = E D E`, `E = E_b`, this is the
  manuscript's `E_b⁻² D_b ψ = D ψ - (1/2) c(db) ψ`.

Proposition 2.1, the two graph inequalities of (2.2):

- `second_graph_inequality` — from `Dψ = E⁻² D_bψ + (1/2) c(db) ψ`,
  `‖E⁻²‖ ≤ exp B`, `‖c(db)‖ ≤ G`: `‖Dψ‖ ≤ exp B ‖D_bψ‖ + (G/2)‖ψ‖`.
- `first_graph_inequality` — from `D_bψ = E_b Dψ - (1/2) E_b c(db) ψ`:
  `‖D_bψ‖ ≤ exp B (‖Dψ‖ + (G/2)‖ψ‖)`.

`(2.4)`, the Pauli algebra and block structure:

- `pauli1_sq`, `pauli2_sq`, `pauli3_sq`, `pauli2_mul_pauli1` (`σ₂σ₁ = -iσ₃`),
  `pauli2_mul_pauli3` (`σ₂σ₃ = iσ₁`) — the product relations used when the
  first block row is solved for `η'`.
- `kzeta_diag_antisym`, `kzeta_entries` — the displayed `K_ζ` is the block
  matrix `[[A,B],[C,-A]]` with `A = νσ₂ - μaσ₃`, `B = i f⁻¹σ₂`,
  `C = i(ζ-M²)f⁻¹σ₂`, and its diagonal blocks are negatives.

## Scope of the (2.4) certificate

Only the algebraic ingredients are certified: the Pauli relations and the
block form. The derivation that turns `(P*P + M² - ζ)ψ = g` into the system
`Y' = K_ζ Y + source`, and the elimination back to the second-order equation,
are **not** formalized. Resolving the first block row for `η'` under the
convention `σ₂σ₁ = -iσ₃` produces the diagonal block `μaσ₃ - νσ₂` and the
off-diagonal `-i f⁻¹σ₂`, i.e. the printed signs correspond to the opposite
Pauli `σ₂` sign convention or the reversed orientation. That is a convention
statement, not a proof of the manuscript's signs; the ledger records it.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-formal-20261101-r4`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Source SHA-256: `d551719a38535b1f9468c152cbf963133d00fcff525532e1b4e855668a6eb07e`
- OLean SHA-256: `fcf612d0f30768c2a888bc0ee6ae4fdf5c9cc4265c5e2d50c074b391c85f5fe5`
- Exit code: `0`
- Finished: `Sun Nov  1 17:24 UTC 2026`

The runner is
[`lean/cloud-manuscript-formal-20261101.sh`](../../lean/cloud-manuscript-formal-20261101.sh);
a copy of the executed script is retained here. It pins the source hash,
verifies the Mathlib commit, requires all thirty axiom reports, and fails on
`sorryAx`.

Lean emitted three retained warnings: `hM` unused in
`square_resolvent_norm_bound`, `hG` unused in `second_graph_inequality`
(its bound does not need the sign of `G`), and a redundant `Complex.I_mul_I`
simp argument in one Pauli proof. None is a proof gap.

## Dependency provenance limit

The run reused the retained exact-tree Mathlib build of
`paper1-domain-exact-tree-f7b70c1-20261029` rather than rebuilding it, and it
does not hash each imported `.olean`/`.ir`.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.

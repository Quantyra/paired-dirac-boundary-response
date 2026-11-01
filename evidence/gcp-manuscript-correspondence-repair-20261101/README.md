# GCP exact-source replay: manuscript correspondence repair

Status: `lean/ManuscriptFormal.lean` at SHA-256
`dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFormal.olean` at SHA-256
`e8c2283b2778ce55f65f6d712d24ef658219488e877308d1da3bfbda8cb3b8fb`.
No `sorryAx` and no compiler error was reported. All 45 checked declarations
depend only on `propext`, `Classical.choice` and `Quot.sound`. The remaining
five log lines are linter warnings (`unused variable hM`, `unused variable hG`,
three unused `simp` arguments in the pre-existing `pauli2_mul_pauli1` /
`pauli2_mul_pauli3` proofs); none is a soundness signal.

This is the receipt for the S001.2/F0 correspondence repair. It supersedes
[`gcp-manuscript-formal-20261101-r5`](../gcp-manuscript-formal-20261101-r5/README.md)
for the current source, and it replaces the withdrawn `(2.4)` declarations of
[`gcp-manuscript-formal-20261101-r3`](../gcp-manuscript-formal-20261101-r3/README.md)
with a faithful encoding.

## The two repairs certified here

### `(2.4)`: block encoding at the printed signs

The draft's `K_ζ` is

```text
K_ζ = [ νσ₂ - μaσ₃          i f⁻¹ σ₂        ]
      [ i(ζ-M²)f⁻¹σ₂     -νσ₂ - μaσ₃       ].
```

- `kUpper`, `kLower`, `kzetaManuscript`, `kzetaManuscript_entries` — the
  printed blocks, encoded literally.
- `pauli1_transpose`, `pauli2_transpose` (`σ₂ᵀ = -σ₂`), `pauli3_transpose`.
- `kLower_eq_transpose`, `kzetaManuscript_lower_right` — the lower-right block
  is the **transpose** of the upper-left block. It is not `-A`: `-A` would put
  `+μaσ₃` in the lower-right block and so flip the angular term.
- `i_pauli2_mul_neg_i_pauli2` — `(iσ₂)(-iσ₂) = 1`, the inverse used to solve the
  first block row.
- `flux_of_first_row` — from `η' = Aη + i f⁻¹σ₂ξ` and `f⁻¹f = 1`,
  `ξ = -i f σ₂(η' - Aη)`.
- `kzetaSource_eta`, `kzetaSource_xi` — the source `(0, i f⁻¹ᐟ²σ₂ g)` has no
  `η` component and `i f⁻¹ᐟ²σ₂ g` in its `ξ` component.

The earlier `kzeta_diag_antisym` proved `lower-right = -upper-left` for the
different matrix with `-A` in the lower-right block. That statement is true of
its own definition and is withdrawn as evidence for the manuscript; its receipt
is preserved untouched at `gcp-manuscript-formal-20261101-r3` … `-r5`.

### `(4.11)`: the printed constant is correct

- `exp_neg_half_mul_sq` — `exp(-rB/2) · exp(-rB/2) = exp(-rB)`.
- `zero_sector_gap_printed` — `κ exp(-rB)‖ψ‖ ≤ ‖E (Q (E ψ))‖` for `E = E_r`
  under `∀ψ, exp(-rB/2)‖ψ‖ ≤ ‖E ψ‖`.

With `E_r = exp(-r b/2)`, `r ≥ 0` and `|b| ≤ B = ‖b‖_∞`, each of the two
factors contributes `exp(-rB/2)`, so the product is `exp(-rB)`: exactly the
printed `(4.11)`. The earlier ledger report of a `κ exp(-2rB)` discrepancy
substituted `c = exp(-rB)` and is withdrawn as a reporting error. No manuscript
correction is required.

## What this does not certify

Unchanged and explicitly excluded from the certified scope: the derivation of
`K_ζ` from `(P*P + M² - ζ)ψ = g`; unbounded closed realizations and Sobolev
trace domains; the unbounded spectral theorem and the existence half of
Proposition 3.1; boundary heat-kernel asymptotics and logarithmic coefficients;
distributional Fourier limits and the improper integrals of Propositions
4.1–4.3; the uniform rough-family, moving-cut and common-regulator estimates;
and every physical identification. The manuscript is certified at the declared
skeleton scope only, not as mathematics or physics.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a` (started from
  `TERMINATED` for this run)
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-correspondence-repair-20261101-r3`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified in the runner: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Dependency root: `~/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029`
- Source SHA-256: `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
- OLean SHA-256: `e8c2283b2778ce55f65f6d712d24ef658219488e877308d1da3bfbda8cb3b8fb`
- Exit code: `0`
- Finished: see `finished-utc`

The executed runner is
[`lean/cloud-manuscript-correspondence-repair-20261101.sh`](../../lean/cloud-manuscript-correspondence-repair-20261101.sh);
a copy is retained here.

## Preserved failed and superseded attempts

- [`gcp-manuscript-correspondence-repair-20261101-failure-r1`](../gcp-manuscript-correspondence-repair-20261101-failure-r1/README.md):
  exit 1. The `ᵀ` postfix notation is not available in this build
  (`unexpected token 'ᵀ'`), so the transpose lemmas did not elaborate and
  dependent declarations carried `sorryAx`. Fixed by writing
  `Matrix.transpose` explicitly.
- Run `-r2` (exit 0, olean `16c3568c161f47ade7c28c3c460af346a67be85d47fa3ad863add70d77989681`)
  compiled source `429a7e70…` with the same 45 declarations; it is superseded
  by `-r3`, which only removes a dead `<;> ring` tactic from
  `kLower_eq_transpose`. No statement changed.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.

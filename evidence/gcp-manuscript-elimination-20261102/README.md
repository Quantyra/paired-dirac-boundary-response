# GCP exact-source replay: the `(2.4)` block-system elimination

Status: `lean/ManuscriptElimination.lean` at SHA-256
`5506fb0bdcab85a9e34b4c952420fe00528f4595cff7deee95cfb1abda11de32`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptElimination.olean` at SHA-256
`6d2e35b7a19cd1280a5a196cbe3d0b5012cb83fe848927f21ff7cbd6da214e67`.
No `sorryAx`, no error (two benign linter warnings: an unused hypothesis `h0`
and an unused `simp` argument). The declaration depends only on `propext`,
`Classical.choice` and `Quot.sound`.

## Certified

`elimination_second_order` — from the two block rows of `(2.4)`, the flux
relation (`flux_of_first_row`) and its derivative,

```text
η'' = Aη' + A'η - (f'/f)(η' - Aη) + (σ₂Aᵀσ₂)(η' - Aη) - (ζ-M²)f⁻²η,
```

with `A` the printed upper-left block and `σ₂Aᵀσ₂` the conjugated lower-right
block (which is `Aᵀ` for the manuscript's signs, `kzetaManuscript_lower_right`).

Proof structure (all algebraic):

1. apply `(i f⁻¹)σ₂` to both block rows and equate;
2. the scalar identities
   `(i f⁻¹)(i(ζ-M²)f⁻¹) = -(ζ-M²)f⁻²`,
   `(i f⁻¹)(-i f') = f'/f`, `(i f⁻¹)(-i f) = 1`;
3. the matrix conjugation `((i f⁻¹)σ₂)Aᵀ((-i f)σ₂) = σ₂Aᵀσ₂` (`hmat`);
4. `σ₂² = 1` (`pauli2_sq`) to cancel the Pauli sandwich.

The earlier failures were `Complex.I_mul_I` versus the `I^2` normal form, the
direction of `Matrix.mulVec_mulVec`, and a final `simp only [smul_neg]` change
of normal form; that last one is the only recorded non-mathematical obstacle.

## Not certified

The operator-level derivation of `K_ζ` from `(P*P + M² - ζ)ψ = g` (i.e. that
`P*P` *equals* the displayed first-order system): that needs the closed
realization and the composition domain `Dom(P*P)`, which the ledger lists under
§2 items 1–2. This receipt certifies the *elimination* step at matrix level.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-elim-r10`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`
- Dependency `ManuscriptFormal` recompiled from its pinned certified source
  `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
  (paper1 exact-tree dependency layout)
- Source `5506fb0b…`, olean `6d2e35b7…`, exit code `0`

## Preserved failures

`-r1`/`-r2`: wrong dependency tree (`InnerProductSpace.Adjoint` absent from the
Space build; `ManuscriptFormal` was certified against the paper1 exact tree).
`-r3` … `-r9`: `Complex.I_mul_I` versus `I^2`, `Matrix.mulVec_mulVec`
direction, and the final `smul_neg` normal form. No statement changed.

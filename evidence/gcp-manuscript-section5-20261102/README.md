# GCP exact-source replay: Section 5's four-term mixed trace expansion `(5.2)`

Status: `lean/ManuscriptSection5.lean` at SHA-256
`2d91f50106e5aed2b2f590c6580ac3c2a57f276e92ef77bd7edcdcb6f7c15f1f`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptSection5.olean` at SHA-256
`632527aac70dac948f107a7d67fe73c797dcecc64890ad56c79d05ad5d94f028`.
No `sorryAx`, no error (one benign linter warning about an unused section
variable). All three declarations depend only on `propext`, `Classical.choice`
and `Quot.sound`.

## Certified

Draft `(5.2)`: for a parameter-dependent insertion `C` and heat factor `K` the
mixed derivative of `Tr[C K]` contains exactly four terms. At the finite-matrix
level, in the derivation form the draft's argument uses:

- `trace_four_term` — for linear maps `D₁`, `D₂` on `Matrix n n ℂ` satisfying
  the Leibniz rule,
  ```text
  Tr[(D₁D₂)(C K)] = Tr[C_uw K] + Tr[C_w K_u] + Tr[C_u K_w] + Tr[C K_uw];
  ```
- `trace_four_term_display` — the same identity in the display order of `(5.2)`;
- `trace_four_term_const` — a constant insertion (`D₁C = D₂C = 0`) kills the
  two cross terms, which records the draft's flat-product remark that the
  conjugation defect vanishes for a constant generator.

## Why (`5.6`) was not attempted

`(5.6)` is
`-b_S²/(6π)∫[h'u'w' + u''w'']dμ + O(t)` and is *derived* from a two-dimensional
heat-kernel coefficient comparison plus a cancellation of the `h²u'w'`
contributions. The coefficient identity is therefore not an algebraic identity
in the certified corpus: it depends on the leading heat coefficients of the
orbital mixed Dirichlet/Robin problem and on the defect term. Certifying it
requires those heat coefficients, i.e. exactly the boundary heat-kernel
infrastructure this project does not have (ledger §2, item 3). Formalizing only
the final rearrangement would be vacuous.

## Why Section 5's trace/regulator statements need more than a build fix

`(5.1)`, the form-Duhamel identity, `(5.4)` and the common-regulator limit are
statements about *unbounded* operators:

- `(5.1)` and the `V_uw` vertex are form-operator Duhamel integrals of a heat
  semigroup `exp(-sL)` whose generator `L` is an unbounded self-adjoint
  realization on `Dom(L) ⊂ L²`;
- `(5.4)` is a trace-norm bound on a boundary-defect operator
  `exp(-rQ_X) - exp(-rQ)` with two *different* realizations;
- the common-regulator passage needs a uniform family of cutoffs and a
  trace-class comparison.

Formalizing these needs: the closed realization and its domain (ledger §2
items 1–2), the spectral theorem / heat semigroup on that domain, trace-class
surgery (Duhamel, cyclicity under trace hypotheses), and a uniform family
estimate. That is the manuscript's open mathematics (P1-D), not a missing
lemma — and it is independent of the pinned-build gap.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-section5-r3`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- No project dependencies (only Mathlib matrix and trace modules)
- Source `2d91f501…`, olean `632527aa…`, exit code `0`

## Preserved failures

`-r1`: missing `Mathlib.Data.Complex.Basic` import (no `ℂ` semiring instance).
`-r2`: `ring` could not close `trace_four_term_const` after the two rewrites
(the `0 * X` and `D₁ 0` normal forms); replaced by `simp`. No statement changed.

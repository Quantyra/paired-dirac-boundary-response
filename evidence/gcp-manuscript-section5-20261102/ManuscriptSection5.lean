import Mathlib.Data.Complex.Basic
import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NoncommRing

/-!
# Manuscript formalization: Section 5's four-term mixed trace expansion `(5.2)`

Draft `(5.2)`: for a parameter-dependent insertion `C(s,r)` and heat factor
`K(s,r)`, the mixed derivative of `Tr[C K]` is

```text
Tr[C_uw K] + Tr[C_u K_w] + Tr[C_w K_u] + Tr[C K_uw].
```

This file certifies that product rule at the finite-matrix level, in the
`derivation` form that the draft's formal argument uses: two linear maps `D₁`,
`D₂` on `Matrix n n ℂ` satisfying the Leibniz rule, applied to `C * K`.

It does **not** formalize any unbounded trace statement of Section 5 (`(5.1)`,
`(5.4)`, the form-Duhamel identity, or the common-regulator limit): those need
the closed unbounded realization, the heat semigroup on its actual domain, and
trace-class hypotheses, none of which is available in this build. See
`evidence/gcp-manuscript-section5-20261102/README.md`.
-/

namespace PairedDirac.Manuscript

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]

/-- `(5.2)`, the four-term mixed trace expansion, for two derivations of the
matrix algebra: with `C_u = D₁ C`, `C_w = D₂ C`, `K_u = D₁ K`, `K_w = D₂ K`,
`C_uw = D₁(D₂ C)`, `K_uw = D₁(D₂ K)`,

```text
Tr[(D₁D₂)(C K)] = Tr[C_uw K] + Tr[C_w K_u] + Tr[C_u K_w] + Tr[C K_uw].
``` -/
theorem trace_four_term
    (D1 D2 : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ)
    (h1 : ∀ X Y : Matrix n n ℂ, D1 (X * Y) = D1 X * Y + X * D1 Y)
    (h2 : ∀ X Y : Matrix n n ℂ, D2 (X * Y) = D2 X * Y + X * D2 Y)
    (C K : Matrix n n ℂ) :
    (D1 (D2 (C * K))).trace
      = (D1 (D2 C) * K).trace + (D2 C * D1 K).trace
        + (D1 C * D2 K).trace + (C * D1 (D2 K)).trace := by
  rw [h2 C K, map_add, h1, h1]
  repeat rw [Matrix.trace_add]
  ring

/-- The same expansion with the trace written as a sum over the index set, in
the exact term order of the draft's display. -/
theorem trace_four_term_display
    (D1 D2 : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ)
    (h1 : ∀ X Y : Matrix n n ℂ, D1 (X * Y) = D1 X * Y + X * D1 Y)
    (h2 : ∀ X Y : Matrix n n ℂ, D2 (X * Y) = D2 X * Y + X * D2 Y)
    (C K : Matrix n n ℂ) :
    (D1 (D2 (C * K))).trace
      = (D1 (D2 C) * K).trace + (D1 C * D2 K).trace
        + (D2 C * D1 K).trace + (C * D1 (D2 K)).trace := by
  rw [trace_four_term D1 D2 h1 h2 C K]
  ring

/-- A constant insertion has no mixed derivative: the `(5.2)` expansion reduces
to its `K_uw` and cross terms. This records the draft's flat-product remark
that for a constant generator the conjugation defect vanishes. -/
theorem trace_four_term_const
    (D1 D2 : Matrix n n ℂ →ₗ[ℂ] Matrix n n ℂ)
    (h1 : ∀ X Y : Matrix n n ℂ, D1 (X * Y) = D1 X * Y + X * D1 Y)
    (h2 : ∀ X Y : Matrix n n ℂ, D2 (X * Y) = D2 X * Y + X * D2 Y)
    (C K : Matrix n n ℂ) (hC1 : D1 C = 0) (hC2 : D2 C = 0) :
    (D1 (D2 (C * K))).trace
      = (D1 (D2 C) * K).trace + (C * D1 (D2 K)).trace := by
  rw [trace_four_term D1 D2 h1 h2 C K, hC1, hC2]
  simp

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.trace_four_term
#print axioms PairedDirac.Manuscript.trace_four_term_display
#print axioms PairedDirac.Manuscript.trace_four_term_const

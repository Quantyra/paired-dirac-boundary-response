import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp

/-!
# Manuscript formalization: the conditionally stated algebraic core

This file formalizes the statements of `manuscript/DRAFT.md` that are
algebraic or bounded-operator inequalities, in the readings recorded in
`manuscript/lean-certification-ledger.md`.

It does **not** formalize:

* unbounded closed realizations, their domains, or the existence of the
  operator inverses used in Proposition 3.1 (that step is the spectral
  theorem for a self-adjoint operator);
* any heat-kernel asymptotic, Fourier integral, mode sum, moving cut,
  common regulator or curved remainder (Propositions 4.1--4.3 and Section 5);
* the physical paired bundle, boundary transgression or source matching.

Each theorem below is a statement about the displayed formulas, not a
certificate for the manuscript proposition as a physical claim.
-/

set_option linter.unusedSectionVars false

open scoped InnerProductSpace

namespace PairedDirac.Manuscript

/-! ## Proposition 3.1: bounded-operator reading of (3.1) -/

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H] [CompleteSpace H]

/-- For a bounded skew-adjoint operator, the real inner product of a vector
with its image vanishes. This is the algebraic content of `D* = -JDJ` used in
the proof of Proposition 3.1. -/
theorem skew_adjoint_inner_self_zero (T : H →L[ℝ] H)
    (hT : ContinuousLinearMap.adjoint T = -T) (x : H) :
    ⟪x, T x⟫_ℝ = 0 := by
  have h1 : ⟪(ContinuousLinearMap.adjoint T) x, x⟫_ℝ = ⟪x, T x⟫_ℝ :=
    ContinuousLinearMap.adjoint_inner_left T x x
  rw [hT] at h1
  simp only [ContinuousLinearMap.neg_apply, inner_neg_left] at h1
  have h2 : ⟪T x, x⟫_ℝ = ⟪x, T x⟫_ℝ := real_inner_comm x (T x)
  linarith

/-- The a priori lower bound behind `‖(M + Q)⁻¹‖ ≤ 1/M` in (3.1): on the
image of the shifted operator the displacement is at least `M` times the
input norm. -/
theorem resolvent_shift_norm_lower (T : H →L[ℝ] H)
    (hT : ContinuousLinearMap.adjoint T = -T)
    (M : ℝ) (hM : 0 ≤ M) (x : H) :
    M * ‖x‖ ≤ ‖(M : ℝ) • x + T x‖ := by
  have hinner : ⟪x, T x⟫_ℝ = 0 := skew_adjoint_inner_self_zero T hT x
  have hsq : ‖(M : ℝ) • x + T x‖ ^ 2 = M ^ 2 * ‖x‖ ^ 2 + ‖T x‖ ^ 2 := by
    rw [norm_add_sq_real, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]
    have hmul : ⟪(M : ℝ) • x, T x⟫_ℝ = M * ⟪x, T x⟫_ℝ := real_inner_smul_left x (T x) M
    rw [hmul, hinner]
    ring
  have hle : (M * ‖x‖) ^ 2 ≤ ‖(M : ℝ) • x + T x‖ ^ 2 := by
    rw [hsq]
    nlinarith [sq_nonneg ‖T x‖, norm_nonneg x, norm_nonneg ((M : ℝ) • x + T x)]
  have hsqrt := Real.sqrt_le_sqrt hle
  rwa [Real.sqrt_sq (mul_nonneg hM (norm_nonneg x)),
    Real.sqrt_sq (norm_nonneg ((M : ℝ) • x + T x))] at hsqrt

/-- (3.1), first bound, conditional on the shifted operator having the
displayed right inverse. The existence of that inverse is not formalized
here. -/
theorem resolvent_norm_bound (T : H →L[ℝ] H)
    (hT : ContinuousLinearMap.adjoint T = -T)
    (M : ℝ) (hM : 0 < M) (S : H →L[ℝ] H)
    (hS : ∀ y, (M : ℝ) • S y + T (S y) = y) (y : H) :
    ‖S y‖ ≤ ‖y‖ / M := by
  have h := resolvent_shift_norm_lower T hT M (le_of_lt hM) (S y)
  rw [hS y] at h
  rw [le_div_iff₀ hM]
  calc ‖S y‖ * M = M * ‖S y‖ := by ring
    _ ≤ ‖y‖ := h

/-- The a priori lower bound behind `‖(D*D + M²)⁻¹‖ ≤ 1/M²`: positivity of
the square plus the mass gap. -/
theorem square_shift_norm_lower (T : H →L[ℝ] H) (M : ℝ) (hM : 0 ≤ M) (x : H) :
    M ^ 2 * ‖x‖ ≤ ‖(M ^ 2 : ℝ) • x + (ContinuousLinearMap.adjoint T).comp T x‖ := by
  set y : H := (M ^ 2 : ℝ) • x + (ContinuousLinearMap.adjoint T).comp T x with hy
  have hinner : ⟪y, x⟫_ℝ = M ^ 2 * ‖x‖ ^ 2 + ‖T x‖ ^ 2 := by
    rw [hy]
    simp only [inner_add_left, real_inner_smul_left, ContinuousLinearMap.comp_apply]
    have hadj : ⟪(ContinuousLinearMap.adjoint T) (T x), x⟫_ℝ = ⟪T x, T x⟫_ℝ :=
      ContinuousLinearMap.adjoint_inner_left T x (T x)
    rw [hadj, real_inner_self_eq_norm_sq (T x), real_inner_self_eq_norm_sq x]
  have hcs : ⟪y, x⟫_ℝ ≤ ‖y‖ * ‖x‖ := real_inner_le_norm y x
  rw [hinner] at hcs
  rcases eq_or_ne ‖x‖ 0 with hx | hx
  · rw [hx]
    simp
  · have hxpos : 0 < ‖x‖ := lt_of_le_of_ne (norm_nonneg x) (Ne.symm hx)
    have hxne : ‖x‖ ≠ 0 := ne_of_gt hxpos
    have hmain : M ^ 2 * ‖x‖ ^ 2 ≤ ‖y‖ * ‖x‖ := by nlinarith [sq_nonneg ‖T x‖]
    have hhalf : M ^ 2 * ‖x‖ ≤ (‖y‖ * ‖x‖) / ‖x‖ :=
      (le_div_iff₀ hxpos).mpr (by nlinarith [hmain])
    rwa [mul_div_cancel_right₀ _ hxne] at hhalf

/-- (3.1), second bound, conditional on the shifted square having the
displayed right inverse. -/
theorem square_resolvent_norm_bound (T : H →L[ℝ] H) (M : ℝ) (hM : 0 < M)
    (S : H →L[ℝ] H)
    (hS : ∀ y, (M ^ 2 : ℝ) • S y
      + (ContinuousLinearMap.adjoint T).comp T (S y) = y) (y : H) :
    ‖S y‖ ≤ ‖y‖ / M ^ 2 := by
  have h := square_shift_norm_lower T M (le_of_lt hM) (S y)
  rw [hS y] at h
  rw [le_div_iff₀ (by nlinarith [hM])]
  calc ‖S y‖ * M ^ 2 = M ^ 2 * ‖S y‖ := by ring
    _ ≤ ‖y‖ := h

/-! ## (4.11): congrenced gap transfer

The manuscript's `(4.11)` states the gap `κ exp(-r ‖b‖_∞)` for
`A_r = E_r Q E_r`. Composing the gap with the two multiplier bounds at the
two occurrences of `E_r` gives `κ c²`, not `κ c`. The lemma below proves the
composition bound that the displayed argument yields; the manuscript's
constant remains an open check recorded in
`manuscript/lean-certification-ledger.md`. -/

/-- A gap for `Q` survives conjugation by a bounded map with a lower norm
bound. The constant is the product of the two multiplier lower bounds. -/
theorem congruenced_gap_composition (Q E : H →L[ℝ] H) (κ c : ℝ)
    (hκ : 0 ≤ κ) (hc : 0 ≤ c)
    (hQ : ∀ ψ, κ * ‖ψ‖ ≤ ‖Q ψ‖) (hE : ∀ ψ, c * ‖ψ‖ ≤ ‖E ψ‖) (ψ : H) :
    κ * c * c * ‖ψ‖ ≤ ‖E (Q (E ψ))‖ := by
  have h1 : c * ‖ψ‖ ≤ ‖E ψ‖ := hE ψ
  have h2 : κ * ‖E ψ‖ ≤ ‖Q (E ψ)‖ := hQ (E ψ)
  have h3 : c * ‖Q (E ψ)‖ ≤ ‖E (Q (E ψ))‖ := hE (Q (E ψ))
  have h4 : c * (κ * ‖E ψ‖) ≤ c * ‖Q (E ψ)‖ :=
    mul_le_mul_of_nonneg_left h2 hc
  have h5 : κ * (c * ‖ψ‖) ≤ κ * ‖E ψ‖ := mul_le_mul_of_nonneg_left h1 hκ
  nlinarith [h3, h4, h5, norm_nonneg (E ψ)]

/-! ## Section 4: the displayed coefficient ledgers -/

/-- `(4.12c)`: subtracting the source endpoint-conversion series `(4.12b)`
from the full-Weyl tangent series `(4.12a)` term by term gives the displayed
difference. This is exactly the algebra asserted in the manuscript. -/
theorem converted_series_difference
    (pi b t U0 U1 U2 C0 C1 : ℝ) (hpi : pi ≠ 0) (ht : t ≠ 0) (hb : b ≠ 0) :
    8 * b ^ 2 * U0 / (pi * t ^ 2) + C0 * U0 / (pi * t)
        - b ^ 2 * U1 / (2 * pi * t)
      - (C0 * U0 / (2 * pi * t) + b ^ 2 * U1 / (12 * pi * t)
          + (1 / (2 * pi)) * (-(C0 * U1) / 12 - b ^ 2 * U2 / 60
              + 2 * C1 * U0 / b ^ 2))
      = 8 * b ^ 2 * U0 / (pi * t ^ 2) + C0 * U0 / (2 * pi * t)
          - 7 * b ^ 2 * U1 / (12 * pi * t) + C0 * U1 / (24 * pi)
          + b ^ 2 * U2 / (120 * pi) - C1 * U0 / (pi * b ^ 2) := by
  field_simp
  ring

/-- `(4.10b)`: the geometric and contact cubic contributions add to the
displayed `t`-coefficient. The two cubic coefficients are `-1/1680` for `I`
and `-1/840` for `A`, the angular limits are `t Θ(t) → 2 b²` and
`t² Θ'(t) → -2 b²`, and the full-line pairing is twice the half-line
pairing. -/
theorem flat_conversion_cubic_coefficient (pi b : ℝ) (hpi : pi ≠ 0) :
    2 * ((2 * b ^ 2 / (2 * pi)) * (-(1 / 1680 : ℝ) + 1 / 840))
      = b ^ 2 / (840 * pi) := by
  field_simp
  ring

/-- `(4.10c)` local cutoff term: with `C = 2 b²`, the coefficient
`C/(1680 π)` is `b²/(840 π)`, matching the `(4.10b)` remainder. -/
theorem flat_conversion_cutoff_coefficient (pi b : ℝ) (hpi : pi ≠ 0) :
    (2 * b ^ 2) / (1680 * pi) = b ^ 2 / (840 * pi) := by
  field_simp
  ring

/-! ## Section 5: the finite-matrix reference-position identity -/

/-- `(5.3)` at finite matrix level: for commuting heat factors
`Ka * Kc = Kc * Ka` and `Kt = Ka * Kc`, moving the insertion `b` from the
sandwich `b Ka V Kc` to the reference position costs the commutator term
`[Kc, b] Ka V`. -/
theorem matrix_reference_position_identity {n : Type*} [Fintype n] [DecidableEq n]
    (b Ka Kc V : Matrix n n ℂ) (hcomm : Ka * Kc = Kc * Ka) :
    (b * Ka * V * Kc).trace
      = (b * (Ka * Kc) * V).trace + ((Kc * b - b * Kc) * Ka * V).trace := by
  have hrot : (b * Ka * V * Kc).trace = (Kc * b * Ka * V).trace := by
    rw [Matrix.trace_mul_comm (b * Ka * V) Kc]
    simp [mul_assoc]
  have hA : (Kc * b - b * Kc) * Ka * V
      = Kc * b * Ka * V - b * Kc * Ka * V := by
    rw [Matrix.sub_mul, Matrix.sub_mul]
  have hB : b * (Ka * Kc) * V = b * Kc * Ka * V := by
    rw [hcomm]
    simp [mul_assoc]
  rw [hrot, hA, hB, Matrix.trace_sub]
  ring

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.skew_adjoint_inner_self_zero
#print axioms PairedDirac.Manuscript.resolvent_shift_norm_lower
#print axioms PairedDirac.Manuscript.resolvent_norm_bound
#print axioms PairedDirac.Manuscript.square_shift_norm_lower
#print axioms PairedDirac.Manuscript.square_resolvent_norm_bound
#print axioms PairedDirac.Manuscript.congruenced_gap_composition
#print axioms PairedDirac.Manuscript.converted_series_difference
#print axioms PairedDirac.Manuscript.flat_conversion_cubic_coefficient
#print axioms PairedDirac.Manuscript.flat_conversion_cutoff_coefficient
#print axioms PairedDirac.Manuscript.matrix_reference_position_identity

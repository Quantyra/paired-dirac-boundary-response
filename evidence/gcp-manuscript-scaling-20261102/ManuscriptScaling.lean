import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum

/-!
# Manuscript formalization: the scaling algebra of `(5.4)` and the `(4.6)` prefactor

Two bounded/algebraic facts behind Section 5's displayed estimates.

**`(5.4)`** states `|R_boundary(δ,t)| ≤ C[δ^{3/2}t^{-9/4} + δ³t^{-3/2}]`. This
file certifies that both terms are nonnegative for `δ, t > 0` (so the bound is a
genuine two-term majorant and the constant `C` may be taken as the maximum of
the two coefficients). Their ratio is `1/(δ^{3/2}t^{3/4})` — recorded in the
receipt README as structural context but not formalized here.

**`(4.6)`**'s prefactor `(1 + t^{-N})exp(-c/t)` needs `t ↦ t^{-N}exp(-c/t)` to
be bounded on `(0,∞)`. That is certified here with the explicit bound
`t^{-N}exp(-c/t) ≤ N!/c^N`, from Mathlib's `Real.pow_div_factorial_le_exp`
(`u^N/N! ≤ e^u`) at `u = c/t`.

Neither statement is a trace or regulator estimate; the unbounded Section 5
content is not claimed.
-/

namespace PairedDirac.Manuscript

/-- Both `(5.4)` terms are nonnegative for `δ, t > 0`. -/
theorem scaling_terms_nonneg (δ t : ℝ) (hδ : 0 < δ) (ht : 0 < t) :
    0 ≤ δ ^ ((3 : ℝ) / 2) * t ^ (-(9 : ℝ) / 4) ∧ 0 ≤ δ ^ 3 * t ^ (-(3 : ℝ) / 2) := by
  constructor
  · exact mul_nonneg (Real.rpow_nonneg hδ.le _) (Real.rpow_nonneg ht.le _)
  · exact mul_nonneg (pow_nonneg hδ.le 3) (Real.rpow_nonneg ht.le _)

/-- The ratio of the `(5.4)` terms: the cubic term dominates exactly when
`δ^{3/2}t^{3/4} ≤ 1`. -/
theorem scaling_ratio (δ t : ℝ) (hδ : 0 < δ) (ht : 0 < t) :
    δ ^ ((3 : ℝ) / 2) * t ^ (-((9 : ℝ) / 4))
        / (δ ^ 3 * t ^ (-((3 : ℝ) / 2)))
      = 1 / (δ ^ ((3 : ℝ) / 2) * t ^ ((3 : ℝ) / 4)) := by
  have hd : δ ^ ((3 : ℝ) / 2) / δ ^ 3 = 1 / δ ^ ((3 : ℝ) / 2) := by
    rw [← Real.rpow_natCast δ 3]
    rw [← Real.rpow_sub hδ, show ((3 : ℝ) / 2) - ((3 : ℕ) : ℝ) = -((3 : ℝ) / 2) by
      push_cast
      norm_num,
      Real.rpow_neg hδ.le, one_div]
  have ht' : t ^ (-((9 : ℝ) / 4)) / t ^ (-((3 : ℝ) / 2))
      = 1 / t ^ ((3 : ℝ) / 4) := by
    rw [← Real.rpow_sub ht,
      show -((9 : ℝ) / 4) - -((3 : ℝ) / 2) = -((3 : ℝ) / 4) by norm_num,
      Real.rpow_neg ht.le, one_div]
  have hδ3 : (0 : ℝ) < δ ^ ((3 : ℝ) / 2) := Real.rpow_pos_of_pos hδ _
  have ht1 : (0 : ℝ) < t ^ ((3 : ℝ) / 4) := Real.rpow_pos_of_pos ht _
  rw [← div_mul_div_comm]
  rw [hd, ht']
  field_simp

/-- `(4.6)`'s prefactor: `t^{-N}exp(-c/t)` is bounded on `(0,∞)` by `N!/c^N`. -/
theorem exp_neg_div_bounded (c : ℝ) (hc : 0 < c) (N : ℕ) :
    ∀ t : ℝ, 0 < t → (t ^ N)⁻¹ * Real.exp (-c / t) ≤ (N.factorial : ℝ) / c ^ N := by
  intro t ht
  have hcN : (0 : ℝ) < c ^ N := pow_pos hc N
  have htN : (0 : ℝ) < t ^ N := pow_pos ht N
  have hfact : (0 : ℝ) < (N.factorial : ℝ) := by exact_mod_cast Nat.factorial_pos N
  have key : (c / t) ^ N / (N.factorial : ℝ) ≤ Real.exp (c / t) :=
    Real.pow_div_factorial_le_exp (c / t) (div_pos hc ht).le N
  have h1 : (c / t) ^ N ≤ (N.factorial : ℝ) * Real.exp (c / t) := by
    rw [div_le_iff₀ hfact] at key
    linarith [key]
  have h2 : (c / t) ^ N * Real.exp (-(c / t)) ≤ (N.factorial : ℝ) := by
    have := mul_le_mul_of_nonneg_right h1 (le_of_lt (Real.exp_pos (-(c / t))))
    rw [mul_assoc, ← Real.exp_add, add_neg_cancel, Real.exp_zero, mul_one] at this
    exact this
  have h3 : (c / t) ^ N * Real.exp (-(c / t))
      = c ^ N * ((t ^ N)⁻¹ * Real.exp (-c / t)) := by
    rw [div_pow, div_eq_mul_inv]
    ring
  rw [h3] at h2
  have h4 : (t ^ N)⁻¹ * Real.exp (-c / t) * c ^ N ≤ (N.factorial : ℝ) := by
    rw [mul_comm]
    exact h2
  exact (le_div_iff₀ hcN).mpr h4

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.scaling_terms_nonneg
#print axioms PairedDirac.Manuscript.scaling_ratio
#print axioms PairedDirac.Manuscript.exp_neg_div_bounded

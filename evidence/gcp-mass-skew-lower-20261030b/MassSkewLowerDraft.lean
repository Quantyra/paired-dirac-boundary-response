import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic.Linarith

/-! Unverified draft for the coercive step of the mass-resolvent estimate.
It does not prove surjectivity, the inverse bound, or the physical operator
hypotheses. Lean invocations must run on GCP. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem mass_skew_lower_bound_draft (m : ℝ) (x y : H)
    (hm : 0 < m) (hy : (inner ℂ y x).re = 0) :
    m * ‖x‖ ≤ ‖(m : ℂ) • x + y‖ := by
  have hcs := re_inner_le_norm (𝕜 := ℂ) ((m : ℂ) • x + y) x
  have hquad : m * ‖x‖ ^ 2 ≤ ‖(m : ℂ) • x + y‖ * ‖x‖ := by
    rw [inner_add_left, inner_smul_left, inner_self_eq_norm_sq_to_K] at hcs
    simpa [hy] using hcs
  by_cases hx : ‖x‖ = 0
  · simp [hx]
  · have hxpos : 0 < ‖x‖ := lt_of_le_of_ne (norm_nonneg x) (Ne.symm hx)
    nlinarith

end PairedDirac

#print axioms PairedDirac.mass_skew_lower_bound_draft

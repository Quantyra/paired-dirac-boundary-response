import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-! Algebraic coefficient obstruction only. The analytic expansions, Fourier
normalization, physical folding, and general equivalence questions are not
established by this file. -/

namespace PairedDirac

theorem flat_form_factor_coefficient_obstruction :
    ¬ ∃ c : ℝ,
      c * (1 / 60 : ℝ) = -(1 / 10080 : ℝ) ∧
      c * (-(1 / 840 : ℝ)) = (1 / 166320 : ℝ) := by
  rintro ⟨c, h4, h5⟩
  norm_num at h4 h5
  linarith

end PairedDirac

#print axioms PairedDirac.flat_form_factor_coefficient_obstruction
import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.Tactic.Linarith

/-! Scalar lower-bound algebra for the auxiliary variable-coefficient model.
This does not establish an operator inequality or a physical admission margin. -/

namespace PairedDirac

theorem radial_comparison_gap
    (a g mass mu : ℝ) (ha : 0 < a)
    (hmass : g^2 < 4 * a^2 * mass^2) :
    0 < mass^2 + a^2 * mu^2 - g * |mu| := by
  have ha2 : 0 < 4 * a^2 := by
    have h := mul_pos ha ha
    nlinarith
  have habs : |mu|^2 = mu^2 := sq_abs mu
  have hs := sq_nonneg (2 * a^2 * |mu| - g)
  have hp : 0 < (4 * a^2) * (mass^2 + a^2 * mu^2 - g * |mu|) := by
    nlinarith [hs]
  exact (mul_pos_iff_of_pos_left ha2).mp hp

theorem radial_mass_threshold_equiv
    (a g mass : ℝ) (ha : 0 < a) :
    g^2 / (4 * a^2) < mass^2 ↔ g^2 < 4 * a^2 * mass^2 := by
  have ha2 : 0 < 4 * a^2 := by
    have h := mul_pos ha ha
    nlinarith
  exact div_lt_iff₀ ha2

theorem radial_high_mode_lower_bound
    (a g mu : ℝ) (hhigh : 2 * g ≤ a^2 * |mu|) :
    (a^2 / 2) * mu^2 ≤ a^2 * mu^2 - g * |mu| := by
  have hp := mul_nonneg (sub_nonneg.mpr hhigh) (abs_nonneg mu)
  have habs : |mu|^2 = mu^2 := sq_abs mu
  nlinarith

end PairedDirac

#print axioms PairedDirac.radial_comparison_gap
#print axioms PairedDirac.radial_mass_threshold_equiv
#print axioms PairedDirac.radial_high_mode_lower_bound
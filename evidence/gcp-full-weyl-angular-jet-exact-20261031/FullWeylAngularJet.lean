import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.Ring

/-!
The rational polynomial cancellations in the leading full-Weyl angular
small-time jet. Analytic remainders and physical transfer are not formalized.
-/

theorem full_weyl_leading_angular_jet (x : Real) :
    1 + 3 * (1 - x / (6 : Real) + x ^ 2 / (60 : Real))
      - ((3 : Real) / 2) * x * (-((1 : Real) / 6) + x / (30 : Real))
      = 4 - x / (4 : Real) := by
  ring

#print axioms full_weyl_leading_angular_jet

noncomputable def fullWeylA4 (x : Real) : Real :=
  1 - x / 6 + x ^ 2 / 60 - x ^ 3 / 840 + x ^ 4 / 15120

noncomputable def fullWeylA4Derivative (x : Real) : Real :=
  - (1 : Real) / 6 + x / 30 - x ^ 2 / 280 + x ^ 3 / 3780

theorem full_weyl_subtracted_jet_through_fourth_order (x : Real) :
    1 + 3 * fullWeylA4 x - (3 : Real) / 2 * x * fullWeylA4Derivative x
      = 4 - x / 4 + x ^ 3 / 560 - x ^ 4 / 5040 := by
  unfold fullWeylA4 fullWeylA4Derivative
  ring

#print axioms full_weyl_subtracted_jet_through_fourth_order

import Mathlib.Tactic.Ring

/-!
The rational polynomial cancellation in the leading full-Weyl angular
small-time jet. The analytic Taylor remainder, angular heat asymptotics,
trace density, and physical common-regulator transfer are not formalized here.
-/

theorem full_weyl_leading_angular_jet (x : ℝ) :
    1 + 3 * (1 - x / (6 : ℝ) + x ^ 2 / (60 : ℝ))
      - ((3 : ℝ) / 2) * x * (-((1 : ℝ) / 6) + x / (30 : ℝ))
      = 4 - x / (4 : ℝ) := by
  ring

#print axioms full_weyl_leading_angular_jet

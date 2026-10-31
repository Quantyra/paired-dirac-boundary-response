import Mathlib.Tactic.NoncommRing
import Mathlib.Tactic.Ring

/-!
Algebraic checks for the fixed-mode full-Weyl correction vertices.
These declarations verify coefficient identities from explicit product-rule
hypotheses. They do not formalize operator domains, parameter differentiability,
heat-trace estimates, or the physical response.
-/

namespace FullWeylOrbitCorrection

/-- The mixed commutator coefficient from the first jets of `D_b` and `M_b`.
`twiceAu` and `twiceAw` are twice the first jets `-(uD + Du)/2` and
`-(wD + Dw)/2`. The product-rule identity is assumed explicitly. -/
theorem mixed_commutator_vertex
    {R : Type} [Ring R]
    (D u w : R)
    (huw : u * w = w * u)
    (hproduct : D * (u * w) - (u * w) * D
      = (D * u - u * D) * w + u * (D * w - w * D)) :
    let twiceAu := -(u * D + D * u)
    let twiceAw := -(w * D + D * w)
    -(twiceAu * w - w * twiceAu)
      -(twiceAw * u - u * twiceAw)
      + 2 * (D * (u * w) - (u * w) * D)
      = 4 * (D * (u * w) - (u * w) * D) := by
  dsimp
  rw [hproduct]
  noncomm_ring

/-- First angular-mass vertex coefficient for `mu^2 exp(-2b)`. -/
theorem angular_mass_first_vertex (mu u : ℝ) :
    (-2 * mu^2) * u = -2 * mu^2 * u := by ring

/-- Mixed angular-mass vertex coefficient for `mu^2 exp(-2b)`. -/
theorem angular_mass_mixed_vertex (mu u w : ℝ) :
    (4 * mu^2) * (u * w) = 4 * mu^2 * u * w := by ring

end FullWeylOrbitCorrection

#print axioms FullWeylOrbitCorrection.mixed_commutator_vertex
#print axioms FullWeylOrbitCorrection.angular_mass_first_vertex
#print axioms FullWeylOrbitCorrection.angular_mass_mixed_vertex

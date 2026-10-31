import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NoncommRing
import Mathlib.Tactic.Ring

/-!
Development draft: algebraic checks for the fixed-mode full-Weyl correction vertices. No successful GCP Lean replay is recorded for this source yet.
These declarations verify coefficient identities from explicit product-rule
hypotheses. They do not formalize operator domains, parameter differentiability,
heat-trace estimates, or the physical response.
-/

namespace FullWeylOrbitCorrection

/-- Twice the first orbit Dirac jet in scalar direction `u`. -/
def twiceDiracJet {R : Type} [Ring R] (D u : R) : R := -(u * D + D * u)

/-- The mixed commutator coefficient from the first jets of `D_b` and `M_b`.
The product rule is an explicit hypothesis. -/
theorem mixed_commutator_vertex
    {R : Type} [Ring R]
    (D u w : R)
    (huw : u * w = w * u)
    (hduw : (D * u - u * D) * w = w * (D * u - u * D))
    (hdwu : (D * w - w * D) * u = u * (D * w - w * D))
    (hproduct : D * (u * w) - (u * w) * D
      = (D * u - u * D) * w + u * (D * w - w * D)) :
    -(twiceDiracJet D u * w - w * twiceDiracJet D u)
      -(twiceDiracJet D w * u - u * twiceDiracJet D w)
      + 2 * (D * (u * w) - (u * w) * D)
      = 4 * (D * (u * w) - (u * w) * D) := by
  unfold twiceDiracJet
  rw [hproduct]
  noncomm_ring [huw, hduw, hdwu]

/-- First angular-mass vertex coefficient for `mu^2 exp(-2b)`. -/
theorem angular_mass_first_vertex (mu u : Real) :
    (-2 * mu ^ 2) * u = -2 * mu ^ 2 * u := by ring

/-- Mixed angular-mass vertex coefficient for `mu^2 exp(-2b)`. -/
theorem angular_mass_mixed_vertex (mu u w : Real) :
    (4 * mu ^ 2) * (u * w) = 4 * mu ^ 2 * u * w := by ring

end FullWeylOrbitCorrection

#print axioms FullWeylOrbitCorrection.mixed_commutator_vertex
#print axioms FullWeylOrbitCorrection.angular_mass_first_vertex
#print axioms FullWeylOrbitCorrection.angular_mass_mixed_vertex

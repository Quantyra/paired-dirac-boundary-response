import Mathlib.Tactic.NoncommRing

/-!
Development draft: the fixed-mode full-Weyl commutator correction vertex.
This declaration verifies a commutator coefficient identity under explicit
product-rule and scalar-commutation hypotheses. It does not formalize angular-mass
derivatives, operator domains, parameter differentiability, heat traces, or the
physical response.
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
  have hassoc : w * (u * D) = u * (w * D) := by
    rw [← mul_assoc, ← huw, mul_assoc]
  unfold twiceDiracJet
  rw [hproduct]
  noncomm_ring [hassoc, huw, hduw, hdwu]

end FullWeylOrbitCorrection

#print axioms FullWeylOrbitCorrection.mixed_commutator_vertex

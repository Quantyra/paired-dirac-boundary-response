import FiniteCutCongruenceDomain
import ProjectedRobinCongruence

/-!
An integrated finite-cut boundary-square proposition for Paper 1.

This packages the set-theoretic composition-domain reduction with the
projected Robin coefficient transport. Preservation of the actual domains,
the geometric normal product rule, the projector/Gauss identities, and the
physical bundle identification remain explicit hypotheses outside Lean.
-/

theorem p1_finite_cut_boundary_square
    {Alpha : Type} (V Vstar : Alpha → Prop) (E T : Alpha → Alpha)
    (hV : ∀ x, V (E x) ↔ V x)
    (hVstar : ∀ x, Vstar (E (E x)) ↔ Vstar x)
    {W : Type} [AddCommGroup W] [Module ℝ W]
    (P n : W →ₗ[ℝ] W) (e de k normalJet : ℝ) (ξ : W)
    (hproduct : de = -(normalJet / 2) * e)
    (x : Alpha) :
    (FiniteCutCongruence.compositionDomain V Vstar E T x ↔
      (V x ∧ Vstar (T (E x)))) ∧
      (P (ProjectedRobinCongruence.transportedRobinInput n e de k ξ) =
        e • P (n ξ +
          ProjectedRobinCongruence.p1RobinCoefficient k normalJet • ξ)) := by
  constructor
  · exact FiniteCutCongruence.composition_domain_reduction
      V Vstar E T hV hVstar x
  · exact ProjectedRobinCongruence.projected_robin_congruence
      P n e de k normalJet ξ hproduct

#print axioms p1_finite_cut_boundary_square

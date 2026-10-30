import TraceDomainDraft
import LapseAdjointDomainDraft

/-! Connect the lapse square-domain result to an abstract projected trace.
Sobolev trace and physical domain identities remain explicit hypotheses. -/

namespace PairedDirac

variable {H B : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H] [AddCommGroup B] [Module ℂ B]

theorem projected_trace_lapse_square_domain
    (A : H →ₗ.[ℂ] H) (S : Submodule ℂ H) (T : S →ₗ[ℂ] B)
    (Q M N : B →ₗ[ℂ] B) (E : H ≃L[ℂ] H)
    (hAdjDomain : A.adjoint.domain = projectedTraceDomain S T Q)
    (hS : ∀ x ∈ S, E x ∈ S)
    (hSinv : ∀ x ∈ S, E.symm x ∈ S)
    (hTrace : ∀ x : S, T ⟨E x, hS x x.property⟩ = M (T x))
    (hTraceInv : ∀ x : S, T ⟨E.symm x, hSinv x x.property⟩ = N (T x))
    (hQM : ∀ b : B, Q (M b) = M (Q b))
    (hQN : ∀ b : B, Q (N b) = N (Q b))
    (hDense : Dense (A.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    (positiveSquare (leftMultiplier A E.toLinearEquiv)).domain =
      (positiveSquare A).domain := by
  have hForward : ∀ x ∈ A.adjoint.domain, E.toLinearEquiv x ∈ A.adjoint.domain := by
    rw [hAdjDomain]
    exact projectedTraceDomain_preserved_draft S T Q M E.toLinearMap hS hTrace hQM
  have hBackward : ∀ x ∈ A.adjoint.domain, E.toLinearEquiv.symm x ∈ A.adjoint.domain := by
    rw [hAdjDomain]
    exact projectedTraceDomain_preserved_draft S T Q N E.symm.toLinearMap hSinv hTraceInv hQN
  exact left_multiplier_square_domain_from_invariance A E.toLinearEquiv
    hDense hSymm hForward hBackward

end PairedDirac

#print axioms PairedDirac.projected_trace_lapse_square_domain
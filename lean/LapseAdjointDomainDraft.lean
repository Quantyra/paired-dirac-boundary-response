import LapseSquareDomainDraft

/-! The adjoint-domain identity for a one-sided symmetric multiplier.
Geometric multiplier and regularity hypotheses remain outside this file. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

noncomputable def leftMultiplier (A : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H) : H →ₗ.[ℂ] H where
  domain := A.domain
  toFun := E.toLinearMap.comp A.toFun

theorem left_multiplier_adjoint_domain
    (A : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hDense : Dense (A.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y))
    (y : H) : y ∈ (leftMultiplier A E).adjoint.domain ↔ E y ∈ A.adjoint.domain := by
  constructor
  · intro hy
    apply LinearPMap.mem_adjoint_domain_of_exists
    refine ⟨(leftMultiplier A E).adjoint ⟨y, hy⟩, ?_⟩
    intro x
    have hPDense : Dense ((leftMultiplier A E).domain : Set H) := hDense
    have h := LinearPMap.adjoint_isFormalAdjoint hPDense ⟨y, hy⟩ x
    change inner ℂ ((leftMultiplier A E).adjoint ⟨y, hy⟩) x =
      inner ℂ y (E (A x)) at h
    rw [← hSymm y (A x)] at h
    exact h
  · intro hy
    apply LinearPMap.mem_adjoint_domain_of_exists
    refine ⟨A.adjoint ⟨E y, hy⟩, ?_⟩
    intro x
    have h := LinearPMap.adjoint_isFormalAdjoint hDense ⟨E y, hy⟩ x
    change inner ℂ (A.adjoint ⟨E y, hy⟩) x =
      inner ℂ y (E (A x))
    rw [← hSymm y (A x)]
    exact h

theorem left_multiplier_square_domain
    (A : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hDense : Dense (A.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y))
    (hMultiplier : ∀ y : H, E (E y) ∈ A.adjoint.domain ↔ y ∈ A.adjoint.domain) :
    (positiveSquare (leftMultiplier A E)).domain = (positiveSquare A).domain := by
  apply lapse_positive_square_domain A (leftMultiplier A E) E rfl
  · intro x hp ha
    rfl
  · exact left_multiplier_adjoint_domain A E hDense hSymm
  · exact hMultiplier

end PairedDirac

#print axioms PairedDirac.left_multiplier_adjoint_domain
#print axioms PairedDirac.left_multiplier_square_domain
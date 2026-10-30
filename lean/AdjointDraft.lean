import PairedDirac

/-!
Unverified GCP development draft: formal-adjoint inclusion for bounded
congruence. Equality of adjoint domains and the reverse inclusion are not
assumed or established here. This file is not an acceptance result.
-/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- Candidate Green identity for the congruence and the congruent adjoint. -/
theorem congruence_formalAdjoint_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    (congruence D E hE).IsFormalAdjoint (congruence D.adjoint E hEA) := by
  intro x y
  change inner ℂ (E (D ⟨E x, hE x x.property⟩)) (y : H) =
    inner ℂ (x : H) (E (D.adjoint ⟨E y, hEA y y.property⟩))
  rw [hSymm, ← hSymm]
  exact (LinearPMap.adjoint_isFormalAdjoint hDense).symm
    ⟨E x, hE x x.property⟩ ⟨E y, hEA y y.property⟩

end PairedDirac

#print axioms PairedDirac.congruence_formalAdjoint_draft

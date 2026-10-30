import AdjointDraft

/-! Development draft for the natural domain of the operator product D†D.
This file must be typechecked on GCP; it is not an acceptance result. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The inverse image of the adjoint domain within D's domain, embedded in H. -/
def squareDomain (D : H →ₗ.[ℂ] H) : Submodule ℂ H :=
  (D.adjoint.domain.comap D.toFun).map D.domain.subtype

/-- Membership expresses the actual product condition on D's domain. -/
theorem mem_squareDomain_draft (D : H →ₗ.[ℂ] H) (x : H) :
    x ∈ squareDomain D ↔ ∃ hx : x ∈ D.domain, D ⟨x, hx⟩ ∈ D.adjoint.domain := by
  simp only [squareDomain, Submodule.mem_map, Submodule.mem_comap]
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact ⟨y.property, hy⟩
  · rintro ⟨hx, hy⟩
    exact ⟨⟨x, hx⟩, hy, rfl⟩

/-- The square-domain characterization for the actual congruence. -/
theorem congruence_squareDomain_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain)
    (hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain)
    (hEAinv : ∀ x ∈ D.adjoint.domain, E.symm x ∈ D.adjoint.domain)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y))
    (x : H) :
    x ∈ squareDomain (congruence D E hE) ↔
      ∃ hx : x ∈ D.domain, (congruence D E hE) ⟨x, hx⟩ ∈ D.adjoint.domain := by
  rw [mem_squareDomain_draft]
  rw [congruence_adjoint_eq_draft D E hE hEinv hEA hEAinv hDense hSymm]
  rfl

end PairedDirac

#print axioms PairedDirac.mem_squareDomain_draft
#print axioms PairedDirac.congruence_squareDomain_draft

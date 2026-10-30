import SquareDomainDraft

/-! Development draft constructing the actual partially defined product. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- Restrict D to its natural square domain, then compose with its adjoint. -/
noncomputable def positiveSquare (D : H →ₗ.[ℂ] H) : H →ₗ.[ℂ] H :=
  D.adjoint.comp (D.domRestrict (squareDomain D)) (by
    intro x
    change D ⟨(x : H), x.property.2⟩ ∈ D.adjoint.domain
    obtain ⟨hx, hh⟩ := (mem_squareDomain_draft D x).mp x.property.1
    exact hh)

/-- The constructed product has precisely the natural composition domain. -/
theorem positiveSquare_domain_draft (D : H →ₗ.[ℂ] H) :
    (positiveSquare D).domain = squareDomain D := by
  change squareDomain D ⊓ D.domain = squareDomain D
  apply inf_eq_left.mpr
  intro x hx
  exact ((mem_squareDomain_draft D x).mp hx).choose

/-- Membership is equivalent to the actual adjoint composition condition. -/
theorem mem_positiveSquare_domain_draft (D : H →ₗ.[ℂ] H) (x : H) :
    x ∈ (positiveSquare D).domain ↔
      ∃ hx : x ∈ D.domain, D ⟨x, hx⟩ ∈ D.adjoint.domain := by
  rw [positiveSquare_domain_draft, mem_squareDomain_draft]

end PairedDirac

#print axioms PairedDirac.positiveSquare_domain_draft
#print axioms PairedDirac.mem_positiveSquare_domain_draft
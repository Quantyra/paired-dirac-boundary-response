import PositiveSquareDraft

/-! The partner-domain part of the square factorization. The closed partner
identity, geometric domains and skew-adjoint spectral calculus are not
proved by this file. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- A partner characterization of the adjoint domain gives the natural
square-domain condition without assuming the square has a fixed domain. -/
theorem mem_positive_square_domain_partner
    (D : H →ₗ.[ℂ] H) (J : H →ₗ[ℂ] H)
    (hPartnerDomain : ∀ y : H, y ∈ D.adjoint.domain ↔ J y ∈ D.domain)
    (x : H) :
    x ∈ (positiveSquare D).domain ↔
      ∃ hx : x ∈ D.domain, J (D ⟨x, hx⟩) ∈ D.domain := by
  rw [mem_positiveSquare_domain_draft]
  constructor
  · rintro ⟨hx, hh⟩
    exact ⟨hx, (hPartnerDomain _).mp hh⟩
  · rintro ⟨hx, hh⟩
    exact ⟨hx, (hPartnerDomain _).mpr hh⟩

end PairedDirac

#print axioms PairedDirac.mem_positive_square_domain_partner
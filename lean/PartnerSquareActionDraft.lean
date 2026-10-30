import PartnerSquareDomain

/-! Unverified draft: action of the natural adjoint square under an assumed
partner identity. This does not prove skew-adjointness, spectral resolvent
bounds, physical domains, or paper certification. Run only on GCP. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem positive_square_partner_action_draft
    (D : H →ₗ.[ℂ] H) (J : H →ₗ[ℂ] H)
    (hJDomain : ∀ y ∈ D.adjoint.domain, J y ∈ D.domain)
    (hPartner : ∀ (y : H) (hy : y ∈ D.adjoint.domain),
      D.adjoint ⟨y, hy⟩ = - J (D ⟨J y, hJDomain y hy⟩))
    (x : (positiveSquare D).domain) :
    (positiveSquare D) x =
      - J (D ⟨J (D ⟨(x : H), x.property.2⟩),
        hJDomain (D ⟨(x : H), x.property.2⟩)
          ((mem_squareDomain_draft D x).mp x.property.1).choose_spec⟩) := by
  let y : D.domain := ⟨(x : H), x.property.2⟩
  have hy : D y ∈ D.adjoint.domain := by
    obtain ⟨hx, hh⟩ := (mem_squareDomain_draft D x).mp x.property.1
    exact hh
  change D.adjoint ⟨D y, hy⟩ = - J (D ⟨J (D y), hJDomain (D y) hy⟩)
  exact hPartner (D y) hy

end PairedDirac

#print axioms PairedDirac.positive_square_partner_action_draft
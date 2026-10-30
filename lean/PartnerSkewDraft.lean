import LeftUnitarySquare

/-! Unverified draft: derive the domain and action of the adjoint of JD
from an assumed closed partner identity. Check only on GCP. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem partner_skew_domain_draft
    (D : H →ₗ.[ℂ] H) (J : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (J x) (J y) = inner ℂ x y)
    (hPartnerDomain : ∀ y : H, y ∈ D.adjoint.domain ↔ J y ∈ D.domain)
    (y : H) :
    y ∈ (leftUnitary D J).adjoint.domain ↔ y ∈ (leftUnitary D J).domain := by
  rw [left_unitary_adjoint_domain D J hDense hIso, hPartnerDomain]
  simpa [leftUnitary]

theorem partner_skew_action_draft
    (D : H →ₗ.[ℂ] H) (J : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (J x) (J y) = inner ℂ x y)
    (hPartnerDomain : ∀ y : H, y ∈ D.adjoint.domain ↔ J y ∈ D.domain)
    (hPartner : ∀ (y : H) (hy : y ∈ D.adjoint.domain),
      D.adjoint ⟨y, hy⟩ = - J (D ⟨J y, (hPartnerDomain y).mp hy⟩))
    (y : H) (hy : y ∈ (leftUnitary D J).adjoint.domain) :
    (leftUnitary D J).adjoint ⟨y, hy⟩ =
      -(leftUnitary D J) ⟨y, (partner_skew_domain_draft D J hDense hIso hPartnerDomain y).mp hy⟩ := by
  have hz : J.symm y ∈ D.adjoint.domain :=
    (left_unitary_adjoint_domain D J hDense hIso y).mp hy
  have ha := left_unitary_adjoint_action D J hDense hIso (J.symm y) hz
  have hp := hPartner (J.symm y) hz
  simpa [leftUnitary] using ha.trans hp

end PairedDirac

#print axioms PairedDirac.partner_skew_domain_draft
#print axioms PairedDirac.partner_skew_action_draft

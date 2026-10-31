import PartnerSkewDraft

/-! Unverified draft: package the paired adjoint domain and action as an
operator equality. Physical partner assumptions remain explicit. GCP only. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

noncomputable def negativePMap (Q : H →ₗ.[ℂ] H) : H →ₗ.[ℂ] H where
  domain := Q.domain
  toFun := -Q.toFun

theorem partner_skew_operator_draft
    (D : H →ₗ.[ℂ] H) (J : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (J x) (J y) = inner ℂ x y)
    (hPartnerDomain : ∀ y : H, y ∈ D.adjoint.domain ↔ J y ∈ D.domain)
    (hPartner : ∀ (y : H) (hy : y ∈ D.adjoint.domain),
      D.adjoint ⟨y, hy⟩ = - J (D ⟨J y, (hPartnerDomain y).mp hy⟩)) :
    (leftUnitary D J).adjoint = negativePMap (leftUnitary D J) := by
  apply LinearPMap.ext
  · ext y
    exact partner_skew_domain_draft D J hDense hIso hPartnerDomain y
  · intro y hyAdj hyNeg
    change (leftUnitary D J).adjoint ⟨y, hyAdj⟩ =
      -(leftUnitary D J) ⟨y, hyNeg⟩
    exact partner_skew_action_draft D J hDense hIso hPartnerDomain hPartner y hyAdj

end PairedDirac

#print axioms PairedDirac.partner_skew_operator_draft

import PositiveSquareDraft

/-! Domain transfer for the one-sided lapse comparator. The adjoint-domain
formula and multiplier invariance are explicit hypotheses. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem lapse_positive_square_domain
    (A P : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hDomain : P.domain = A.domain)
    (hAction : ∀ (x : H) (hp : x ∈ P.domain) (ha : x ∈ A.domain),
      P ⟨x, hp⟩ = E (A ⟨x, ha⟩))
    (hAdjointDomain : ∀ y : H, y ∈ P.adjoint.domain ↔ E y ∈ A.adjoint.domain)
    (hMultiplier : ∀ y : H, E (E y) ∈ A.adjoint.domain ↔ y ∈ A.adjoint.domain) :
    (positiveSquare P).domain = (positiveSquare A).domain := by
  ext x
  rw [mem_positiveSquare_domain_draft, mem_positiveSquare_domain_draft]
  constructor
  · rintro ⟨hp, hh⟩
    have ha : x ∈ A.domain := by simpa [hDomain] using hp
    refine ⟨ha, ?_⟩
    have hm := (hAdjointDomain (P ⟨x, hp⟩)).mp hh
    rw [hAction x hp ha] at hm
    exact (hMultiplier (A ⟨x, ha⟩)).mp hm
  · rintro ⟨ha, hh⟩
    have hp : x ∈ P.domain := by simpa [hDomain] using ha
    refine ⟨hp, (hAdjointDomain (P ⟨x, hp⟩)).mpr ?_⟩
    rw [hAction x hp ha]
    exact (hMultiplier (A ⟨x, ha⟩)).mpr hh

end PairedDirac

#print axioms PairedDirac.lapse_positive_square_domain
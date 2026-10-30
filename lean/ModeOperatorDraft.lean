import SquareDomainDraft
import ModeDomainDraft

/-! Development draft for the actual partially defined mode operator.
The adjoint-domain equality and chirality-domain mapping are hypotheses. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

noncomputable def modeOperator (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ) : H →ₗ.[ℂ] H where
  domain := D.domain
  toFun := D.toFun + a • G.comp D.domain.subtype

/-- Composition domains agree once the actual mode adjoint domain and
chirality mapping hypotheses have been established. -/
theorem mode_square_domain_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hadj : (modeOperator D G a).adjoint.domain = D.adjoint.domain)
    (hG : ∀ x ∈ D.domain, G x ∈ D.adjoint.domain) :
    squareDomain (modeOperator D G a) = squareDomain D := by
  ext x
  rw [mem_squareDomain_draft, mem_squareDomain_draft]
  constructor
  · rintro ⟨hx, hy⟩
    have hxD : x ∈ D.domain := hx
    refine ⟨hxD, ?_⟩
    have hyD : D ⟨x, hxD⟩ + a • G x ∈ D.adjoint.domain := by
      rw [hadj] at hy
      simpa [modeOperator] using hy
    exact (mode_composition_domain D.adjoint.domain _ _ a (hG x hxD)).1 hyD
  · rintro ⟨hx, hy⟩
    have hxP : x ∈ (modeOperator D G a).domain := hx
    refine ⟨hxP, ?_⟩
    have hyP := (mode_composition_domain D.adjoint.domain _ _ a (hG x hx)).2 hy
    rw [hadj]
    simpa [modeOperator] using hyP

end PairedDirac

#print axioms PairedDirac.mode_square_domain_draft

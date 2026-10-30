import Mathlib.Analysis.InnerProductSpace.LinearPMap

/-!
Development source. This constructs the bounded-congruence candidate using a
partially defined linear map and proves the domain-preservation portion. It
is not the full closedness, adjoint, geometric or response theorem. Until a
GCP run and axiom audit succeed, even these declarations remain unverified.
-/

namespace PairedDirac

variable {H : Type*} [AddCommGroup H] [Module ℂ H]

/-- Restrict an invertible linear map to an invariant operator domain. -/
def domainRestriction (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain) : D.domain →ₗ[ℂ] D.domain where
  toFun x := ⟨E x, hE x x.property⟩
  map_add' x y := by ext; simp
  map_smul' a x := by ext; simp

/-- The actual partially defined congruence, on the original domain. -/
def congruence (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain) : H →ₗ.[ℂ] H where
  domain := D.domain
  toFun := E.toLinearMap.comp (D.toFun.comp (domainRestriction D E hE))

@[simp] theorem congruence_domain (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain) :
    (congruence D E hE).domain = D.domain := rfl

/-- Forward and inverse invariance identify the natural right-composition
    domain with the original domain. -/
theorem invariant_preimage (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain) :
    D.domain.comap E.toLinearMap = D.domain := by
  ext x
  change E x ∈ D.domain ↔ x ∈ D.domain
  constructor
  · intro hx
    have h := hEinv (E x) hx
    simpa using h
  · exact hE x

end PairedDirac

#print axioms PairedDirac.congruence_domain
#print axioms PairedDirac.invariant_preimage

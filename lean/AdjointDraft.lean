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
  calc
    inner ℂ (E (D ⟨E x, hE x x.property⟩)) (y : H) =
        inner ℂ (D ⟨E x, hE x x.property⟩) (E y) := hSymm _ _
    _ = inner ℂ (E x) (D.adjoint ⟨E y, hEA y y.property⟩) :=
      (LinearPMap.adjoint_isFormalAdjoint hDense).symm
        ⟨E x, hE x x.property⟩ ⟨E y, hEA y y.property⟩
    _ = inner ℂ (x : H) (E (D.adjoint ⟨E y, hEA y y.property⟩)) := hSymm _ _

end PairedDirac

#print axioms PairedDirac.congruence_formalAdjoint_draft

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The formal Green identity gives the forward operator inclusion. -/
theorem congruence_adjoint_forward_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    congruence D.adjoint E hEA ≤ (congruence D E hE).adjoint := by
  apply LinearPMap.IsFormalAdjoint.le_adjoint
  · simpa using hDense
  · exact congruence_formalAdjoint_draft D E hE hEA hDense hSymm

/-- Reverse adjoint-domain inclusion via the Green identity and inverse invariance. -/
theorem congruence_adjoint_domain_reverse_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain)
    (hEAinv : ∀ x ∈ D.adjoint.domain, E.symm x ∈ D.adjoint.domain)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    (congruence D E hE).adjoint.domain ≤ D.adjoint.domain := by
  intro y hy
  let C := congruence D E hE
  have hCDense : Dense (C.domain : Set H) := hDense
  have hEy : E y ∈ D.adjoint.domain := by
    apply LinearPMap.mem_adjoint_domain_of_exists
    refine ⟨E.symm (C.adjoint ⟨y, hy⟩), ?_⟩
    intro z
    let x : C.domain := ⟨E.symm z, hEinv z z.property⟩
    have hgreen := LinearPMap.adjoint_isFormalAdjoint hCDense ⟨y, hy⟩ x
    have hcx : C x = E (D z) := by
      change E (D ⟨E (E.symm z), hE _ x.property⟩) = E (D z)
      congr 2
      apply Subtype.ext
      simp
    calc
      inner ℂ (E.symm (C.adjoint ⟨y, hy⟩)) z =
          inner ℂ (C.adjoint ⟨y, hy⟩) (E.symm z) := by
            simpa using (hSymm (E.symm (C.adjoint ⟨y, hy⟩)) (E.symm z)).symm
      _ = inner ℂ y (C x) := hgreen
      _ = inner ℂ y (E (D z)) := by rw [hcx]
      _ = inner ℂ (E y) (D z) := (hSymm _ _).symm
  have h := hEAinv (E y) hEy
  simpa using h

end PairedDirac

#print axioms PairedDirac.congruence_adjoint_forward_draft
#print axioms PairedDirac.congruence_adjoint_domain_reverse_draft

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- Abstract congruence commutes with taking the adjoint under the recorded invariances. -/
theorem congruence_adjoint_eq_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain)
    (hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain)
    (hEAinv : ∀ x ∈ D.adjoint.domain, E.symm x ∈ D.adjoint.domain)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    (congruence D E hE).adjoint = congruence D.adjoint E hEA := by
  have hf := congruence_adjoint_forward_draft D E hE hEA hDense hSymm
  have hr := congruence_adjoint_domain_reverse_draft D E hE hEinv hEAinv hDense hSymm
  apply Eq.symm
  apply LinearPMap.eq_of_le_of_domain_eq hf
  exact le_antisymm hf.1 hr

end PairedDirac

#print axioms PairedDirac.congruence_adjoint_eq_draft

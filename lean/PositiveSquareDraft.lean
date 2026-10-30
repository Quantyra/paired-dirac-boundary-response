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
namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The quadratic form of the constructed product is the norm square of D. -/
theorem positiveSquare_inner_draft
    (D : H →ₗ.[ℂ] H) (hDense : Dense (D.domain : Set H))
    (x : (positiveSquare D).domain) :
    inner ℂ ((positiveSquare D) x) (x : H) =
      inner ℂ (D ⟨(x : H), x.property.2⟩) (D ⟨(x : H), x.property.2⟩) := by
  let y : D.domain := ⟨(x : H), x.property.2⟩
  have hy : D y ∈ D.adjoint.domain := by
    obtain ⟨hx, hh⟩ := (mem_squareDomain_draft D x).mp x.property.1
    exact hh
  change inner ℂ (D.adjoint ⟨D y, hy⟩) (y : H) = inner ℂ (D y) (D y)
  exact LinearPMap.adjoint_isFormalAdjoint hDense ⟨D y, hy⟩ y

/-- The quadratic form is nonnegative. -/
theorem positiveSquare_nonneg_draft
    (D : H →ₗ.[ℂ] H) (hDense : Dense (D.domain : Set H))
    (x : (positiveSquare D).domain) :
    0 ≤ Complex.re (inner ℂ ((positiveSquare D) x) (x : H)) := by
  rw [positiveSquare_inner_draft D hDense x]
  exact inner_self_nonneg (𝕜 := ℂ) (x := D ⟨(x : H), x.property.2⟩)

end PairedDirac

#print axioms PairedDirac.positiveSquare_inner_draft
#print axioms PairedDirac.positiveSquare_nonneg_draft
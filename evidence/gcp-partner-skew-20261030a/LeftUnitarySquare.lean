import PositiveSquareDraft

/-! Left-unitary invariance for the natural partially defined square.
Geometric and heat-trace identifications are outside this file. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

noncomputable def leftUnitary (D : H →ₗ.[ℂ] H) (U : H ≃ₗ[ℂ] H) : H →ₗ.[ℂ] H where
  domain := D.domain
  toFun := U.toLinearMap.comp D.toFun

theorem left_unitary_adjoint_domain
    (D : H →ₗ.[ℂ] H) (U : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (U x) (U y) = inner ℂ x y)
    (y : H) : y ∈ (leftUnitary D U).adjoint.domain ↔ U.symm y ∈ D.adjoint.domain := by
  have hUnit : ∀ y z : H, inner ℂ (U.symm y) z = inner ℂ y (U z) := by
    intro y z
    simpa using (hIso (U.symm y) z).symm
  constructor
  · intro hy
    apply LinearPMap.mem_adjoint_domain_of_exists
    refine ⟨(leftUnitary D U).adjoint ⟨y, hy⟩, ?_⟩
    intro x
    have hPDense : Dense ((leftUnitary D U).domain : Set H) := hDense
    have h := LinearPMap.adjoint_isFormalAdjoint hPDense ⟨y, hy⟩ x
    change inner ℂ ((leftUnitary D U).adjoint ⟨y, hy⟩) x =
      inner ℂ y (U (D x)) at h
    rw [← hUnit y (D x)] at h
    exact h
  · intro hy
    apply LinearPMap.mem_adjoint_domain_of_exists
    refine ⟨D.adjoint ⟨U.symm y, hy⟩, ?_⟩
    intro x
    have h := LinearPMap.adjoint_isFormalAdjoint hDense ⟨U.symm y, hy⟩ x
    change inner ℂ (D.adjoint ⟨U.symm y, hy⟩) x = inner ℂ y (U (D x))
    rw [← hUnit y (D x)]
    exact h

theorem left_unitary_square_domain
    (D : H →ₗ.[ℂ] H) (U : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (U x) (U y) = inner ℂ x y) :
    (positiveSquare (leftUnitary D U)).domain = (positiveSquare D).domain := by
  ext x
  rw [mem_positiveSquare_domain_draft, mem_positiveSquare_domain_draft]
  constructor
  · rintro ⟨hx, hh⟩
    have hd : x ∈ D.domain := hx
    refine ⟨hd, ?_⟩
    have hy : U (D ⟨x, hd⟩) ∈ (leftUnitary D U).adjoint.domain := by
      simpa [leftUnitary] using hh
    have h := (left_unitary_adjoint_domain D U hDense hIso _).mp hy
    simpa using h
  · rintro ⟨hx, hh⟩
    have hp : x ∈ (leftUnitary D U).domain := hx
    refine ⟨hp, ?_⟩
    have h : U.symm (U (D ⟨x, hx⟩)) ∈ D.adjoint.domain := by simpa using hh
    have hy := (left_unitary_adjoint_domain D U hDense hIso _).mpr h
    simpa [leftUnitary] using hy

theorem left_unitary_adjoint_action
    (D : H →ₗ.[ℂ] H) (U : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (U x) (U y) = inner ℂ x y)
    (y : H) (hy : y ∈ D.adjoint.domain) :
    (leftUnitary D U).adjoint ⟨U y,
      (left_unitary_adjoint_domain D U hDense hIso _).mpr (by simpa using hy)⟩ =
      D.adjoint ⟨y, hy⟩ := by
  have hPDense : Dense ((leftUnitary D U).domain : Set H) := hDense
  apply LinearPMap.adjoint_apply_eq hPDense
  intro x
  have h := LinearPMap.adjoint_isFormalAdjoint hDense ⟨y, hy⟩ x
  change inner ℂ (D.adjoint ⟨y, hy⟩) (x : H) = inner ℂ (U y) (U (D x))
  rw [hIso]
  exact h

theorem left_unitary_positive_square
    (D : H →ₗ.[ℂ] H) (U : H ≃ₗ[ℂ] H)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (U x) (U y) = inner ℂ x y) :
    positiveSquare (leftUnitary D U) = positiveSquare D := by
  apply LinearPMap.ext
  · exact left_unitary_square_domain D U hDense hIso
  · intro x hxP hxD
    obtain ⟨hx, hy⟩ := (mem_positiveSquare_domain_draft D x).mp hxD
    change (leftUnitary D U).adjoint ⟨U (D ⟨x, hx⟩), _⟩ =
      D.adjoint ⟨D ⟨x, hx⟩, hy⟩
    exact left_unitary_adjoint_action D U hDense hIso _ hy

end PairedDirac

#print axioms PairedDirac.left_unitary_adjoint_domain
#print axioms PairedDirac.left_unitary_square_domain
#print axioms PairedDirac.left_unitary_adjoint_action
#print axioms PairedDirac.left_unitary_positive_square

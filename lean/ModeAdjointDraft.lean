import ModeOperatorDraft

/-! Development draft: the formal adjoint of the bounded mode perturbation.
The equality of closed adjoints and physical hypotheses remain to be proved. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

noncomputable def modeAdjointCandidate (D : H →ₗ.[ℂ] H)
    (G : H →ₗ[ℂ] H) (a : ℂ) : H →ₗ.[ℂ] H where
  domain := D.adjoint.domain
  toFun := D.adjoint.toFun + (star a) • G.comp D.adjoint.domain.subtype

/-- The Green identity for a self-adjoint fiber map and its complex
conjugate mode coefficient. This is an inclusion step, not adjoint equality. -/
theorem mode_formal_adjoint_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y)) :
    (modeOperator D G a).IsFormalAdjoint (modeAdjointCandidate D G a) := by
  intro x y
  change inner ℂ (D ⟨x, x.property⟩ + a • G (x : H)) (y : H) =
    inner ℂ (x : H) (D.adjoint ⟨y, y.property⟩ + star a • G (y : H))
  rw [inner_add_left, inner_add_right, inner_smul_left, inner_smul_right]
  rw [(LinearPMap.adjoint_isFormalAdjoint hDense).symm ⟨x, x.property⟩ ⟨y, y.property⟩]
  rw [hSymm]
  rfl

/-- The checked formal identity gives one inclusion of the actual adjoint. -/
theorem mode_adjoint_forward_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y)) :
    modeAdjointCandidate D G a ≤ (modeOperator D G a).adjoint := by
  apply LinearPMap.IsFormalAdjoint.le_adjoint
  · simpa [modeOperator] using hDense
  · exact mode_formal_adjoint_draft D G a hDense hSymm

/-- Remove the bounded-mode contribution from the Green witness. -/
theorem mode_adjoint_domain_reverse_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y)) :
    (modeOperator D G a).adjoint.domain ≤ D.adjoint.domain := by
  intro y hy
  let P := modeOperator D G a
  have hPDense : Dense (P.domain : Set H) := hDense
  apply LinearPMap.mem_adjoint_domain_of_exists
  refine ⟨P.adjoint ⟨y, hy⟩ - (star a) • G y, ?_⟩
  intro z
  let x : P.domain := ⟨z, z.property⟩
  have hg := LinearPMap.adjoint_isFormalAdjoint hPDense ⟨y, hy⟩ x
  change inner ℂ (P.adjoint ⟨y, hy⟩ - (star a) • G y) (z : H) =
    inner ℂ y (D z)
  rw [inner_sub_left, inner_smul_left, hSymm]
  change inner ℂ (P.adjoint ⟨y, hy⟩) (z : H) =
    inner ℂ y (D z + a • G z) at hg
  rw [hg, inner_add_right, inner_smul_right]
  simp

/-- Actual adjoint equality for the mode perturbation. -/
theorem mode_adjoint_eq_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y)) :
    (modeOperator D G a).adjoint = modeAdjointCandidate D G a := by
  have hf := mode_adjoint_forward_draft D G a hDense hSymm
  have hr := mode_adjoint_domain_reverse_draft D G a hDense hSymm
  apply Eq.symm
  apply LinearPMap.eq_of_le_of_domain_eq hf
  exact le_antisymm hf.1 hr

end PairedDirac

#print axioms PairedDirac.mode_formal_adjoint_draft

#print axioms PairedDirac.mode_adjoint_eq_draft

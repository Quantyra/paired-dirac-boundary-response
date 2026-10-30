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

end PairedDirac

#print axioms PairedDirac.mode_formal_adjoint_draft

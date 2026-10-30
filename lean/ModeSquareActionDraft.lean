import ModeAdjointDraft

/-! Development draft for the mode square action on its actual domain.
Geometric chirality and domain hypotheses are explicit and unproved here. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- Pointwise action of the positive mode square, for an imaginary mode
coefficient and an intertwining involution. -/
theorem mode_square_action_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y))
    (hG : ∀ x ∈ D.domain, G x ∈ D.adjoint.domain)
    (hInt : ∀ x : D.domain, D.adjoint ⟨G x, hG x x.property⟩ = G (D x))
    (hInv : ∀ x : H, G (G x) = x)
    (ha : star a = -a)
    (x : D.domain) (hx : D x ∈ D.adjoint.domain) :
    let P := modeOperator D G a
    let hp : P x ∈ P.adjoint.domain := by
      rw [mode_adjoint_eq_draft D G a hDense hSymm]
      change D x + a • G x ∈ D.adjoint.domain
      exact D.adjoint.domain.add_mem hx (D.adjoint.domain.smul_mem a (hG x x.property))
    P.adjoint ⟨P x, hp⟩ = D.adjoint ⟨D x, hx⟩ - (a * a) • (x : H) := by
  dsimp only
  have hmem : (modeOperator D G a) x ∈ (modeAdjointCandidate D G a).domain := by
    change D x + a • G x ∈ D.adjoint.domain
    exact D.adjoint.domain.add_mem hx (D.adjoint.domain.smul_mem a (hG x x.property))
  have hact : (modeOperator D G a) x ∈ (modeOperator D G a).adjoint.domain := by
    rw [mode_adjoint_eq_draft D G a hDense hSymm]
    exact hmem
  have heval : (modeOperator D G a).adjoint ⟨(modeOperator D G a) x, hact⟩ =
      modeAdjointCandidate D G a ⟨(modeOperator D G a) x, hmem⟩ := by
    exact ((mode_adjoint_forward_draft D G a hDense hSymm).2 rfl).symm
  rw [heval]
  have hsum : D x + a • G x ∈ D.adjoint.domain :=
    D.adjoint.domain.add_mem hx (D.adjoint.domain.smul_mem a (hG x x.property))
  change D.adjoint ⟨D x + a • G x, hsum⟩ + star a • G (D x + a • G x) = _
  have hsub : (⟨D x + a • G x, hsum⟩ : D.adjoint.domain) =
      ⟨D x, hx⟩ + a • ⟨G x, hG x x.property⟩ := by
    ext
    simp
  rw [hsub, map_add, map_smul, hInt, ha, map_add, map_smul, hInv]
  simp only [neg_smul, smul_add, smul_smul]
  abel

end PairedDirac

#print axioms PairedDirac.mode_square_action_draft

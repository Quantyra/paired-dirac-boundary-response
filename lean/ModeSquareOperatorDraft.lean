import ModeSquareActionDraft
import PositiveSquareDraft

/-! Draft operator-level mode square identity. The analytic and geometric
hypotheses remain explicit; this file requires a GCP Lean check. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The actual mode square equals the original square plus the scalar
mode shift, including equality of their composition domains. -/
theorem mode_positive_square_operator_draft
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (a : ℂ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y))
    (hG : ∀ x ∈ D.domain, G x ∈ D.adjoint.domain)
    (hInt : ∀ x : D.domain, D.adjoint ⟨G x, hG x x.property⟩ = G (D x))
    (hInv : ∀ x : H, G (G x) = x)
    (ha : star a = -a) :
    positiveSquare (modeOperator D G a) =
      modeOperator (positiveSquare D) LinearMap.id (-(a * a)) := by
  apply LinearPMap.ext
  · rw [positiveSquare_domain_draft, mode_square_domain_from_adjoint_draft D G a hDense hSymm hG]
    change squareDomain D = (positiveSquare D).domain
    exact (positiveSquare_domain_draft D).symm
  · intro x hxP hxR
    have hxSq : x ∈ squareDomain D := by
      have hdom := mode_square_domain_from_adjoint_draft D G a hDense hSymm hG
      have hxMode : x ∈ squareDomain (modeOperator D G a) := by
        rw [← positiveSquare_domain_draft]
        exact hxP
      rw [hdom] at hxMode
      exact hxMode
    obtain ⟨hxD, hxA⟩ := (mem_squareDomain_draft D x).mp hxSq
    have h := mode_square_action_draft D G a hDense hSymm hG hInt hInv ha ⟨x,hxD⟩ hxA
    change (modeOperator D G a).adjoint ⟨(modeOperator D G a) ⟨x,hxD⟩, _⟩ =
      D.adjoint ⟨D ⟨x,hxD⟩, hxA⟩ + (-(a*a)) • x
    simpa [sub_eq_add_neg, neg_smul] using h

end PairedDirac

#print axioms PairedDirac.mode_positive_square_operator_draft

import ModeSquareOperatorDraft

/-! Real-frequency specialization. The geometric intertwining and domain
hypotheses remain explicit; this is not a physical-domain certificate. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem mode_positive_square_real_frequency
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (μ : ℝ)
    (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (G x) y = inner ℂ x (G y))
    (hG : ∀ x ∈ D.domain, G x ∈ D.adjoint.domain)
    (hInt : ∀ x : D.domain, D.adjoint ⟨G x, hG x x.property⟩ = G (D x))
    (hInv : ∀ x : H, G (G x) = x) :
    positiveSquare (modeOperator D G ((μ : ℂ) * Complex.I)) =
      modeOperator (positiveSquare D) LinearMap.id ((μ : ℂ) * (μ : ℂ)) := by
  have ha : star ((μ : ℂ) * Complex.I) = -((μ : ℂ) * Complex.I) := by
    simp
  have hs : -(((μ : ℂ) * Complex.I) * ((μ : ℂ) * Complex.I)) =
      (μ : ℂ) * (μ : ℂ) := by
    have hi : Complex.I * Complex.I = -1 := Complex.I_mul_I
    calc
      -(((μ : ℂ) * Complex.I) * ((μ : ℂ) * Complex.I)) =
          -(((μ : ℂ) * (μ : ℂ)) * (Complex.I * Complex.I)) := by ring
      _ = (μ : ℂ) * (μ : ℂ) := by rw [hi]; ring
  simpa only [hs] using
    mode_positive_square_operator_draft D G ((μ : ℂ) * Complex.I)
      hDense hSymm hG hInt hInv ha

end PairedDirac

#print axioms PairedDirac.mode_positive_square_real_frequency
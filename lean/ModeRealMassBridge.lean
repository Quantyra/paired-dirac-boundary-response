import LeftUnitarySquare
import ModeOperatorDraft

/-! Exact left-unitary conversion of a paired angular mode into a real-mass
endpoint. Physical product realization and trace matching are not assumed. -/
namespace PairedDirac
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem left_unitary_mode_endpoint
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (U : H ≃ₗ[ℂ] H) (m : ℝ)
    (hUG : ∀ x : H, U (G x) = (-Complex.I) • x) :
    leftUnitary (modeOperator D G (Complex.I * (m : ℂ))) U =
      modeOperator (leftUnitary D U) LinearMap.id (m : ℂ) := by
  apply LinearPMap.ext
  · rfl
  · intro x hx hy
    change U (D ⟨x, hx⟩ + (Complex.I * (m : ℂ)) • G x) =
      U (D ⟨x, hx⟩) + (m : ℂ) • x
    rw [map_add, map_smul, hUG, smul_smul]
    have hc : (Complex.I * (m : ℂ)) * (-Complex.I) = (m : ℂ) := by
      ring_nf
      simp
    rw [hc]

theorem mode_endpoint_positive_square
    (D : H →ₗ.[ℂ] H) (G : H →ₗ[ℂ] H) (U : H ≃ₗ[ℂ] H) (m : ℝ)
    (hDense : Dense (D.domain : Set H))
    (hIso : ∀ x y : H, inner ℂ (U x) (U y) = inner ℂ x y)
    (hUG : ∀ x : H, U (G x) = (-Complex.I) • x) :
    positiveSquare (modeOperator (leftUnitary D U) LinearMap.id (m : ℂ)) =
      positiveSquare (modeOperator D G (Complex.I * (m : ℂ))) := by
  rw [← left_unitary_mode_endpoint D G U m hUG]
  exact left_unitary_positive_square _ U hDense hIso
end PairedDirac
#print axioms PairedDirac.left_unitary_mode_endpoint
#print axioms PairedDirac.mode_endpoint_positive_square

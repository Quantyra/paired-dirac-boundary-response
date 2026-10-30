import PairedDirac

/-! Algebraic transport of a congruence between two Hilbert-space
representatives. This does not establish the physical unitary, domains,
adjoints, heat traces, or paper certification. -/

namespace PairedDirac

variable {H K : Type*} [AddCommGroup H] [Module ℂ H]
  [AddCommGroup K] [Module ℂ K]

theorem transported_congruence_action
    (U : H ≃ₗ[ℂ] K) (E : H ≃ₗ[ℂ] H) (F : K ≃ₗ[ℂ] K)
    (D : H →ₗ[ℂ] H)
    (h : ∀ x, U (E x) = F (U x)) (x : K) :
    U (E (D (E (U.symm x)))) = F (U (D (U.symm (F x)))) := by
  have hx : E (U.symm x) = U.symm (F x) := by
    apply U.injective
    simpa using h (U.symm x)
  rw [hx, h]

end PairedDirac

#print axioms PairedDirac.transported_congruence_action

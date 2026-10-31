import GraphBoundsComposedDraft

/-! Concrete coefficient bookkeeping for the manuscript's scalar
congruence graph estimates. The multiplier norms and product-rule
commutator bounds are explicit hypotheses; they must be proved for the
physical Sobolev multiplier before these are called physical estimates.
This file is checked only on GCP. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace ℂ H]

theorem scalar_congruence_graph_bounds_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃L[ℂ] H) (C : H →L[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hC : ∀ x : D.domain,
      D ⟨E x, hE x x.property⟩ = E (D x) + C x)
    (B G : ℝ) (hB : 0 ≤ B) (hG : 0 ≤ G)
    (hE_norm : ‖E.toContinuousLinearMap‖ ≤ Real.exp (B / 2))
    (hEinv_norm : ‖E.symm.toContinuousLinearMap‖ ≤ Real.exp (B / 2))
    (hC_norm : ‖C‖ ≤ Real.exp (B / 2) * (G / 2))
    (hEinvC : ∀ x : H,
      ‖E.symm (C x)‖ ≤ (G / 2) * ‖x‖)
    (x : D.domain) :
    ‖(congruence D E.toLinearEquiv hE) x‖ ≤
        Real.exp B * (‖D x‖ + (G / 2) * ‖(x : H)‖) ∧
      ‖D x‖ ≤ Real.exp B *
          ‖(congruence D E.toLinearEquiv hE) x‖ +
        (G / 2) * ‖(x : H)‖ := by
  have hExp : Real.exp (B / 2) * Real.exp (B / 2) = Real.exp B := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hE_sq : ‖E.toContinuousLinearMap‖ ^ 2 ≤ Real.exp B := by
    calc
      ‖E.toContinuousLinearMap‖ ^ 2 ≤ Real.exp (B / 2) ^ 2 := by
        nlinarith [mul_nonneg
          (sub_nonneg.mpr hE_norm)
          (add_nonneg (norm_nonneg E.toContinuousLinearMap)
            (by positivity : 0 ≤ Real.exp (B / 2)))]
      _ = Real.exp B := by simpa [pow_two] using hExp
  have hEinv_sq : ‖E.symm.toContinuousLinearMap‖ ^ 2 ≤ Real.exp B := by
    calc
      ‖E.symm.toContinuousLinearMap‖ ^ 2 ≤ Real.exp (B / 2) ^ 2 := by
        nlinarith [mul_nonneg
          (sub_nonneg.mpr hEinv_norm)
          (add_nonneg (norm_nonneg E.symm.toContinuousLinearMap)
            (by positivity : 0 ≤ Real.exp (B / 2)))]
      _ = Real.exp B := by simpa [pow_two] using hExp
  have hEC_prod :
      ‖E.toContinuousLinearMap‖ * ‖C‖ ≤ Real.exp B * (G / 2) := by
    calc
      ‖E.toContinuousLinearMap‖ * ‖C‖ ≤
          Real.exp (B / 2) * (Real.exp (B / 2) * (G / 2)) :=
        mul_le_mul hE_norm hC_norm (norm_nonneg C) (by positivity)
      _ = (Real.exp (B / 2) * Real.exp (B / 2)) * (G / 2) := by ring
      _ = Real.exp B * (G / 2) := by rw [hExp]
  constructor
  · calc
      ‖(congruence D E.toLinearEquiv hE) x‖ ≤
          ‖E.toContinuousLinearMap‖ ^ 2 * ‖D x‖ +
            ‖E.toContinuousLinearMap‖ * ‖C‖ * ‖(x : H)‖ :=
        congruence_graph_upper_draft D E C hE hC x
      _ ≤ Real.exp B * ‖D x‖ +
          (Real.exp B * (G / 2)) * ‖(x : H)‖ :=
        add_le_add
          (mul_le_mul_of_nonneg_right hE_sq (norm_nonneg _))
          (mul_le_mul_of_nonneg_right hEC_prod (norm_nonneg _))
      _ = Real.exp B * (‖D x‖ + (G / 2) * ‖(x : H)‖) := by ring
  · calc
      ‖D x‖ ≤
          ‖E.symm.toContinuousLinearMap‖ ^ 2 *
              ‖(congruence D E.toLinearEquiv hE) x‖ +
            (G / 2) * ‖(x : H)‖ :=
        congruence_graph_lower_composed_draft D E C hE hC
          (G / 2) hEinvC x
      _ ≤ Real.exp B *
            ‖(congruence D E.toLinearEquiv hE) x‖ +
          (G / 2) * ‖(x : H)‖ :=
        add_le_add
          (mul_le_mul_of_nonneg_right hEinv_sq (norm_nonneg _))
          (le_refl _)

end PairedDirac

#print axioms PairedDirac.scalar_congruence_graph_bounds_draft

import GraphBoundsDraft

/-! Unverified draft: sharpen the reverse graph estimate using a bound on
    the composed inverse-multiplier commutator. Check only on GCP. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace ℂ H]

theorem congruence_graph_lower_composed_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃L[ℂ] H) (C : H →L[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hC : ∀ x : D.domain, D ⟨E x, hE x x.property⟩ = E (D x) + C x)
    (K : ℝ) (hEC : ∀ x : H, ‖E.symm (C x)‖ ≤ K * ‖x‖)
    (x : D.domain) :
    ‖D x‖ ≤ ‖E.symm.toContinuousLinearMap‖ ^ 2 *
      ‖(congruence D E.toLinearEquiv hE) x‖ + K * ‖(x : H)‖ := by
  have hid : D x =
      E.symm (E.symm ((congruence D E.toLinearEquiv hE) x)) - E.symm (C x) := by
    change D x = E.symm (E.symm (E (D ⟨E x, hE x x.property⟩))) - E.symm (C x)
    rw [hC x]
    simp only [ContinuousLinearEquiv.symm_apply_apply, map_add, add_sub_cancel_right]
  rw [hid]
  calc
    ‖E.symm (E.symm ((congruence D E.toLinearEquiv hE) x)) - E.symm (C x)‖ ≤
        ‖E.symm (E.symm ((congruence D E.toLinearEquiv hE) x))‖ + ‖E.symm (C x)‖ :=
      norm_sub_le _ _
    _ ≤ ‖E.symm.toContinuousLinearMap‖ *
        (‖E.symm.toContinuousLinearMap‖ *
          ‖(congruence D E.toLinearEquiv hE) x‖) + K * ‖(x : H)‖ := by
      apply add_le_add
      · exact (E.symm.toContinuousLinearMap.le_opNorm _).trans
          (mul_le_mul_of_nonneg_left (E.symm.toContinuousLinearMap.le_opNorm _)
            (norm_nonneg _))
      · exact hEC x
    _ = _ := by ring

end PairedDirac

#print axioms PairedDirac.congruence_graph_lower_composed_draft

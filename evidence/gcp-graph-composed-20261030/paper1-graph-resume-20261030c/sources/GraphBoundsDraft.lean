import PairedDirac

/-! Development draft: graph estimates from a bounded commutator. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace ℂ H]

/-- The upper graph estimate under a specified bounded commutator. -/
theorem congruence_graph_upper_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃L[ℂ] H) (C : H →L[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hC : ∀ x : D.domain, D ⟨E x, hE x x.property⟩ = E (D x) + C x)
    (x : D.domain) :
    ‖(congruence D E.toLinearEquiv hE) x‖ ≤
      ‖E.toContinuousLinearMap‖ ^ 2 * ‖D x‖ +
        ‖E.toContinuousLinearMap‖ * ‖C‖ * ‖(x : H)‖ := by
  change ‖E (D ⟨E x, hE x x.property⟩)‖ ≤ _
  rw [hC x]
  calc
    ‖E (E (D x) + C x)‖ ≤
        ‖E.toContinuousLinearMap‖ * ‖E (D x) + C x‖ :=
      E.toContinuousLinearMap.le_opNorm _
    _ ≤ ‖E.toContinuousLinearMap‖ * (‖E (D x)‖ + ‖C x‖) :=
      mul_le_mul_of_nonneg_left (norm_add_le _ _) (norm_nonneg _)
    _ ≤ ‖E.toContinuousLinearMap‖ *
        (‖E.toContinuousLinearMap‖ * ‖D x‖ + ‖C‖ * ‖(x : H)‖) := by
      gcongr
      · exact E.toContinuousLinearMap.le_opNorm _
      · exact C.le_opNorm _
    _ = _ := by ring

/-- The reverse graph estimate under the same commutator assumption. -/
theorem congruence_graph_lower_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃L[ℂ] H) (C : H →L[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hC : ∀ x : D.domain, D ⟨E x, hE x x.property⟩ = E (D x) + C x)
    (x : D.domain) :
    ‖D x‖ ≤ ‖E.symm.toContinuousLinearMap‖ ^ 2 *
      ‖(congruence D E.toLinearEquiv hE) x‖ +
      ‖E.symm.toContinuousLinearMap‖ * ‖C‖ * ‖(x : H)‖ := by
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
          ‖(congruence D E.toLinearEquiv hE) x‖) +
        ‖E.symm.toContinuousLinearMap‖ * (‖C‖ * ‖(x : H)‖) := by
      gcongr
      · exact (E.symm.toContinuousLinearMap.le_opNorm _).trans
          (mul_le_mul_of_nonneg_left (E.symm.toContinuousLinearMap.le_opNorm _) (norm_nonneg _))
      · exact (E.symm.toContinuousLinearMap.le_opNorm _).trans
          (mul_le_mul_of_nonneg_left (C.le_opNorm _) (norm_nonneg _))
    _ = _ := by ring

end PairedDirac

#print axioms PairedDirac.congruence_graph_upper_draft
#print axioms PairedDirac.congruence_graph_lower_draft
import MassSkewScalingDraft

/-! GCP-only unverified draft. A nonzero scalar multiple of a closed
partially defined operator is closed. The scaled adjoint identity is separate. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem scaled_operator_closed_draft
    (Q : H →ₗ.[ℂ] H) (hClosed : Q.IsClosed)
    (c : ℂ) (hc : c ≠ 0) : (c • Q).IsClosed := by
  change IsClosed (Q.graph : Set (H × H)) at hClosed
  change IsClosed ((c • Q).graph : Set (H × H))
  have hgraph : ((c • Q).graph : Set (H × H)) =
      (fun p : H × H => (p.1, c⁻¹ • p.2)) ⁻¹' (Q.graph : Set (H × H)) := by
    ext p
    simp only [Set.mem_preimage, LinearPMap.mem_graph_iff]
    constructor
    · rintro ⟨x, hx, hy⟩
      refine ⟨x, hx, ?_⟩
      change c • Q x = p.2 at hy
      rw [← hy, smul_smul, inv_mul_cancel₀ hc, one_smul]
    · rintro ⟨x, hx, hy⟩
      refine ⟨x, hx, ?_⟩
      change c • Q x = p.2
      rw [hy, smul_smul, mul_inv_cancel₀ hc, one_smul]
  rw [hgraph]
  exact hClosed.preimage (continuous_fst.prodMk (continuous_const.smul continuous_snd))

end PairedDirac

#print axioms PairedDirac.scaled_operator_closed_draft

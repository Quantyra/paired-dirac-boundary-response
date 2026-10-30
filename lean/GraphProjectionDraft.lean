import PositiveSquareDraft

/-! Development draft for the graph projection that makes I + D†D onto. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- Project (f,0) onto the graph and obtain the variational identity. -/
theorem graph_projection_identity_draft
    (D : H →ₗ.[ℂ] H) (hClosed : D.IsClosed) (f : H) :
    ∃ u : D.domain, ∀ v : D.domain,
      inner ℂ (f - (u : H)) (v : H) = inner ℂ (D u) (D v) := by
  let G : Submodule ℂ (WithLp 2 (H × H)) :=
    D.graph.comap (WithLp.linearEquiv 2 ℂ (H × H)).toLinearMap
  have hG : IsClosed (G : Set (WithLp 2 (H × H))) := by
    change IsClosed ((fun z : WithLp 2 (H × H) => WithLp.ofLp z) ⁻¹' (D.graph : Set (H × H)))
    exact hClosed.preimage (WithLp.prod_continuous_ofLp 2 H H)
  letI : CompleteSpace G := hG.completeSpace_coe
  obtain ⟨p, hp, horth⟩ :=
    Submodule.HasOrthogonalProjection.exists_orthogonal (K := G) (WithLp.toLp 2 (f, 0))
  have hpg : WithLp.ofLp p ∈ D.graph := hp
  obtain ⟨u, hu, hdu⟩ := (LinearPMap.mem_graph_iff _).mp hpg
  refine ⟨u, ?_⟩
  intro v
  have hv : WithLp.toLp 2 ((v : H), D v) ∈ G := by
    change ((v : H), D v) ∈ D.graph
    exact D.mem_graph v
  have h := (G.mem_orthogonal' _).mp horth _ hv
  simp only [WithLp.prod_inner_apply, map_sub, WithLp.ofLp_toLp,
    Prod.fst_sub, Prod.snd_sub, Prod.fst_zero, Prod.snd_zero] at h
  rw [← hu, ← hdu] at h
  simpa [inner_sub_left, inner_neg_left, sub_eq_add_neg] using h

end PairedDirac

#print axioms PairedDirac.graph_projection_identity_draft
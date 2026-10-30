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
  simp only [WithLp.prod_inner_apply, WithLp.ofLp_sub, WithLp.ofLp_toLp,
    Prod.fst_sub, Prod.snd_sub, Prod.fst_zero, Prod.snd_zero] at h
  rw [← hu, ← hdu] at h
  have h' : inner ℂ (f - (u : H)) (v : H) - inner ℂ (D u) (D v) = 0 := by
    simpa [inner_neg_left, sub_eq_add_neg] using h
  exact sub_eq_zero.mp h'

end PairedDirac

#print axioms PairedDirac.graph_projection_identity_draft
namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The shifted natural adjoint square is onto. -/
theorem positiveSquare_add_one_surjective_draft
    (D : H →ₗ.[ℂ] H) (hClosed : D.IsClosed)
    (hDense : Dense (D.domain : Set H)) (f : H) :
    ∃ x : (positiveSquare D).domain, (x : H) + (positiveSquare D) x = f := by
  obtain ⟨u, hu⟩ := graph_projection_identity_draft D hClosed f
  have hDu : D u ∈ D.adjoint.domain :=
    LinearPMap.mem_adjoint_domain_of_exists _ ⟨f - (u : H), hu⟩
  have hx : (u : H) ∈ (positiveSquare D).domain :=
    (mem_positiveSquare_domain_draft D u).mpr ⟨u.property, hDu⟩
  let x : (positiveSquare D).domain := ⟨u, hx⟩
  have hvalue : D.adjoint ⟨D u, hDu⟩ = f - (u : H) :=
    LinearPMap.adjoint_apply_eq hDense _ hu
  refine ⟨x, ?_⟩
  change (u : H) + D.adjoint ⟨D u, hDu⟩ = f
  rw [hvalue]
  simp [add_comm]

end PairedDirac

#print axioms PairedDirac.positiveSquare_add_one_surjective_draft
namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The actual square domain is dense for a closed densely defined D. -/
theorem positiveSquare_dense_draft
    (D : H →ₗ.[ℂ] H) (hClosed : D.IsClosed)
    (hDense : Dense (D.domain : Set H)) :
    Dense ((positiveSquare D).domain : Set H) := by
  let K := (positiveSquare D).domain
  have hbot : Kᗮ = ⊥ := by
    apply eq_bot_iff.mpr
    intro f hf
    change f = 0
    obtain ⟨x, hfx⟩ := positiveSquare_add_one_surjective_draft D hClosed hDense f
    have horth : inner ℂ f (x : H) = 0 :=
      (K.mem_orthogonal' f).mp hf x x.property
    have hre : Complex.re (inner ℂ (x : H) (x : H)) +
        Complex.re (inner ℂ ((positiveSquare D) x) (x : H)) = 0 := by
      have h := congrArg Complex.re horth
      simpa [← hfx, inner_add_left] using h
    have hnonneg := positiveSquare_nonneg_draft D hDense x
    have hxle : Complex.re (inner ℂ (x : H) (x : H)) ≤ 0 := by linarith
    have hxzero : (x : H) = 0 := (re_inner_self_nonpos (𝕜 := ℂ)).mp hxle
    have hx : x = 0 := Subtype.ext hxzero
    simpa [hx] using hfx.symm
  apply Submodule.dense_iff_topologicalClosure_eq_top.mpr
  apply (Submodule.orthogonal_eq_bot_iff).mp
  simpa [K] using hbot

end PairedDirac

#print axioms PairedDirac.positiveSquare_dense_draft
namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- The adjoint of the square has no additional domain vectors. -/
theorem positiveSquare_adjoint_domain_reverse_draft
    (D : H →ₗ.[ℂ] H) (hClosed : D.IsClosed)
    (hDense : Dense (D.domain : Set H)) :
    (positiveSquare D).adjoint.domain ≤ (positiveSquare D).domain := by
  let P := positiveSquare D
  have hPDense : Dense (P.domain : Set H) := positiveSquare_dense_draft D hClosed hDense
  intro y hy
  let z : H := P.adjoint ⟨y, hy⟩
  obtain ⟨u, hu⟩ := positiveSquare_add_one_surjective_draft D hClosed hDense (y + z)
  have hyu : y = (u : H) := by
    apply sub_eq_zero.mp
    apply (inner_self_eq_zero (𝕜 := ℂ)).mp
    obtain ⟨v, hv⟩ := positiveSquare_add_one_surjective_draft D hClosed hDense (y - (u : H))
    have hadj : inner ℂ z (v : H) = inner ℂ y (P v) :=
      LinearPMap.adjoint_isFormalAdjoint hPDense ⟨y, hy⟩ v
    have hsym : inner ℂ (P u) (v : H) = inner ℂ (u : H) (P v) :=
      positiveSquare_symmetric_draft D hDense u v
    have hzero : inner ℂ (y - (u : H)) ((v : H) + P v) = 0 := by
      calc
        inner ℂ (y - (u : H)) ((v : H) + P v) =
            inner ℂ (y + z) (v : H) - inner ℂ ((u : H) + P u) (v : H) := by
          simp only [inner_sub_left, inner_add_right, inner_add_left]
          rw [← hadj, ← hsym]
          abel
        _ = 0 := by rw [hu]; simp
    simpa [hv] using hzero
  simpa [hyu] using u.property

/-- The actual adjoint square is self-adjoint. -/
theorem positiveSquare_selfAdjoint_draft
    (D : H →ₗ.[ℂ] H) (hClosed : D.IsClosed)
    (hDense : Dense (D.domain : Set H)) :
    (positiveSquare D).adjoint = positiveSquare D := by
  have hPDense := positiveSquare_dense_draft D hClosed hDense
  have hf := positiveSquare_le_adjoint_draft D hDense hPDense
  have hr := positiveSquare_adjoint_domain_reverse_draft D hClosed hDense
  apply Eq.symm
  apply LinearPMap.eq_of_le_of_domain_eq hf
  exact le_antisymm hf.1 hr

end PairedDirac

#print axioms PairedDirac.positiveSquare_adjoint_domain_reverse_draft
#print axioms PairedDirac.positiveSquare_selfAdjoint_draft
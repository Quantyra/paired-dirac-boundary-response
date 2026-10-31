import GraphProjectionDraft
import PartnerSkewOperatorDraft

/-! Unchecked GCP-only draft: derive surjectivity of the unit first-order
shift from the natural positive-square graph projection. The physical
skew-adjoint identity and general mass scaling remain separate. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem skew_add_one_surjective_draft
    (Q : H →ₗ.[ℂ] H) (hClosed : Q.IsClosed)
    (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q) (f : H) :
    ∃ x : Q.domain, (x : H) + Q x = f := by
  obtain ⟨u, hu⟩ := positiveSquare_add_one_surjective_draft Q hClosed hDense f
  let u₀ : Q.domain := ⟨(u : H), u.property.2⟩
  have hAdj : Q u₀ ∈ Q.adjoint.domain := by
    obtain ⟨hx, hqx⟩ := (mem_positiveSquare_domain_draft Q u).mp u.property
    exact hqx
  have hQu : Q u₀ ∈ Q.domain := by
    simpa [hSkew, negativePMap] using hAdj
  let qu : Q.domain := ⟨Q u₀, hQu⟩
  have hSquare : (positiveSquare Q) u = - Q qu := by
    change Q.adjoint ⟨Q u₀, hAdj⟩ = - Q qu
    simpa [negativePMap] using
      ((LinearPMap.ext_iff.mp hSkew).2 (hf := hAdj) (hg := hQu))
  let x : Q.domain := u₀ - qu
  refine ⟨x, ?_⟩
  have hx : Q x = Q u₀ - Q qu := by
    change Q.toFun (u₀ - qu) = Q.toFun u₀ - Q.toFun qu
    exact map_sub Q.toFun u₀ qu
  rw [hSquare] at hu
  change ((u₀ : H) - (qu : H)) + Q x = f
  rw [hx]
  change (u : H) - Q u₀ + (Q u₀ - Q qu) = f
  abel_nf at hu ⊢
  exact hu

end PairedDirac

#print axioms PairedDirac.skew_add_one_surjective_draft

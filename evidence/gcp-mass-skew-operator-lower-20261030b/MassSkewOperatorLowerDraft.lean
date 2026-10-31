import MassSkewLowerDraft
import PartnerSkewOperatorDraft

/-! GCP-only unverified draft: apply the mass lower bound to an abstract
skew-adjoint partially defined operator. Physical hypotheses remain open. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem skew_real_inner_zero_draft
    (Q : H →ₗ.[ℂ] H) (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q) (x : Q.domain) :
    (inner ℂ (Q x) (x : H)).re = 0 := by
  have hAdj : (x : H) ∈ Q.adjoint.domain := by
    simpa [hSkew, negativePMap] using x.property
  have hAction : Q.adjoint ⟨(x : H), hAdj⟩ = - Q x := by
    simpa [negativePMap] using
      ((LinearPMap.ext_iff.mp hSkew).2 (hf := hAdj) (hg := x.property))
  have h := LinearPMap.adjoint_isFormalAdjoint hDense ⟨(x : H), hAdj⟩ x
  rw [hAction] at h
  have hre := congrArg Complex.re h
  have hsym : (inner ℂ (x : H) (Q x)).re = (inner ℂ (Q x) (x : H)).re := by
    rw [← inner_conj_symm]
    simp
  simp only [inner_neg_left, Complex.neg_re] at hre
  rw [hsym] at hre
  linarith

theorem skew_mass_lower_draft
    (Q : H →ₗ.[ℂ] H) (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q) (m : ℝ) (hm : 0 < m)
    (x : Q.domain) :
    m * ‖(x : H)‖ ≤ ‖(m : ℂ) • (x : H) + Q x‖ :=
  mass_skew_lower_bound_draft m (x : H) (Q x) hm
    (skew_real_inner_zero_draft Q hDense hSkew x)

end PairedDirac

#print axioms PairedDirac.skew_mass_lower_draft

import RealScaledSkewAdjointDraft
import MassSkewOperatorLowerDraft

/-! GCP-only development draft: assemble the abstract positive-mass
surjectivity and a priori bound from closedness and skew-adjointness of Q.
Physical identification of Q remains separate. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem mass_shift_surjective_from_skew_draft
    (Q : H →ₗ.[ℂ] H) (hClosed : Q.IsClosed)
    (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q)
    (m : ℝ) (hm : 0 < m) (f : H) :
    ∃ x : Q.domain, (m : ℂ) • (x : H) + Q x = f := by
  have hmInv : m⁻¹ ≠ 0 := inv_ne_zero (ne_of_gt hm)
  have hmInvC : (m : ℂ)⁻¹ ≠ 0 := by exact_mod_cast (inv_ne_zero (ne_of_gt hm))
  have hClosedR : (((m : ℂ)⁻¹ • Q) : H →ₗ.[ℂ] H).IsClosed :=
    scaled_operator_closed_draft Q hClosed _ hmInvC
  have hCoeff : ((m⁻¹ : ℝ) : ℂ) = (m : ℂ)⁻¹ := by simp
  have hSkewR : (((m : ℂ)⁻¹ • Q) : H →ₗ.[ℂ] H).adjoint =
      negativePMap (((m : ℂ)⁻¹ • Q) : H →ₗ.[ℂ] H) := by
    rw [← hCoeff]
    exact real_scaled_skew_adjoint_draft Q (m⁻¹) hmInv hDense hSkew
  exact mass_shift_surjective_if_normalized_draft Q m hm hClosedR hDense hSkewR f

theorem mass_shift_solution_bound_draft
    (Q : H →ₗ.[ℂ] H) (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q)
    (m : ℝ) (hm : 0 < m) (f : H) (x : Q.domain)
    (hx : (m : ℂ) • (x : H) + Q x = f) :
    m * ‖(x : H)‖ ≤ ‖f‖ := by
  have hLower := skew_mass_lower_draft Q hDense hSkew m hm x
  rw [hx] at hLower
  exact hLower

theorem mass_shift_injective_from_skew_draft
    (Q : H →ₗ.[ℂ] H) (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q)
    (m : ℝ) (hm : 0 < m) :
    Function.Injective (fun x : Q.domain => (m : ℂ) • (x : H) + Q x) := by
  intro x y hxy
  let z : Q.domain := x - y
  have hz : (m : ℂ) • (z : H) + Q z = 0 := by
    change (m : ℂ) • ((x : H) - (y : H)) + Q (x - y) = 0
    have hmap : Q (x - y) = Q x - Q y := map_sub Q.toFun x y
    rw [hmap]
    rw [smul_sub]
    calc
      (m : ℂ) • (x : H) - (m : ℂ) • (y : H) + (Q x - Q y) =
          ((m : ℂ) • (x : H) + Q x) - ((m : ℂ) • (y : H) + Q y) := by abel
      _ = 0 := sub_eq_zero.mpr hxy
  have hLower := skew_mass_lower_draft Q hDense hSkew m hm z
  rw [hz] at hLower
  have hLower' : m * ‖(z : H)‖ ≤ 0 := by simpa using hLower
  have hn : ‖(z : H)‖ = 0 := by
    nlinarith [norm_nonneg (z : H)]
  have hzero : (z : H) = 0 := norm_eq_zero.mp hn
  apply Subtype.ext
  have hdiff : (x : H) - (y : H) = 0 := by
    simpa [z] using hzero
  exact sub_eq_zero.mp hdiff

theorem mass_shift_bijective_from_skew_draft
    (Q : H →ₗ.[ℂ] H) (hClosed : Q.IsClosed)
    (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q)
    (m : ℝ) (hm : 0 < m) :
    Function.Bijective (fun x : Q.domain => (m : ℂ) • (x : H) + Q x) := by
  constructor
  · exact mass_shift_injective_from_skew_draft Q hDense hSkew m hm
  · intro f
    obtain ⟨x, hx⟩ := mass_shift_surjective_from_skew_draft
      Q hClosed hDense hSkew m hm f
    exact ⟨x, hx⟩

theorem mass_resolvent_solution_exists_unique_bound_draft
    (Q : H →ₗ.[ℂ] H) (hClosed : Q.IsClosed)
    (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q)
    (m : ℝ) (hm : 0 < m) (f : H) :
    ∃! x : Q.domain,
      ((m : ℂ) • (x : H) + Q x = f) ∧ m * ‖(x : H)‖ ≤ ‖f‖ := by
  obtain ⟨x, hx⟩ := mass_shift_surjective_from_skew_draft
    Q hClosed hDense hSkew m hm f
  have hb := mass_shift_solution_bound_draft Q hDense hSkew m hm f x hx
  refine ⟨x, ⟨hx, hb⟩, ?_⟩
  intro y hy
  exact mass_shift_injective_from_skew_draft Q hDense hSkew m hm
    (hy.1.trans hx.symm)

end PairedDirac

#print axioms PairedDirac.mass_shift_surjective_from_skew_draft
#print axioms PairedDirac.mass_shift_solution_bound_draft
#print axioms PairedDirac.mass_shift_injective_from_skew_draft
#print axioms PairedDirac.mass_shift_bijective_from_skew_draft
#print axioms PairedDirac.mass_resolvent_solution_exists_unique_bound_draft

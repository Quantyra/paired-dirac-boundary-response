import MassSkewSurjectiveDraft

/-! GCP-only unverified draft for the mass scaling of the unit shift. The
closedness and skew-adjointness of the normalized operator remain explicit
hypotheses to be proved from those of Q. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem mass_shift_surjective_if_normalized_draft
    (Q : H →ₗ.[ℂ] H) (m : ℝ) (hm : 0 < m)
    (hClosed : (((m : ℂ)⁻¹ • Q) : H →ₗ.[ℂ] H).IsClosed)
    (hDense : Dense (Q.domain : Set H))
    (hSkew : (((m : ℂ)⁻¹ • Q) : H →ₗ.[ℂ] H).adjoint =
      negativePMap (((m : ℂ)⁻¹ • Q) : H →ₗ.[ℂ] H)) (f : H) :
    ∃ x : Q.domain, (m : ℂ) • (x : H) + Q x = f := by
  let R : H →ₗ.[ℂ] H := (m : ℂ)⁻¹ • Q
  have hDenseR : Dense (R.domain : Set H) := hDense
  obtain ⟨x, hx⟩ := skew_add_one_surjective_draft R hClosed hDenseR hSkew ((m : ℂ)⁻¹ • f)
  have hm0 : (m : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hm)
  refine ⟨x, ?_⟩
  change (x : H) + (m : ℂ)⁻¹ • Q x = (m : ℂ)⁻¹ • f at hx
  have heq := congrArg (fun z : H => (m : ℂ) • z) hx
  simpa only [smul_add, smul_smul, mul_inv_cancel₀ hm0, one_smul] using heq

end PairedDirac

#print axioms PairedDirac.mass_shift_surjective_if_normalized_draft

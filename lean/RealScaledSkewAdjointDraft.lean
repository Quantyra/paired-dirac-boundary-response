import ScaledSkewClosedDraft

/-! GCP-only development draft: adjoints commute with multiplication by a
nonzero real scalar. The physical operator and partner hypotheses remain
separate obligations. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem real_scaled_adjoint_domain_draft
    (Q : H →ₗ.[ℂ] H) (c : ℝ) (hc : c ≠ 0) (y : H) :
    y ∈ (((c : ℂ) • Q).adjoint.domain) ↔ y ∈ Q.adjoint.domain := by
  rw [LinearPMap.mem_adjoint_domain_iff, LinearPMap.mem_adjoint_domain_iff]
  change Continuous (fun x : Q.domain => inner ℂ y ((c : ℂ) • Q x)) ↔
    Continuous (fun x : Q.domain => inner ℂ y (Q x))
  have hcC : (c : ℂ) ≠ 0 := by exact_mod_cast hc
  have hscale (x : Q.domain) :
      inner ℂ y ((c : ℂ) • Q x) = (c : ℂ) * inner ℂ y (Q x) := by
    rw [inner_smul_right]
  constructor
  · intro h
    have h' : Continuous (fun x : Q.domain => (c : ℂ)⁻¹ * inner ℂ y ((c : ℂ) • Q x)) :=
      continuous_const.mul h
    convert h' using 1
    ext x
    rw [hscale x]
    field_simp [hcC]
  · intro h
    have h' : Continuous (fun x : Q.domain => (c : ℂ) * inner ℂ y (Q x)) :=
      continuous_const.mul h
    convert h' using 1
    ext x
    exact hscale x

theorem real_scaled_adjoint_eq_draft
    (Q : H →ₗ.[ℂ] H) (c : ℝ) (hc : c ≠ 0)
    (hDense : Dense (Q.domain : Set H)) :
    (((c : ℂ) • Q).adjoint) = (c : ℂ) • Q.adjoint := by
  have hDenseC : Dense ((((c : ℂ) • Q).domain : Set H)) := by
    simpa using hDense
  apply LinearPMap.ext
  · ext y
    exact real_scaled_adjoint_domain_draft Q c hc y
  · intro y hyS hyA
    have hyQ : y ∈ Q.adjoint.domain :=
      (real_scaled_adjoint_domain_draft Q c hc y).mp hyS
    apply LinearPMap.adjoint_apply_eq hDenseC
    intro x
    have hGreen := LinearPMap.adjoint_isFormalAdjoint hDense ⟨y, hyQ⟩ x
    change inner ℂ ((c : ℂ) • Q.adjoint ⟨y, hyQ⟩) x =
      inner ℂ y ((c : ℂ) • Q x)
    calc
      inner ℂ ((c : ℂ) • Q.adjoint ⟨y, hyQ⟩) x =
          star (c : ℂ) * inner ℂ (Q.adjoint ⟨y, hyQ⟩) x := by
        rw [inner_smul_left]
        simp
      _ = (c : ℂ) * inner ℂ (Q.adjoint ⟨y, hyQ⟩) x := by simp
      _ = (c : ℂ) * inner ℂ y (Q x) := by rw [hGreen]
      _ = inner ℂ y ((c : ℂ) • Q x) := by rw [inner_smul_right]

theorem real_scaled_skew_adjoint_draft
    (Q : H →ₗ.[ℂ] H) (c : ℝ) (hc : c ≠ 0)
    (hDense : Dense (Q.domain : Set H))
    (hSkew : Q.adjoint = negativePMap Q) :
    (((c : ℂ) • Q).adjoint) = negativePMap ((c : ℂ) • Q) := by
  rw [real_scaled_adjoint_eq_draft Q c hc hDense, hSkew]
  apply LinearPMap.ext
  · ext y
    rfl
  · intro y hy₁ hy₂
    have hproof : hy₁ = hy₂ := Subsingleton.elim _ _
    subst hproof
    change (c : ℂ) • -(Q ⟨y, hy₁⟩) = -((c : ℂ) • Q ⟨y, hy₁⟩)
    simp

end PairedDirac

#print axioms PairedDirac.real_scaled_adjoint_domain_draft
#print axioms PairedDirac.real_scaled_adjoint_eq_draft
#print axioms PairedDirac.real_scaled_skew_adjoint_draft

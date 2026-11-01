import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp

/-!
# Manuscript formalization: the conditionally stated algebraic core

This file formalizes the statements of `manuscript/DRAFT.md` that are
algebraic or bounded-operator inequalities, at the readings recorded in
`manuscript/lean-certification-ledger.md`.

It does **not** formalize unbounded closed realizations or their domains, the
existence of the operator inverses in Proposition 3.1, any heat-kernel
asymptotic, Fourier integral, mode sum, moving cut, common regulator or
curved remainder (Propositions 4.1--4.3 and Section 5), or any physical
identification.
-/

set_option linter.unusedSectionVars false

open scoped InnerProductSpace

namespace PairedDirac.Manuscript

/-! ## Proposition 3.1: bounded-operator reading of (3.1) -/

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H] [CompleteSpace H]

/-- For a bounded skew-adjoint operator, the real inner product of a vector
with its image vanishes. -/
theorem skew_adjoint_inner_self_zero (T : H →L[ℝ] H)
    (hT : ContinuousLinearMap.adjoint T = -T) (x : H) :
    ⟪x, T x⟫_ℝ = 0 := by
  have h1 : ⟪(ContinuousLinearMap.adjoint T) x, x⟫_ℝ = ⟪x, T x⟫_ℝ :=
    ContinuousLinearMap.adjoint_inner_left T x x
  rw [hT] at h1
  simp only [ContinuousLinearMap.neg_apply, inner_neg_left] at h1
  have h2 : ⟪T x, x⟫_ℝ = ⟪x, T x⟫_ℝ := real_inner_comm x (T x)
  linarith

/-- The a priori lower bound behind `‖(M + Q)⁻¹‖ ≤ 1/M` in (3.1). -/
theorem resolvent_shift_norm_lower (T : H →L[ℝ] H)
    (hT : ContinuousLinearMap.adjoint T = -T)
    (M : ℝ) (hM : 0 ≤ M) (x : H) :
    M * ‖x‖ ≤ ‖(M : ℝ) • x + T x‖ := by
  have hinner : ⟪x, T x⟫_ℝ = 0 := skew_adjoint_inner_self_zero T hT x
  have hsq : ‖(M : ℝ) • x + T x‖ ^ 2 = M ^ 2 * ‖x‖ ^ 2 + ‖T x‖ ^ 2 := by
    rw [norm_add_sq_real, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]
    have hmul : ⟪(M : ℝ) • x, T x⟫_ℝ = M * ⟪x, T x⟫_ℝ := real_inner_smul_left x (T x) M
    rw [hmul, hinner]
    ring
  have hle : (M * ‖x‖) ^ 2 ≤ ‖(M : ℝ) • x + T x‖ ^ 2 := by
    rw [hsq]
    nlinarith [sq_nonneg ‖T x‖, norm_nonneg x, norm_nonneg ((M : ℝ) • x + T x)]
  have hsqrt := Real.sqrt_le_sqrt hle
  rwa [Real.sqrt_sq (mul_nonneg hM (norm_nonneg x)),
    Real.sqrt_sq (norm_nonneg ((M : ℝ) • x + T x))] at hsqrt

/-- (3.1), first bound, conditional on the displayed right inverse. -/
theorem resolvent_norm_bound (T : H →L[ℝ] H)
    (hT : ContinuousLinearMap.adjoint T = -T)
    (M : ℝ) (hM : 0 < M) (S : H →L[ℝ] H)
    (hS : ∀ y, (M : ℝ) • S y + T (S y) = y) (y : H) :
    ‖S y‖ ≤ ‖y‖ / M := by
  have h := resolvent_shift_norm_lower T hT M (le_of_lt hM) (S y)
  rw [hS y] at h
  rw [le_div_iff₀ hM]
  calc ‖S y‖ * M = M * ‖S y‖ := by ring
    _ ≤ ‖y‖ := h

/-- The a priori lower bound behind `‖(D*D + M²)⁻¹‖ ≤ 1/M²`. -/
theorem square_shift_norm_lower (T : H →L[ℝ] H) (M : ℝ) (hM : 0 ≤ M) (x : H) :
    M ^ 2 * ‖x‖ ≤ ‖(M ^ 2 : ℝ) • x + (ContinuousLinearMap.adjoint T).comp T x‖ := by
  set y : H := (M ^ 2 : ℝ) • x + (ContinuousLinearMap.adjoint T).comp T x with hy
  have hinner : ⟪y, x⟫_ℝ = M ^ 2 * ‖x‖ ^ 2 + ‖T x‖ ^ 2 := by
    rw [hy]
    simp only [inner_add_left, real_inner_smul_left, ContinuousLinearMap.comp_apply]
    have hadj : ⟪(ContinuousLinearMap.adjoint T) (T x), x⟫_ℝ = ⟪T x, T x⟫_ℝ :=
      ContinuousLinearMap.adjoint_inner_left T x (T x)
    rw [hadj, real_inner_self_eq_norm_sq (T x), real_inner_self_eq_norm_sq x]
  have hcs : ⟪y, x⟫_ℝ ≤ ‖y‖ * ‖x‖ := real_inner_le_norm y x
  rw [hinner] at hcs
  rcases eq_or_ne ‖x‖ 0 with hx | hx
  · rw [hx]
    simp
  · have hxpos : 0 < ‖x‖ := lt_of_le_of_ne (norm_nonneg x) (Ne.symm hx)
    have hxne : ‖x‖ ≠ 0 := ne_of_gt hxpos
    have hmain : M ^ 2 * ‖x‖ ^ 2 ≤ ‖y‖ * ‖x‖ := by nlinarith [sq_nonneg ‖T x‖]
    have hhalf : M ^ 2 * ‖x‖ ≤ (‖y‖ * ‖x‖) / ‖x‖ :=
      (le_div_iff₀ hxpos).mpr (by nlinarith [hmain])
    rwa [mul_div_cancel_right₀ _ hxne] at hhalf

/-- (3.1), second bound, conditional on the displayed right inverse. -/
theorem square_resolvent_norm_bound (T : H →L[ℝ] H) (M : ℝ) (hM : 0 < M)
    (S : H →L[ℝ] H)
    (hS : ∀ y, (M ^ 2 : ℝ) • S y
      + (ContinuousLinearMap.adjoint T).comp T (S y) = y) (y : H) :
    ‖S y‖ ≤ ‖y‖ / M ^ 2 := by
  have h := square_shift_norm_lower T M (le_of_lt hM) (S y)
  rw [hS y] at h
  rw [le_div_iff₀ (by nlinarith [hM])]
  calc ‖S y‖ * M ^ 2 = M ^ 2 * ‖S y‖ := by ring
    _ ≤ ‖y‖ := h

/-! ## (4.11): congrenced gap transfer -/

/-- A gap for `Q` survives conjugation by a bounded map with a lower norm
bound. The constant is the product of the two multiplier lower bounds; the
manuscript's printed single factor is flagged in the ledger. -/
theorem congruenced_gap_composition (Q E : H →L[ℝ] H) (κ c : ℝ)
    (hκ : 0 ≤ κ) (hc : 0 ≤ c)
    (hQ : ∀ ψ, κ * ‖ψ‖ ≤ ‖Q ψ‖) (hE : ∀ ψ, c * ‖ψ‖ ≤ ‖E ψ‖) (ψ : H) :
    κ * c * c * ‖ψ‖ ≤ ‖E (Q (E ψ))‖ := by
  have h1 : c * ‖ψ‖ ≤ ‖E ψ‖ := hE ψ
  have h2 : κ * ‖E ψ‖ ≤ ‖Q (E ψ)‖ := hQ (E ψ)
  have h3 : c * ‖Q (E ψ)‖ ≤ ‖E (Q (E ψ))‖ := hE (Q (E ψ))
  have h4 : c * (κ * ‖E ψ‖) ≤ c * ‖Q (E ψ)‖ :=
    mul_le_mul_of_nonneg_left h2 hc
  have h5 : κ * (c * ‖ψ‖) ≤ κ * ‖E ψ‖ := mul_le_mul_of_nonneg_left h1 hκ
  nlinarith [h3, h4, h5, norm_nonneg (E ψ)]

/-! ## Section 4: the displayed coefficient ledgers -/

/-- `(4.12c)`: subtracting `(4.12b)` from `(4.12a)` term by term. -/
theorem converted_series_difference
    (pi b t U0 U1 U2 C0 C1 : ℝ) (hpi : pi ≠ 0) (ht : t ≠ 0) (hb : b ≠ 0) :
    8 * b ^ 2 * U0 / (pi * t ^ 2) + C0 * U0 / (pi * t)
        - b ^ 2 * U1 / (2 * pi * t)
      - (C0 * U0 / (2 * pi * t) + b ^ 2 * U1 / (12 * pi * t)
          + (1 / (2 * pi)) * (-(C0 * U1) / 12 - b ^ 2 * U2 / 60
              + 2 * C1 * U0 / b ^ 2))
      = 8 * b ^ 2 * U0 / (pi * t ^ 2) + C0 * U0 / (2 * pi * t)
          - 7 * b ^ 2 * U1 / (12 * pi * t) + C0 * U1 / (24 * pi)
          + b ^ 2 * U2 / (120 * pi) - C1 * U0 / (pi * b ^ 2) := by
  field_simp
  ring

/-- `(4.10b)`: the geometric and contact cubic contributions. -/
theorem flat_conversion_cubic_coefficient (pi b : ℝ) (hpi : pi ≠ 0) :
    2 * ((2 * b ^ 2 / (2 * pi)) * (-(1 / 1680 : ℝ) + 1 / 840))
      = b ^ 2 / (840 * pi) := by
  field_simp
  ring

/-- `(4.10c)` local cutoff term. -/
theorem flat_conversion_cutoff_coefficient (pi b : ℝ) (hpi : pi ≠ 0) :
    (2 * b ^ 2) / (1680 * pi) = b ^ 2 / (840 * pi) := by
  field_simp
  ring

/-! ## Section 5: the finite-matrix reference-position identity -/

/-- `(5.3)` at finite matrix level. -/
theorem matrix_reference_position_identity {n : Type*} [Fintype n] [DecidableEq n]
    (b Ka Kc V : Matrix n n ℂ) (hcomm : Ka * Kc = Kc * Ka) :
    (b * Ka * V * Kc).trace
      = (b * (Ka * Kc) * V).trace + ((Kc * b - b * Kc) * Ka * V).trace := by
  have hrot : (b * Ka * V * Kc).trace = (Kc * b * Ka * V).trace := by
    rw [Matrix.trace_mul_comm (b * Ka * V) Kc]
    simp [mul_assoc]
  have hA : (Kc * b - b * Kc) * Ka * V
      = Kc * b * Ka * V - b * Kc * Ka * V := by
    rw [Matrix.sub_mul, Matrix.sub_mul]
  have hB : b * (Ka * Kc) * V = b * Kc * Ka * V := by
    rw [hcomm]
    simp [mul_assoc]
  rw [hrot, hA, hB, Matrix.trace_sub]
  ring

/-! ## (2.3): the transported finite-cut boundary plane -/

/-- The `σ₃` action on the two spin components. -/
def s3 (v : ℝ × ℝ) : ℝ × ℝ := (v.1, -v.2)

/-- The `σ₁` action on the two spin components. -/
def s1 (v : ℝ × ℝ) : ℝ × ℝ := (v.2, v.1)

/-- `v₊`, the `σ₁` eigenvector with eigenvalue `+1`. -/
def vplus : ℝ × ℝ := (1, 1)

/-- `v₋`, the `σ₁` eigenvector with eigenvalue `-1`. -/
def vminus : ℝ × ℝ := (1, -1)

theorem s1_vplus : s1 vplus = vplus := rfl

theorem s1_vminus : s1 vminus = -vminus := by
  simp [s1, vminus]

theorem s3_vplus : s3 vplus = vminus := rfl

theorem s3_vminus : s3 vminus = vplus := by
  simp [s3, vminus, vplus]

/-- `sinh λ = 0 ↔ λ = 0`, proved locally because Mathlib's version lives in
a module this retained build does not contain. -/
theorem real_sinh_eq_zero (lam : ℝ) : Real.sinh lam = 0 ↔ lam = 0 := by
  constructor
  · intro hs
    have h1 : Real.exp lam = Real.exp (-lam) := by
      rw [← Real.cosh_add_sinh lam, ← Real.cosh_sub_sinh lam, hs]
      ring
    have h2 : lam = -lam := Real.exp_eq_exp.mp h1
    linarith
  · intro h
    subst h
    exact Real.sinh_zero

/-- The transported boundary datum of (2.3) in coordinates. -/
noncomputable def transportedPlane (lam : ℝ) : ℝ × ℝ :=
  (Real.cosh lam + Real.sinh lam, Real.cosh lam - Real.sinh lam)

/-- The coordinate definition is the span expression of (2.3). -/
theorem transportedPlane_eq_smul (lam : ℝ) :
    transportedPlane lam = (Real.cosh lam) • vplus + (Real.sinh lam) • vminus := by
  ext
  · change Real.cosh lam + Real.sinh lam = Real.cosh lam * 1 + Real.sinh lam * 1
    ring
  · change Real.cosh lam - Real.sinh lam = Real.cosh lam * 1 + Real.sinh lam * (-1)
    ring

/-- The local `P₋` boundary operator `(1 - σ₁)/2`. -/
noncomputable def pminus (v : ℝ × ℝ) : ℝ × ℝ := ((v.1 - v.2) / 2, (v.2 - v.1) / 2)

/-- The transported datum's `P₋` component. -/
theorem pminus_transportedPlane (lam : ℝ) :
    pminus (transportedPlane lam) = (Real.sinh lam, -Real.sinh lam) := by
  ext
  · change (Real.cosh lam + Real.sinh lam - (Real.cosh lam - Real.sinh lam)) / 2
      = Real.sinh lam
    ring
  · change (Real.cosh lam - Real.sinh lam - (Real.cosh lam + Real.sinh lam)) / 2
      = -Real.sinh lam
    ring

/-- `(2.3)`: unless `λ = 0`, the transported plane is not the local plane. -/
theorem transportedPlane_not_local (lam : ℝ) (hlam : lam ≠ 0) :
    pminus (transportedPlane lam) ≠ 0 := by
  rw [pminus_transportedPlane]
  intro hzero
  have hsinh : Real.sinh lam = 0 := by
    simpa using congrArg Prod.fst hzero
  exact hlam ((real_sinh_eq_zero lam).mp hsinh)

/-- The transported plane coincides with the local plane exactly at `λ = 0`. -/
theorem transportedPlane_parallel_iff (lam : ℝ) :
    (∃ c : ℝ, transportedPlane lam = c • vplus) ↔ lam = 0 := by
  constructor
  · rintro ⟨c, hc⟩
    have h1 : Real.cosh lam + Real.sinh lam = c * 1 := by
      have := congrArg Prod.fst hc
      simpa [transportedPlane, vplus] using this
    have h2 : Real.cosh lam - Real.sinh lam = c * 1 := by
      have := congrArg Prod.snd hc
      simpa [transportedPlane, vplus] using this
    have hsinh : Real.sinh lam = 0 := by linarith
    exact (real_sinh_eq_zero lam).mp hsinh
  · intro h
    subst h
    exact ⟨1, by simp [transportedPlane, vplus]⟩

/-! ## (4.9a) consistency with the `(4.12)` coefficients -/

/-- Differentiating the explicit polynomial part of `(4.9a)` with `a = t/b²`
reproduces the displayed coefficient of `-Θ'`. -/
theorem tower_derivative_coefficient (q b t : ℝ) (hb : b ≠ 0) (ht : t ≠ 0) :
    -(-(2 * b ^ 2 / t ^ 2) + (q ^ 2 / 6 - 1 / 30) / b ^ 2)
      = b ^ (-2 : ℤ) * (2 * (b ^ 2 / t) ^ 2 - (q ^ 2 / 6 - 1 / 30)) := by
  have hb2 : b ^ 2 ≠ 0 := pow_ne_zero 2 hb
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht
  field_simp
  ring

/-! ## Proposition 2.1: the multiplier identity -/

section MultiplierIdentity

variable {R : Type*} [Ring R] [Algebra ℚ R]

/-- Proposition 2.1, second identity. If the weak product rule gives
`D E = E D - (1/2) E c(db)` for an invertible `E`, then
`E⁻¹ (D E) = D - (1/2) c(db)`. With `D_b = E D E` and `E = E_b`, this is the
manuscript's `E_b⁻² D_b ψ = D ψ - (1/2) c(db) ψ`. -/
theorem multiplier_identity (D C E Ei : R)
    (hE : Ei * E = 1)
    (hDE : D * E = E * D - (1 / 2 : ℚ) • (E * C)) :
    Ei * (D * E) = D - (1 / 2 : ℚ) • C := by
  have h1 : Ei * (E * D) = D := by
    rw [← mul_assoc, hE, one_mul]
  have h2 : Ei * ((1 / 2 : ℚ) • (E * C)) = (1 / 2 : ℚ) • C := by
    calc Ei * ((1 / 2 : ℚ) • (E * C))
        = Ei * (algebraMap ℚ R (1 / 2) * (E * C)) := by rw [Algebra.smul_def]
      _ = (Ei * algebraMap ℚ R (1 / 2)) * (E * C) := by rw [mul_assoc]
      _ = (algebraMap ℚ R (1 / 2) * Ei) * (E * C) := by
            rw [(Algebra.commutes (1 / 2 : ℚ) Ei).symm]
      _ = algebraMap ℚ R (1 / 2) * (Ei * (E * C)) := by simp only [mul_assoc]
      _ = algebraMap ℚ R (1 / 2) * ((Ei * E) * C) := by simp only [mul_assoc]
      _ = algebraMap ℚ R (1 / 2) * C := by rw [hE, one_mul]
      _ = (1 / 2 : ℚ) • C := by rw [Algebra.smul_def]
  rw [hDE, mul_sub, h1, h2]

end MultiplierIdentity

/-! ## Proposition 2.1: the two graph inequalities of (2.2) -/

section GraphBounds

variable {R : Type*} [NormedRing R] [NormedAlgebra ℝ R]

/-- `(2.2)`, second inequality: with `Dψ = E⁻² D_b ψ + (1/2) c(db) ψ`,
`‖E⁻²‖ ≤ exp B` and `‖c(db)‖ ≤ G`, `‖D ψ‖ ≤ exp B ‖D_b ψ‖ + (G/2) ‖ψ‖`. -/
theorem second_graph_inequality (Dψ Dbψ ψ E2 C : R) (B G : ℝ)
    (hdecomp : Dψ = E2 * Dbψ + (1 / 2 : ℝ) • (C * ψ))
    (hE : ‖E2‖ ≤ Real.exp B) (hC : ‖C‖ ≤ G) (hG : 0 ≤ G) :
    ‖Dψ‖ ≤ Real.exp B * ‖Dbψ‖ + (G / 2) * ‖ψ‖ := by
  rw [hdecomp]
  have h1 : ‖E2 * Dbψ + (1 / 2 : ℝ) • (C * ψ)‖
      ≤ ‖E2 * Dbψ‖ + ‖(1 / 2 : ℝ) • (C * ψ)‖ := norm_add_le _ _
  have h2 : ‖E2 * Dbψ‖ ≤ ‖E2‖ * ‖Dbψ‖ := norm_mul_le _ _
  have h3 : ‖(1 / 2 : ℝ) • (C * ψ)‖ = (1 / 2) * ‖C * ψ‖ := by
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  have h4 : ‖C * ψ‖ ≤ ‖C‖ * ‖ψ‖ := norm_mul_le _ _
  have h5 : ‖E2‖ * ‖Dbψ‖ ≤ Real.exp B * ‖Dbψ‖ :=
    mul_le_mul_of_nonneg_right hE (norm_nonneg _)
  have h6 : (1 / 2) * (‖C‖ * ‖ψ‖) ≤ (G / 2) * ‖ψ‖ := by
    have hc : ‖C‖ * ‖ψ‖ ≤ G * ‖ψ‖ := mul_le_mul_of_nonneg_right hC (norm_nonneg ψ)
    nlinarith
  calc ‖E2 * Dbψ + (1 / 2 : ℝ) • (C * ψ)‖
      ≤ ‖E2 * Dbψ‖ + (1 / 2) * ‖C * ψ‖ := by linarith
    _ ≤ ‖E2‖ * ‖Dbψ‖ + (1 / 2) * (‖C‖ * ‖ψ‖) := by
        linarith [mul_le_mul_of_nonneg_left h4 (by norm_num : (0 : ℝ) ≤ 1 / 2)]
    _ ≤ Real.exp B * ‖Dbψ‖ + (G / 2) * ‖ψ‖ := by linarith [h5, h6]

/-- `(2.2)`, first inequality. -/
theorem first_graph_inequality (Dbψ Dψ ψ Eb C : R) (B G : ℝ)
    (hdecomp : Dbψ = Eb * Dψ - (1 / 2 : ℝ) • (Eb * (C * ψ)))
    (hE : ‖Eb‖ ≤ Real.exp B) (hC : ‖C‖ ≤ G) (hG : 0 ≤ G) :
    ‖Dbψ‖ ≤ Real.exp B * (‖Dψ‖ + (G / 2) * ‖ψ‖) := by
  rw [hdecomp]
  have h1 : ‖Eb * Dψ - (1 / 2 : ℝ) • (Eb * (C * ψ))‖
      ≤ ‖Eb * Dψ‖ + ‖(1 / 2 : ℝ) • (Eb * (C * ψ))‖ := norm_sub_le _ _
  have h2 : ‖Eb * Dψ‖ ≤ ‖Eb‖ * ‖Dψ‖ := norm_mul_le _ _
  have h3 : ‖(1 / 2 : ℝ) • (Eb * (C * ψ))‖ = (1 / 2) * ‖Eb * (C * ψ)‖ := by
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  have h4 : ‖Eb * (C * ψ)‖ ≤ ‖Eb‖ * ‖C * ψ‖ := norm_mul_le _ _
  have h5 : ‖C * ψ‖ ≤ ‖C‖ * ‖ψ‖ := norm_mul_le _ _
  have h6 : ‖Eb‖ * ‖Dψ‖ ≤ Real.exp B * ‖Dψ‖ :=
    mul_le_mul_of_nonneg_right hE (norm_nonneg _)
  have h7 : (1 / 2) * (‖Eb‖ * (‖C‖ * ‖ψ‖))
      ≤ (1 / 2) * (Real.exp B * (G * ‖ψ‖)) := by
    have ha : ‖Eb‖ * (‖C‖ * ‖ψ‖) ≤ ‖Eb‖ * (G * ‖ψ‖) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hC (norm_nonneg ψ))
        (norm_nonneg _)
    have hb : ‖Eb‖ * (G * ‖ψ‖) ≤ Real.exp B * (G * ‖ψ‖) :=
      mul_le_mul_of_nonneg_right hE (by positivity)
    linarith
  have h8 : (1 / 2) * ‖Eb * (C * ψ)‖ ≤ (1 / 2) * (‖Eb‖ * (‖C‖ * ‖ψ‖)) := by
    have h9 : ‖Eb * (C * ψ)‖ ≤ ‖Eb‖ * (‖C‖ * ‖ψ‖) := by
      have := mul_le_mul_of_nonneg_left h5 (norm_nonneg Eb)
      linarith
    linarith
  calc ‖Eb * Dψ - (1 / 2 : ℝ) • (Eb * (C * ψ))‖
      ≤ ‖Eb * Dψ‖ + (1 / 2) * ‖Eb * (C * ψ)‖ := by linarith
    _ ≤ ‖Eb‖ * ‖Dψ‖ + (1 / 2) * (‖Eb‖ * (‖C‖ * ‖ψ‖)) := by linarith
    _ ≤ Real.exp B * ‖Dψ‖ + (1 / 2) * (Real.exp B * (G * ‖ψ‖)) := by
        linarith
    _ = Real.exp B * (‖Dψ‖ + (G / 2) * ‖ψ‖) := by ring

end GraphBounds

/-! ## (2.4): the Pauli algebra entering the block system -/

/-- `σ₁` as a `2 × 2` complex matrix. -/
def pauli1 : Matrix (Fin 2) (Fin 2) ℂ := !![0, 1; 1, 0]

/-- `σ₂` as a `2 × 2` complex matrix. -/
def pauli2 : Matrix (Fin 2) (Fin 2) ℂ := !![0, -Complex.I; Complex.I, 0]

/-- `σ₃` as a `2 × 2` complex matrix. -/
def pauli3 : Matrix (Fin 2) (Fin 2) ℂ := !![1, 0; 0, -1]

theorem pauli1_sq : pauli1 * pauli1 = (1 : Matrix (Fin 2) (Fin 2) ℂ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [pauli1, Matrix.mul_apply, Fin.sum_univ_two]

theorem pauli2_sq : pauli2 * pauli2 = (1 : Matrix (Fin 2) (Fin 2) ℂ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [pauli2, Matrix.mul_apply, Fin.sum_univ_two, Complex.I_mul_I]

theorem pauli3_sq : pauli3 * pauli3 = (1 : Matrix (Fin 2) (Fin 2) ℂ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [pauli3, Matrix.mul_apply, Fin.sum_univ_two]

/-- The Pauli product relation `σ₂σ₁ = -i σ₃` used when solving the first
block row of `(2.4)` for `η'`. -/
theorem pauli2_mul_pauli1 : pauli2 * pauli1 = -Complex.I • pauli3 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [pauli1, pauli2, pauli3, Matrix.mul_apply, Fin.sum_univ_two, Matrix.smul_apply,
      Complex.I_mul_I]

/-- The Pauli product relation `σ₂σ₃ = i σ₁`. -/
theorem pauli2_mul_pauli3 : pauli2 * pauli3 = Complex.I • pauli1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [pauli1, pauli2, pauli3, Matrix.mul_apply, Fin.sum_univ_two, Matrix.smul_apply,
      Complex.I_mul_I]

/-- `(2.4)`: the displayed `K_ζ` is the block matrix `[[A, B], [C, -A]]` with
`A = νσ₂ - μaσ₃`, `B = i f⁻¹σ₂`, `C = i(ζ-M²)f⁻¹σ₂`. This certifies the block
structure and the diagonal antisymmetry; the elimination to the second-order
equation is not formalized. -/
def kzeta (A B C : Matrix (Fin 2) (Fin 2) ℂ) :
    Matrix (Fin 2) (Fin 2) (Matrix (Fin 2) (Fin 2) ℂ) :=
  !![A, B; C, -A]

theorem kzeta_diag_antisym (A B C : Matrix (Fin 2) (Fin 2) ℂ) :
    kzeta A B C 1 1 = -kzeta A B C 0 0 := rfl

theorem kzeta_entries (nu mua zetaM2 finv : ℝ) :
    kzeta (nu • pauli2 - mua • pauli3) ((Complex.I * finv) • pauli2)
        ((Complex.I * (zetaM2 * finv)) • pauli2)
      = !![nu • pauli2 - mua • pauli3, (Complex.I * finv) • pauli2;
          (Complex.I * (zetaM2 * finv)) • pauli2,
          -(nu • pauli2 - mua • pauli3)] := rfl

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.skew_adjoint_inner_self_zero
#print axioms PairedDirac.Manuscript.resolvent_shift_norm_lower
#print axioms PairedDirac.Manuscript.resolvent_norm_bound
#print axioms PairedDirac.Manuscript.square_shift_norm_lower
#print axioms PairedDirac.Manuscript.square_resolvent_norm_bound
#print axioms PairedDirac.Manuscript.congruenced_gap_composition
#print axioms PairedDirac.Manuscript.converted_series_difference
#print axioms PairedDirac.Manuscript.flat_conversion_cubic_coefficient
#print axioms PairedDirac.Manuscript.flat_conversion_cutoff_coefficient
#print axioms PairedDirac.Manuscript.matrix_reference_position_identity
#print axioms PairedDirac.Manuscript.s1_vplus
#print axioms PairedDirac.Manuscript.s1_vminus
#print axioms PairedDirac.Manuscript.s3_vplus
#print axioms PairedDirac.Manuscript.s3_vminus
#print axioms PairedDirac.Manuscript.real_sinh_eq_zero
#print axioms PairedDirac.Manuscript.transportedPlane_eq_smul
#print axioms PairedDirac.Manuscript.pminus_transportedPlane
#print axioms PairedDirac.Manuscript.transportedPlane_not_local
#print axioms PairedDirac.Manuscript.transportedPlane_parallel_iff
#print axioms PairedDirac.Manuscript.tower_derivative_coefficient
#print axioms PairedDirac.Manuscript.multiplier_identity
#print axioms PairedDirac.Manuscript.first_graph_inequality
#print axioms PairedDirac.Manuscript.second_graph_inequality
#print axioms PairedDirac.Manuscript.pauli1_sq
#print axioms PairedDirac.Manuscript.pauli2_sq
#print axioms PairedDirac.Manuscript.pauli3_sq
#print axioms PairedDirac.Manuscript.pauli2_mul_pauli1
#print axioms PairedDirac.Manuscript.pauli2_mul_pauli3
#print axioms PairedDirac.Manuscript.kzeta_diag_antisym
#print axioms PairedDirac.Manuscript.kzeta_entries

import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import ManuscriptFlatBound

/-!
# Manuscript formalization: the printed coefficient algebra of Proposition 4.1

Proposition 4.1 of `manuscript/DRAFT.md` reduces `(4.3)` to the two printed
constants. Writing `I` for the claimed integral,

```text
lim_{t->0} t^{-5/2} B_t(u,w) = 144 c_u c_w / π² · I,
I = ∫_0^∞ R3(s²) ds / s⁸ = -5 π^{3/2} / 49152,
```

and `(4.3)` states the value `-15 c_u c_w / (1024 √π)`. This file certifies:

* `cubic_coefficient` — the printed algebraic reduction
  `144 c_u c_w / π² · (-5 π^{3/2}/49152) = -15 c_u c_w / (1024 √π)`,
  with `π^{3/2} = π√π` and `√π·√π = π` proved;
* the structure of `R3`: `R3_eq` (its printed definition in terms of `F`),
  `R3_nonpos` and `R3_lower` (`-x³/840 ≤ R3 x ≤ 0` for `x ≥ 0`, from the
  certified `R2` bounds), `Ffun_le_one`, and `R3_large_neg`
  (`R3 x ≤ -x³/1680` for `x ≥ 14`);
* `R3_kernel_domination` — for `s² ≥ 14`, `|R3 (s²)| / s⁸ ≥ 1/(1680 s²)`.

The last two statements are the audit finding recorded in
`manuscript/lean-certification-ledger.md`: `R3(s²)/s⁸` is **not** integrable on
`(1,∞)`, because `R3` tends to `-x³/840` rather than to zero. The printed
`(4.3)` proof step "dominated convergence + direct integration of an integrable
kernel" therefore cannot be literally correct; the integral must be a finite
part or the subtraction must be windowed. This file does not formalize the
divergence itself (that needs `integrableOn_Ioi_rpow_iff` plus a comparison
argument), only the pointwise domination from which it follows.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- `(4.1)`: `R3(x) = F(x) - 1 + x²/120 - x³/840`, written as `R2(x) - x³/840`. -/
noncomputable def R3 (x : ℝ) : ℝ := R2 x - x ^ 3 / 840

/-- `R3` at the manuscript's printed definition. -/
theorem R3_eq (x : ℝ) : R3 x = Ffun x - 1 + x ^ 2 / 120 - x ^ 3 / 840 := by
  unfold R3 R2
  ring

/-- `(4.1)`/`(4.7)`: `π^{3/2} = π √π`. -/
theorem pi_rpow_three_halves : Real.pi ^ ((3 : ℝ) / 2) = Real.pi * Real.sqrt Real.pi := by
  have h : Real.pi ^ ((3 : ℝ) / 2) = Real.pi ^ (1 : ℝ) * Real.pi ^ ((1 : ℝ) / 2) := by
    rw [← Real.rpow_add Real.pi_pos]
    norm_num
  rw [h, Real.rpow_one, Real.sqrt_eq_rpow]

/-- `√π · √π = π`. -/
theorem sqrt_pi_mul_sqrt_pi : Real.sqrt Real.pi * Real.sqrt Real.pi = Real.pi := by
  rw [← sq]
  exact Real.sq_sqrt (le_of_lt Real.pi_pos)

/-- Proposition 4.1, `(4.3)`: the printed algebraic reduction of the limit
constant. From `I = -5 π^{3/2}/49152`, the coefficient `144 c_u c_w / π²`
produces exactly `-15 c_u c_w / (1024 √π)`. -/
theorem cubic_coefficient (cu cw : ℝ) :
    144 * cu * cw / Real.pi ^ 2 * (-5 * Real.pi ^ ((3 : ℝ) / 2) / 49152)
      = -15 * cu * cw / (1024 * Real.sqrt Real.pi) := by
  rw [pi_rpow_three_halves]
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  have hs : Real.sqrt Real.pi ≠ 0 := (Real.sqrt_pos.mpr Real.pi_pos).ne'
  have hss : Real.sqrt Real.pi * Real.sqrt Real.pi = Real.pi := sqrt_pi_mul_sqrt_pi
  field_simp
  rw [show Real.sqrt Real.pi ^ 2 = Real.pi from Real.sq_sqrt (le_of_lt Real.pi_pos)]
  ring

/-! ## The structure of `R3` -/

/-- `F ≤ 1` for `x ≥ 0`: the integrand `(1+u)e^{-u}` is at most one. -/
theorem Ffun_le_one (x : ℝ) (hx : 0 ≤ x) : Ffun x ≤ 1 := by
  have hcont : IntervalIntegrable
      (fun al : ℝ => (1 + weightA al * x) * Real.exp (-(weightA al * x))) volume 0 1 :=
    (by continuity :
        Continuous fun al : ℝ =>
          (1 + al * (1 - al) * x) * Real.exp (-(al * (1 - al) * x))).intervalIntegrable 0 1
  have hle : ∫ al in (0 : ℝ)..1, (1 + weightA al * x) * Real.exp (-(weightA al * x))
      ≤ ∫ al in (0 : ℝ)..1, (1 : ℝ) := by
    apply intervalIntegral.integral_mono_on zero_le_one hcont intervalIntegrable_const
    intro al hal
    have ha : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
    have hy : 0 ≤ weightA al * x := mul_nonneg ha hx
    have h1 : 1 + weightA al * x ≤ Real.exp (weightA al * x) := by
      linarith [Real.add_one_le_exp (weightA al * x)]
    calc (1 + weightA al * x) * Real.exp (-(weightA al * x))
        ≤ Real.exp (weightA al * x) * Real.exp (-(weightA al * x)) :=
          mul_le_mul_of_nonneg_right h1 (le_of_lt (Real.exp_pos _))
      _ = 1 := by
          rw [← Real.exp_add, show weightA al * x + -(weightA al * x) = 0 by ring, Real.exp_zero]
  have hone : ∫ al in (0 : ℝ)..1, (1 : ℝ) = 1 := by
    rw [intervalIntegral.integral_const]
    norm_num
  rw [hone] at hle
  unfold Ffun
  linarith

/-- `R3 x ≤ 0` for `x ≥ 0`, from the certified kernel bound. -/
theorem R3_nonpos (x : ℝ) (hx : 0 ≤ x) : R3 x ≤ 0 := by
  have h := R2_le_cubic x hx
  unfold R3
  linarith

/-- `-x³/840 ≤ R3 x` for `x ≥ 0`. -/
theorem R3_lower (x : ℝ) (hx : 0 ≤ x) : -(x ^ 3 / 840) ≤ R3 x := by
  have h := R2_nonneg x hx
  unfold R3
  linarith

/-- For `x ≥ 14`, `R3 x ≤ -x³/1680`: `R3` tracks `-x³/840`, not `0`. -/
theorem R3_large_neg (x : ℝ) (hx : 14 ≤ x) : R3 x ≤ -(x ^ 3 / 1680) := by
  have hx0 : 0 ≤ x := by linarith
  have hF := Ffun_le_one x hx0
  have hx2 : x ^ 2 / 120 ≤ x ^ 3 / 1680 := by
    have hxx : 14 * x ^ 2 ≤ x ^ 3 := by nlinarith
    linarith
  rw [R3_eq]
  linarith

/-- The audit finding: on `s² ≥ 14` the `(4.3)` kernel is at least
`1/(1680 s²)` in modulus, so it is not integrable on `(1,∞)`. -/
theorem R3_kernel_domination (s : ℝ) (hs : Real.sqrt 14 ≤ s) :
    1 / (1680 * s ^ 2) ≤ |R3 (s ^ 2)| / s ^ 8 := by
  have hs0 : 0 ≤ s := by
    have h0 : (0 : ℝ) ≤ Real.sqrt 14 := Real.sqrt_nonneg _
    linarith
  have hs2 : (14 : ℝ) ≤ s ^ 2 := by
    have h := Real.sq_sqrt (show (0 : ℝ) ≤ 14 by norm_num)
    nlinarith [Real.sqrt_nonneg 14]
  have hs2pos : (0 : ℝ) < s ^ 2 := by linarith
  have hsne : (s : ℝ) ≠ 0 := by
    intro h
    rw [h] at hs2pos
    norm_num at hs2pos
  have hs8 : (0 : ℝ) < s ^ 8 := pow_pos (lt_of_le_of_ne hs0 (Ne.symm hsne)) 8
  have hneg : R3 (s ^ 2) ≤ -(((s ^ 2) ^ 3) / 1680) := R3_large_neg (s ^ 2) hs2
  have hle : R3 (s ^ 2) ≤ 0 := R3_nonpos (s ^ 2) (by linarith)
  have habs : |R3 (s ^ 2)| = -R3 (s ^ 2) := abs_of_nonpos hle
  rw [habs, le_div_iff₀ hs8]
  have hkey : 1 / (1680 * s ^ 2) * s ^ 8 = s ^ 6 / 1680 := by
    have hd1 : (1680 * s ^ 2 : ℝ) ≠ 0 := by
      have hpos : (0:ℝ) < 1680 * s ^ 2 := by nlinarith [hs2pos]
      exact ne_of_gt hpos
    have hd2 : (s : ℝ) ^ 8 ≠ 0 := ne_of_gt hs8
    field_simp
  have hpow : ((s ^ 2) ^ 3) / 1680 = s ^ 6 / 1680 := by ring
  nlinarith [hneg, hkey, hpow]

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.R3_eq
#print axioms PairedDirac.Manuscript.pi_rpow_three_halves
#print axioms PairedDirac.Manuscript.sqrt_pi_mul_sqrt_pi
#print axioms PairedDirac.Manuscript.cubic_coefficient
#print axioms PairedDirac.Manuscript.Ffun_le_one
#print axioms PairedDirac.Manuscript.R3_nonpos
#print axioms PairedDirac.Manuscript.R3_lower
#print axioms PairedDirac.Manuscript.R3_large_neg
#print axioms PairedDirac.Manuscript.R3_kernel_domination

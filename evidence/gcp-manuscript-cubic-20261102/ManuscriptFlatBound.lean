import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.FieldSimp

/-!
# Manuscript formalization: the `(4.7)` kernel bound of Proposition 4.3

This file certifies the first half of Proposition 4.3 of `manuscript/DRAFT.md`:
the pointwise bound on the kernel `R2` used in `(4.7)`,

```text
0 <= R2(x) <= min (x^3/840) (x^2/120)      for x >= 0,
```

with `R2(x) = F(x) - 1 + x^2/120` and

```text
F(x) = 1/2 + (1/2) * ∫_0^1 (1 + a x) exp(-a x) dα,      a = α(1-α),
```

exactly as printed in `(4.1)` and Proposition 4.3.

The proof follows the manuscript: with `φ(z) = (1+z)e^{-z}`,

```text
φ(z) - 1 + z^2/2 = ∫_0^z s (1 - e^{-s}) ds,
```

so `R2(x) = (1/2)∫_0^1 [φ(a(α)x) - 1 + (a(α)x)^2/2] dα` and the bounds follow
from `s(1-e^{-s}) ≤ s^2` and `s(1-e^{-s}) ≤ s` together with the beta moments
`∫_0^1 a^2 = 1/30` and `∫_0^1 a^3 = 1/140`.

Not certified here: the Fourier transform, the Parseval/Cauchy--Schwarz step
turning this kernel bound into `(4.8)`, Propositions 4.1--4.2, Section 5, or any
physical identification.
-/

open MeasureTheory
open scoped Interval

namespace PairedDirac.Manuscript

/-- The interpolation weight `a(α) = α(1-α)` of `(4.1)`. -/
noncomputable def weightA (al : ℝ) : ℝ := al * (1 - al)

/-- `F` of `(4.1)`, at the printed normalization. -/
noncomputable def Ffun (x : ℝ) : ℝ :=
  1 / 2 + (1 / 2) * ∫ al in (0 : ℝ)..1,
    (1 + weightA al * x) * Real.exp (-(weightA al * x))

/-- `R2(x) = F(x) - 1 + x²/120` of Proposition 4.3. -/
noncomputable def R2 (x : ℝ) : ℝ := Ffun x - 1 + x ^ 2 / 120

/-- The integrand `φ(a x) - 1 + (a x)²/2` whose `α`-average is `2 R2(x)`. -/
noncomputable def phiR2 (al x : ℝ) : ℝ :=
  (1 + weightA al * x) * Real.exp (-(weightA al * x)) - 1 + (weightA al * x) ^ 2 / 2

/-- `a(α) ≥ 0` on `[0,1]`. -/
theorem weightA_nonneg {al : ℝ} (h0 : 0 ≤ al) (h1 : al ≤ 1) : 0 ≤ weightA al := by
  unfold weightA
  nlinarith

/-! ## The Taylor remainder identity for `φ(z) = (1+z)e^{-z}` -/

/-- `φ(z) - 1 + z²/2 = ∫_0^z s(1-e^{-s}) ds`, the identity used in the proof of
Proposition 4.3. -/
theorem phi_remainder (y : ℝ) :
    (1 + y) * Real.exp (-y) - 1 + y ^ 2 / 2
      = ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s)) := by
  have hderiv : ∀ x : ℝ,
      HasDerivAt (fun t : ℝ => (1 + t) * Real.exp (-t) - 1 + t ^ 2 / 2)
        (x * (1 - Real.exp (-x))) x := by
    intro x
    have hlin : HasDerivAt (fun t : ℝ => (1 + t)) 1 x := by
      simpa using (hasDerivAt_id x).const_add 1
    have hexp : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-Real.exp (-x)) x := by
      have h := (Real.hasDerivAt_exp (-x)).comp x (hasDerivAt_neg x)
      simpa using h
    have hprod : HasDerivAt (fun t : ℝ => (1 + t) * Real.exp (-t))
        (1 * Real.exp (-x) + (1 + x) * (-Real.exp (-x))) x := hlin.mul hexp
    have hconst : HasDerivAt (fun _ : ℝ => (1 : ℝ)) 0 x := hasDerivAt_const x 1
    have hquad : HasDerivAt (fun t : ℝ => t ^ 2 / 2) x x := by
      have h := (hasDerivAt_pow 2 x).div_const 2
      convert h using 1
      ring
    have h := (hprod.sub hconst).add hquad
    convert h using 1
    ring
  have hint : IntervalIntegrable (fun s : ℝ => s * (1 - Real.exp (-s))) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s * (1 - Real.exp (-s))).intervalIntegrable 0 y
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
  simpa using h.symm

/-! ## The beta moments of `a(α)` -/

/-- `∫_0^1 a(α)² dα = 1/30`. -/
theorem integral_weightA_sq : ∫ al in (0 : ℝ)..1, (weightA al) ^ 2 = 1 / 30 := by
  have hderiv : ∀ al : ℝ,
      HasDerivAt (fun t : ℝ => t ^ 3 / 3 - t ^ 4 / 2 + t ^ 5 / 5)
        ((weightA al) ^ 2) al := by
    intro al
    have h3 : HasDerivAt (fun t : ℝ => t ^ 3 / 3) (3 * al ^ 2 / 3) al :=
      (hasDerivAt_pow 3 al).div_const 3
    have h4 : HasDerivAt (fun t : ℝ => t ^ 4 / 2) (4 * al ^ 3 / 2) al :=
      (hasDerivAt_pow 4 al).div_const 2
    have h5 : HasDerivAt (fun t : ℝ => t ^ 5 / 5) (5 * al ^ 4 / 5) al :=
      (hasDerivAt_pow 5 al).div_const 5
    have h := (h3.sub h4).add h5
    convert h using 1
    unfold weightA
    ring
  have hint : IntervalIntegrable (fun al : ℝ => (weightA al) ^ 2) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al)) ^ 2).intervalIntegrable 0 1
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
  rw [h]
  norm_num

/-- `∫_0^1 a(α)³ dα = 1/140`. -/
theorem integral_weightA_cu : ∫ al in (0 : ℝ)..1, (weightA al) ^ 3 = 1 / 140 := by
  have hderiv : ∀ al : ℝ,
      HasDerivAt (fun t : ℝ => t ^ 4 / 4 - 3 * t ^ 5 / 5 + t ^ 6 / 2 - t ^ 7 / 7)
        ((weightA al) ^ 3) al := by
    intro al
    have h4 : HasDerivAt (fun t : ℝ => t ^ 4 / 4) (4 * al ^ 3 / 4) al :=
      (hasDerivAt_pow 4 al).div_const 4
    have h5 : HasDerivAt (fun t : ℝ => 3 * t ^ 5 / 5) (3 * (5 * al ^ 4) / 5) al :=
      ((hasDerivAt_pow 5 al).const_mul 3).div_const 5
    have h6 : HasDerivAt (fun t : ℝ => t ^ 6 / 2) (6 * al ^ 5 / 2) al :=
      (hasDerivAt_pow 6 al).div_const 2
    have h7 : HasDerivAt (fun t : ℝ => t ^ 7 / 7) (7 * al ^ 6 / 7) al :=
      (hasDerivAt_pow 7 al).div_const 7
    have h := ((h4.sub h5).add h6).sub h7
    convert h using 1
    unfold weightA
    ring
  have hint : IntervalIntegrable (fun al : ℝ => (weightA al) ^ 3) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al)) ^ 3).intervalIntegrable 0 1
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
  rw [h]
  norm_num

/-! ## Pointwise bounds for `φ(z) - 1 + z²/2` -/

/-- The remainder is nonnegative for `y ≥ 0`. -/
theorem phi_remainder_nonneg (y : ℝ) (hy : 0 ≤ y) :
    0 ≤ (1 + y) * Real.exp (-y) - 1 + y ^ 2 / 2 := by
  rw [phi_remainder y]
  have hcont : IntervalIntegrable (fun s : ℝ => s * (1 - Real.exp (-s))) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s * (1 - Real.exp (-s))).intervalIntegrable 0 y
  have hmono : (∫ s in (0 : ℝ)..y, (0 : ℝ))
      ≤ ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s)) := by
    apply intervalIntegral.integral_mono_on hy intervalIntegrable_const hcont
    intro s hs
    have hs0 : 0 ≤ s := hs.1
    have hexp : Real.exp (-s) ≤ 1 := by
      rw [← Real.exp_zero]
      exact Real.exp_le_exp.mpr (by linarith)
    exact mul_nonneg hs0 (by linarith)
  simpa using hmono

/-- The remainder is at most `y³/3` for `y ≥ 0`. -/
theorem phi_remainder_le_cubic (y : ℝ) (hy : 0 ≤ y) :
    (1 + y) * Real.exp (-y) - 1 + y ^ 2 / 2 ≤ y ^ 3 / 3 := by
  rw [phi_remainder y]
  have h1 : IntervalIntegrable (fun s : ℝ => s * (1 - Real.exp (-s))) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s * (1 - Real.exp (-s))).intervalIntegrable 0 y
  have h2 : IntervalIntegrable (fun s : ℝ => s ^ 2) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s ^ 2).intervalIntegrable 0 y
  have hmono : ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))
      ≤ ∫ s in (0 : ℝ)..y, s ^ 2 := by
    apply intervalIntegral.integral_mono_on hy h1 h2
    intro s hs
    have hs0 : 0 ≤ s := hs.1
    have hle : 1 - Real.exp (-s) ≤ s := by
      nlinarith [Real.add_one_le_exp (-s)]
    calc s * (1 - Real.exp (-s)) ≤ s * s := mul_le_mul_of_nonneg_left hle hs0
      _ = s ^ 2 := by ring
  have hval : ∫ s in (0 : ℝ)..y, s ^ 2 = y ^ 3 / 3 := by
    have hderiv : ∀ x : ℝ, HasDerivAt (fun t : ℝ => t ^ 3 / 3) (x ^ 2) x := by
      intro x
      have h := (hasDerivAt_pow 3 x).div_const 3
      convert h using 1
      ring
    have hint : IntervalIntegrable (fun s : ℝ => s ^ 2) volume (0 : ℝ) y := h2
    have hh := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
    rw [hh]
    ring
  linarith [hmono, hval]

/-- The remainder is at most `y²/2` for `y ≥ 0`. -/
theorem phi_remainder_le_quadratic (y : ℝ) (hy : 0 ≤ y) :
    (1 + y) * Real.exp (-y) - 1 + y ^ 2 / 2 ≤ y ^ 2 / 2 := by
  rw [phi_remainder y]
  have h1 : IntervalIntegrable (fun s : ℝ => s * (1 - Real.exp (-s))) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s * (1 - Real.exp (-s))).intervalIntegrable 0 y
  have h2 : IntervalIntegrable (fun s : ℝ => s) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s).intervalIntegrable 0 y
  have hmono : ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s)) ≤ ∫ s in (0 : ℝ)..y, s := by
    apply intervalIntegral.integral_mono_on hy h1 h2
    intro s hs
    have hs0 : 0 ≤ s := hs.1
    have hle : 1 - Real.exp (-s) ≤ 1 := by
      have := Real.exp_pos (-s)
      linarith
    calc s * (1 - Real.exp (-s)) ≤ s * 1 := mul_le_mul_of_nonneg_left hle hs0
      _ = s := by ring
  have hval : ∫ s in (0 : ℝ)..y, s = y ^ 2 / 2 := by
    have hderiv : ∀ x : ℝ, HasDerivAt (fun t : ℝ => t ^ 2 / 2) x x := by
      intro x
      have h := (hasDerivAt_pow 2 x).div_const 2
      convert h using 1
      ring
    have hint : IntervalIntegrable (fun s : ℝ => s) volume (0 : ℝ) y := h2
    have hh := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
    rw [hh]
    ring
  linarith [hmono, hval]

/-! ## `R2` as the `α`-average of the remainder -/

/-- `R2(x) = (1/2)∫_0^1 [φ(a(α)x) - 1 + (a(α)x)²/2] dα`. -/
theorem R2_eq_half_integral (x : ℝ) :
    R2 x = (1 / 2) * ∫ al in (0 : ℝ)..1, phiR2 al x := by
  have hphi : IntervalIntegrable
      (fun al : ℝ => (1 + weightA al * x) * Real.exp (-(weightA al * x))) volume (0 : ℝ) 1 :=
    (by continuity :
        Continuous fun al : ℝ =>
          (1 + al * (1 - al) * x) * Real.exp (-(al * (1 - al) * x))).intervalIntegrable 0 1
  have hsq : IntervalIntegrable
      (fun al : ℝ => (weightA al * x) ^ 2 / 2) volume (0 : ℝ) 1 :=
    (by continuity :
        Continuous fun al : ℝ => (al * (1 - al) * x) ^ 2 / 2).intervalIntegrable 0 1
  have hcongr_int : ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 2 / 2
      = (x ^ 2 / 2) * ∫ al in (0 : ℝ)..1, (weightA al) ^ 2 := by
    have hcongr : ∀ al : ℝ, (weightA al * x) ^ 2 / 2 = (x ^ 2 / 2) * (weightA al) ^ 2 := by
      intro al
      ring
    simp only [hcongr]
    rw [intervalIntegral.integral_const_mul]
  have hsplit : ∫ al in (0 : ℝ)..1, phiR2 al x
      = (∫ al in (0 : ℝ)..1, (1 + weightA al * x) * Real.exp (-(weightA al * x)))
        - 1 + (x ^ 2 / 2) * (1 / 30) := by
    show ∫ al in (0 : ℝ)..1,
        ((1 + weightA al * x) * Real.exp (-(weightA al * x)) - 1
          + (weightA al * x) ^ 2 / 2) = _
    rw [intervalIntegral.integral_add (hphi.sub intervalIntegrable_const) hsq,
      intervalIntegral.integral_sub hphi intervalIntegrable_const,
      intervalIntegral.integral_const, hcongr_int, integral_weightA_sq]
    norm_num
  rw [hsplit]
  unfold R2 Ffun
  ring

/-! ## Proposition 4.3: the kernel bound -/

/-- Proposition 4.3, `(4.7)`: the kernel is nonnegative. -/
theorem R2_nonneg (x : ℝ) (hx : 0 ≤ x) : 0 ≤ R2 x := by
  rw [R2_eq_half_integral]
  refine mul_nonneg (by norm_num) ?_
  have hcont : IntervalIntegrable (fun al : ℝ => phiR2 al x) volume (0 : ℝ) 1 :=
    (by continuity :
        Continuous fun al : ℝ =>
          (1 + al * (1 - al) * x) * Real.exp (-(al * (1 - al) * x)) - 1
            + (al * (1 - al) * x) ^ 2 / 2).intervalIntegrable 0 1
  have hmono : (∫ al in (0 : ℝ)..1, (0 : ℝ)) ≤ ∫ al in (0 : ℝ)..1, phiR2 al x := by
    apply intervalIntegral.integral_mono_on zero_le_one intervalIntegrable_const hcont
    intro al hal
    have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
    have hy : 0 ≤ weightA al * x := mul_nonneg ha0 hx
    show (0 : ℝ) ≤ phiR2 al x
    rw [phiR2]
    exact phi_remainder_nonneg (weightA al * x) hy
  simpa using hmono

/-- Proposition 4.3, `(4.7)`: `R2(x) ≤ x³/840`. -/
theorem R2_le_cubic (x : ℝ) (hx : 0 ≤ x) : R2 x ≤ x ^ 3 / 840 := by
  rw [R2_eq_half_integral]
  have hcont : IntervalIntegrable (fun al : ℝ => phiR2 al x) volume (0 : ℝ) 1 :=
    (by continuity :
        Continuous fun al : ℝ =>
          (1 + al * (1 - al) * x) * Real.exp (-(al * (1 - al) * x)) - 1
            + (al * (1 - al) * x) ^ 2 / 2).intervalIntegrable 0 1
  have hcont3 : IntervalIntegrable (fun al : ℝ => (weightA al * x) ^ 3 / 3) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al) * x) ^ 3 / 3).intervalIntegrable 0 1
  have hmono : ∫ al in (0 : ℝ)..1, phiR2 al x
      ≤ ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 3 / 3 := by
    apply intervalIntegral.integral_mono_on zero_le_one hcont hcont3
    intro al hal
    have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
    have hy : 0 ≤ weightA al * x := mul_nonneg ha0 hx
    show phiR2 al x ≤ (weightA al * x) ^ 3 / 3
    rw [phiR2]
    exact phi_remainder_le_cubic (weightA al * x) hy
  have hval : ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 3 / 3 = x ^ 3 / 420 := by
    have hcongr : ∀ al : ℝ, (weightA al * x) ^ 3 / 3 = (x ^ 3 / 3) * (weightA al) ^ 3 := by
      intro al
      ring
    simp only [hcongr]
    rw [intervalIntegral.integral_const_mul, integral_weightA_cu]
    ring
  calc (1 / 2) * ∫ al in (0 : ℝ)..1, phiR2 al x
      ≤ (1 / 2) * ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 3 / 3 := by linarith
    _ = x ^ 3 / 840 := by rw [hval]; ring

/-- Proposition 4.3, `(4.7)`: `R2(x) ≤ x²/120`. -/
theorem R2_le_quadratic (x : ℝ) (hx : 0 ≤ x) : R2 x ≤ x ^ 2 / 120 := by
  rw [R2_eq_half_integral]
  have hcont : IntervalIntegrable (fun al : ℝ => phiR2 al x) volume (0 : ℝ) 1 :=
    (by continuity :
        Continuous fun al : ℝ =>
          (1 + al * (1 - al) * x) * Real.exp (-(al * (1 - al) * x)) - 1
            + (al * (1 - al) * x) ^ 2 / 2).intervalIntegrable 0 1
  have hcont2 : IntervalIntegrable (fun al : ℝ => (weightA al * x) ^ 2 / 2) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al) * x) ^ 2 / 2).intervalIntegrable 0 1
  have hmono : ∫ al in (0 : ℝ)..1, phiR2 al x
      ≤ ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 2 / 2 := by
    apply intervalIntegral.integral_mono_on zero_le_one hcont hcont2
    intro al hal
    have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
    have hy : 0 ≤ weightA al * x := mul_nonneg ha0 hx
    show phiR2 al x ≤ (weightA al * x) ^ 2 / 2
    rw [phiR2]
    exact phi_remainder_le_quadratic (weightA al * x) hy
  have hval : ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 2 / 2 = x ^ 2 / 60 := by
    have hcongr : ∀ al : ℝ, (weightA al * x) ^ 2 / 2 = (x ^ 2 / 2) * (weightA al) ^ 2 := by
      intro al
      ring
    simp only [hcongr]
    rw [intervalIntegral.integral_const_mul, integral_weightA_sq]
    ring
  calc (1 / 2) * ∫ al in (0 : ℝ)..1, phiR2 al x
      ≤ (1 / 2) * ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 2 / 2 := by linarith
    _ = x ^ 2 / 120 := by rw [hval]; ring

/-- Proposition 4.3, `(4.7)`, exactly as printed:
`0 ≤ R2(x) ≤ min(x³/840, x²/120)` for `x ≥ 0`. -/
theorem R2_bound (x : ℝ) (hx : 0 ≤ x) :
    0 ≤ R2 x ∧ R2 x ≤ min (x ^ 3 / 840) (x ^ 2 / 120) :=
  ⟨R2_nonneg x hx, le_min (R2_le_cubic x hx) (R2_le_quadratic x hx)⟩

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.phi_remainder
#print axioms PairedDirac.Manuscript.integral_weightA_sq
#print axioms PairedDirac.Manuscript.integral_weightA_cu
#print axioms PairedDirac.Manuscript.phi_remainder_nonneg
#print axioms PairedDirac.Manuscript.phi_remainder_le_cubic
#print axioms PairedDirac.Manuscript.phi_remainder_le_quadratic
#print axioms PairedDirac.Manuscript.R2_eq_half_integral
#print axioms PairedDirac.Manuscript.R2_nonneg
#print axioms PairedDirac.Manuscript.R2_le_cubic
#print axioms PairedDirac.Manuscript.R2_le_quadratic
#print axioms PairedDirac.Manuscript.R2_bound

import ManuscriptR2Assembly
import Mathlib.Analysis.SpecialFunctions.Integrability.Basic
import Mathlib.Analysis.SpecialFunctions.Integrability.Basic

/-!
# Manuscript formalization: towards the `(4.3)` integral value

The reduction of `I = ∫₀^∞ R3(s²)ds/s⁸` needs the double integral

```text
I = (1/2) ∫₀¹ ∫₀^∞ x^(-9/2) [ H(a(α)x) - (a(α)x)³/3 ] dx dα
```

(certified shape: `R3_eq_cancellation`). Interchanging the two integrals needs a
dominating function for the inner integrand, uniform in `α`. This file supplies
the analytic core of that domination.

**Not** done here: the interchange (dominated convergence in `α`), the
`α`-integral (`B(9/2,9/2)`), the half-integer `Gamma` values, and the final
arithmetic. The value `-5π^{3/2}/49152` is therefore *not* certified by this
file.
-/

set_option maxHeartbeats 1000000

namespace PairedDirac.Manuscript

open MeasureTheory

/-- `H(y) = ∫₀^y s(1-e^{-s})ds`, the kernel integral of `(4.1)`. -/
noncomputable def Hint (y : ℝ) : ℝ :=
  ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))

/-- `H(y) = y²/2 - 1 + (1+y)e^{-y}`. -/
theorem Hint_closed (y : ℝ) : Hint y = y ^ 2 / 2 - 1 + (1 + y) * Real.exp (-y) := by
  have hderiv : ∀ t : ℝ,
      HasDerivAt (fun t : ℝ => t ^ 2 / 2 - 1 + (1 + t) * Real.exp (-t))
        (t * (1 - Real.exp (-t))) t := by
    intro t
    have h2 : HasDerivAt (fun s : ℝ => s ^ 2 / 2) t t := by
      have h := (hasDerivAt_pow 2 t).div_const 2
      convert h using 1
      ring
    have hexp : HasDerivAt (fun s : ℝ => Real.exp (-s)) (-Real.exp (-t)) t := by
      have h := (Real.hasDerivAt_exp (-t)).comp t (hasDerivAt_neg t)
      simpa using h
    have hlin : HasDerivAt (fun s : ℝ => (1 : ℝ) + s) 1 t := by
      simpa using (hasDerivAt_id t).const_add 1
    have hprod : HasDerivAt (fun s : ℝ => (1 + s) * Real.exp (-s))
        (1 * Real.exp (-t) + (1 + t) * (-Real.exp (-t))) t := hlin.mul hexp
    have h := (h2.sub_const 1).add hprod
    convert h using 1
    ring
  have hint : IntervalIntegrable (fun s : ℝ => s * (1 - Real.exp (-s))) volume (0 : ℝ) y :=
    (by continuity : Continuous fun s : ℝ => s * (1 - Real.exp (-s))).intervalIntegrable 0 y
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
  have h0 : (0 : ℝ) ^ 2 / 2 - 1 + (1 + 0) * Real.exp (-(0 : ℝ)) = 0 := by norm_num
  show (∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s)))
      = y ^ 2 / 2 - 1 + (1 + y) * Real.exp (-y)
  rw [h, h0, sub_zero]

/-- `H(y) ≤ y²/2` for `y ≥ 0`. -/
theorem Hint_le {y : ℝ} (hy : 0 ≤ y) : Hint y ≤ y ^ 2 / 2 := by
  rw [Hint_closed]
  have h1 : (1 : ℝ) + y ≤ Real.exp y := by
    simpa [add_comm] using Real.add_one_le_exp y
  have h2 : (0 : ℝ) < Real.exp (-y) := Real.exp_pos _
  have hmul : (1 + y) * Real.exp (-y) ≤ Real.exp y * Real.exp (-y) :=
    mul_le_mul_of_nonneg_right h1 h2.le
  have hone : Real.exp y * Real.exp (-y) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  linarith

/-- `H(y) ≥ -1` for `y ≥ 0`. (For `y < 0` this is false.) -/
theorem Hint_ge_neg_one {y : ℝ} (hy : 0 ≤ y) : -1 ≤ Hint y := by
  rw [Hint_closed]
  have h1 : (0 : ℝ) ≤ y ^ 2 / 2 := by positivity
  have h2 : (0 : ℝ) ≤ (1 + y) * Real.exp (-y) :=
    mul_nonneg (by linarith) (Real.exp_pos _).le
  linarith

/-- `|H(y)| ≤ 1 + y²/2` for `y ≥ 0`. -/
theorem Hint_abs_le {y : ℝ} (hy : 0 ≤ y) : |Hint y| ≤ 1 + y ^ 2 / 2 := by
  rw [abs_le]
  constructor
  · nlinarith [Hint_ge_neg_one hy, sq_nonneg y]
  · linarith [Hint_le hy]

/-- Large-`y` regime: `|H(y) - y³/3| ≤ 1 + y²/2 + y³/3`. -/
theorem Hint_sub_abs_le {y : ℝ} (hy : 0 ≤ y) :
    |Hint y - y ^ 3 / 3| ≤ 1 + y ^ 2 / 2 + y ^ 3 / 3 := by
  have h1 : |Hint y| ≤ 1 + y ^ 2 / 2 := Hint_abs_le hy
  have h2 : |y ^ 3 / 3| = y ^ 3 / 3 := abs_of_nonneg (by positivity)
  calc |Hint y - y ^ 3 / 3| ≤ |Hint y| + |y ^ 3 / 3| := abs_sub _ _
    _ ≤ (1 + y ^ 2 / 2) + y ^ 3 / 3 := by rw [h2]; linarith

/-- Small-`y` regime: `|H(y) - y³/3| ≤ y⁴/8` for `0 ≤ y ≤ 1`. -/
theorem Hint_sub_abs_le_quartic {y : ℝ} (hy0 : 0 ≤ y) (hy1 : y ≤ 1) :
    |Hint y - y ^ 3 / 3| ≤ y ^ 4 / 8 := by
  have hE := H_expansion y hy0
  obtain ⟨hlo, hhi⟩ := hE
  show |(∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))) - y ^ 3 / 3| ≤ y ^ 4 / 8
  have hlow : -(y ^ 4 / 8) ≤ (∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))) - y ^ 3 / 3 := by
    linarith
  have hy5 : y ^ 5 ≤ y ^ 4 := by
    have h : y ^ 5 = y ^ 4 * y := by ring
    have hle : y ^ 4 * y ≤ y ^ 4 * 1 := mul_le_mul_of_nonneg_left hy1 (by positivity)
    linarith
  have hhigh : (∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))) - y ^ 3 / 3 ≤ 0 := by linarith
  rw [abs_of_nonpos hhigh]
  linarith

/-- `x^(-9/2) · x^4 = x^(-1/2)`. -/
theorem rpow_neg9_mul_four (x : ℝ) (hx : 0 < x) :
    x ^ (-(9 : ℝ) / 2) * x ^ 4 = x ^ (-(1 : ℝ) / 2) := by
  rw [← Real.rpow_natCast x 4, ← Real.rpow_add hx]
  norm_num

/-- `x^(-9/2) · x^2 = x^(-5/2)`. -/
theorem rpow_neg9_mul_two (x : ℝ) (hx : 0 < x) :
    x ^ (-(9 : ℝ) / 2) * x ^ 2 = x ^ (-(5 : ℝ) / 2) := by
  rw [← Real.rpow_natCast x 2, ← Real.rpow_add hx]
  norm_num

/-- `x^(-9/2) · x^3 = x^(-3/2)`. -/
theorem rpow_neg9_mul_three (x : ℝ) (hx : 0 < x) :
    x ^ (-(9 : ℝ) / 2) * x ^ 3 = x ^ (-(3 : ℝ) / 2) := by
  rw [← Real.rpow_natCast x 3, ← Real.rpow_add hx]
  norm_num

/-- The dominating bound for the inner integrand, uniform in `α ∈ [0,1]`. -/
theorem kernel_pointwise_dominated (al x : ℝ) (hal : al ∈ Set.Icc (0 : ℝ) 1) (hx : 0 < x) :
    |x ^ (-(9 : ℝ) / 2) * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3)|
      ≤ x ^ (-(1 : ℝ) / 2) / 8 + (11 / 6) * x ^ (-(3 : ℝ) / 2) := by
  have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
  have ha1 : weightA al ≤ 1 := weightA_le_one hal.1 hal.2
  have hxp : (0 : ℝ) ≤ x ^ (-(9 : ℝ) / 2) := Real.rpow_nonneg hx.le _
  have hax : 0 ≤ weightA al * x := mul_nonneg ha0 hx.le
  rw [abs_mul, abs_of_nonneg hxp]
  by_cases hsmall : weightA al * x ≤ 1
  · have hb := Hint_sub_abs_le_quartic hax hsmall
    have hmono : x ^ (-(9 : ℝ) / 2) * |Hint (weightA al * x) - (weightA al * x) ^ 3 / 3|
        ≤ x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 4 / 8) :=
      mul_le_mul_of_nonneg_left hb hxp
    have hval : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 4 / 8)
        = (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) := by
      have h1 : (weightA al * x) ^ 4 = (weightA al) ^ 4 * x ^ 4 := by ring
      have h2 := rpow_neg9_mul_four x hx
      rw [h1]
      calc x ^ (-(9 : ℝ) / 2) * ((weightA al) ^ 4 * x ^ 4 / 8)
          = (weightA al) ^ 4 / 8 * (x ^ (-(9 : ℝ) / 2) * x ^ 4) := by ring
        _ = (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) := by rw [h2]
    rw [hval] at hmono
    have ha4 : (weightA al) ^ 4 ≤ 1 := by
      calc (weightA al) ^ 4 ≤ 1 ^ 4 := pow_le_pow_left₀ ha0 ha1 4
        _ = 1 := by norm_num
    have h8 : (0 : ℝ) ≤ x ^ (-(1 : ℝ) / 2) := Real.rpow_nonneg hx.le _
    have hle : (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) ≤ x ^ (-(1 : ℝ) / 2) / 8 := by
      calc (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) ≤ 1 / 8 * x ^ (-(1 : ℝ) / 2) := by
            apply mul_le_mul_of_nonneg_right _ h8
            linarith
        _ = x ^ (-(1 : ℝ) / 2) / 8 := by ring
    have hpos2 : (0 : ℝ) ≤ (11 / 6) * x ^ (-(3 : ℝ) / 2) := by positivity
    linarith
  · push_neg at hsmall
    have hx1 : (1 : ℝ) < x := by nlinarith [hsmall, ha1, hx]
    have hb := Hint_sub_abs_le hax
    have hmono : x ^ (-(9 : ℝ) / 2) * |Hint (weightA al * x) - (weightA al * x) ^ 3 / 3|
        ≤ x ^ (-(9 : ℝ) / 2) * (1 + (weightA al * x) ^ 2 / 2 + (weightA al * x) ^ 3 / 3) :=
      mul_le_mul_of_nonneg_left hb hxp
    have t1 : x ^ (-(9 : ℝ) / 2) * 1 ≤ x ^ (-(3 : ℝ) / 2) := by
      have hle : x ^ (-(9 : ℝ) / 2) ≤ x ^ (-(3 : ℝ) / 2) :=
        Real.rpow_le_rpow_of_exponent_le hx1.le (by norm_num)
      linarith
    have t2 : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
        ≤ x ^ (-(3 : ℝ) / 2) / 2 := by
      have h2eq : (weightA al * x) ^ 2 = (weightA al) ^ 2 * x ^ 2 := by ring
      have hrw := rpow_neg9_mul_two x hx
      have hval : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
          = (weightA al) ^ 2 / 2 * x ^ (-(5 : ℝ) / 2) := by
        rw [h2eq]
        calc x ^ (-(9 : ℝ) / 2) * ((weightA al) ^ 2 * x ^ 2 / 2)
            = (weightA al) ^ 2 / 2 * (x ^ (-(9 : ℝ) / 2) * x ^ 2) := by ring
          _ = (weightA al) ^ 2 / 2 * x ^ (-(5 : ℝ) / 2) := by rw [hrw]
      have ha2 : (weightA al) ^ 2 ≤ 1 := by
        calc (weightA al) ^ 2 ≤ 1 ^ 2 := pow_le_pow_left₀ ha0 ha1 2
          _ = 1 := by norm_num
      have hmono5 : x ^ (-(5 : ℝ) / 2) ≤ x ^ (-(3 : ℝ) / 2) :=
        Real.rpow_le_rpow_of_exponent_le hx1.le (by norm_num)
      have hp5 : (0 : ℝ) ≤ x ^ (-(5 : ℝ) / 2) := Real.rpow_nonneg hx.le _
      rw [hval]
      calc (weightA al) ^ 2 / 2 * x ^ (-(5 : ℝ) / 2)
          ≤ 1 / 2 * x ^ (-(5 : ℝ) / 2) := by
            apply mul_le_mul_of_nonneg_right _ hp5
            linarith
        _ ≤ 1 / 2 * x ^ (-(3 : ℝ) / 2) := by linarith [hmono5]
        _ = x ^ (-(3 : ℝ) / 2) / 2 := by ring
    have t3 : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3)
        ≤ x ^ (-(3 : ℝ) / 2) / 3 := by
      have h3eq : (weightA al * x) ^ 3 = (weightA al) ^ 3 * x ^ 3 := by ring
      have hrw := rpow_neg9_mul_three x hx
      have hval : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3)
          = (weightA al) ^ 3 / 3 * x ^ (-(3 : ℝ) / 2) := by
        rw [h3eq]
        calc x ^ (-(9 : ℝ) / 2) * ((weightA al) ^ 3 * x ^ 3 / 3)
            = (weightA al) ^ 3 / 3 * (x ^ (-(9 : ℝ) / 2) * x ^ 3) := by ring
          _ = (weightA al) ^ 3 / 3 * x ^ (-(3 : ℝ) / 2) := by rw [hrw]
      have ha3 : (weightA al) ^ 3 ≤ 1 := by
        calc (weightA al) ^ 3 ≤ 1 ^ 3 := pow_le_pow_left₀ ha0 ha1 3
          _ = 1 := by norm_num
      have hp3 : (0 : ℝ) ≤ x ^ (-(3 : ℝ) / 2) := Real.rpow_nonneg hx.le _
      rw [hval]
      calc (weightA al) ^ 3 / 3 * x ^ (-(3 : ℝ) / 2)
          ≤ 1 / 3 * x ^ (-(3 : ℝ) / 2) := by
            apply mul_le_mul_of_nonneg_right _ hp3
            linarith
        _ = x ^ (-(3 : ℝ) / 2) / 3 := by ring
    have hexpand : x ^ (-(9 : ℝ) / 2) * (1 + (weightA al * x) ^ 2 / 2 + (weightA al * x) ^ 3 / 3)
        = x ^ (-(9 : ℝ) / 2) * 1
          + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
          + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3) := by ring
    rw [hexpand] at hmono
    have hsum : x ^ (-(9 : ℝ) / 2) * 1
          + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
          + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3)
        ≤ x ^ (-(3 : ℝ) / 2) + x ^ (-(3 : ℝ) / 2) / 2 + x ^ (-(3 : ℝ) / 2) / 3 := by
      linarith [t1, t2, t3]
    have hfin : x ^ (-(3 : ℝ) / 2) + x ^ (-(3 : ℝ) / 2) / 2 + x ^ (-(3 : ℝ) / 2) / 3
        = (11 / 6) * x ^ (-(3 : ℝ) / 2) := by ring
    have hp1 : (0 : ℝ) ≤ x ^ (-(1 : ℝ) / 2) / 8 := by positivity
    linarith [hmono, hsum, hfin]

/-- `x ↦ x^(-1/2)` is integrable on `(0,1]`. Mathlib has the corresponding
statement for the open interval `(0,t)`; the endpoint `1` is a null set, so
restricting to `Ioo` versus `Ioc` does not change integrability. -/
theorem integrableOn_rpow_neg_half_Ioc :
    IntegrableOn (fun x : ℝ => x ^ (-(1 : ℝ) / 2)) (Set.Ioc 0 1) := by
  have hIoo : IntegrableOn (fun x : ℝ => x ^ (-(1 : ℝ) / 2)) (Set.Ioo 0 1) :=
    (intervalIntegral.integrableOn_Ioo_rpow_iff zero_lt_one).mpr (by norm_num)
  have hset : Set.Ioc (0 : ℝ) 1 \ Set.Ioo 0 1 = {1} := by
    ext x
    constructor
    · intro hx
      obtain ⟨⟨h0, h1⟩, h2⟩ := hx
      have hx1 : x = 1 := by
        rcases lt_or_eq_of_le h1 with hlt | heq
        · exact absurd ⟨h0, hlt⟩ h2
        · exact heq
      simpa using hx1
    · intro hx
      have hx1 : x = 1 := by simpa using hx
      subst hx1
      exact ⟨⟨zero_lt_one, le_refl 1⟩, by simp⟩
  have hnull : volume (Set.Ioc (0 : ℝ) 1 \ Set.Ioo 0 1) = 0 := by
    rw [hset, Real.volume_singleton]
  have hother : volume (Set.Ioo (0 : ℝ) 1 \ Set.Ioc 0 1) = 0 := by
    rw [Set.diff_eq_empty.2 Set.Ioo_subset_Ioc_self]
    simp
  have hae : Set.Ioo (0 : ℝ) 1 =ᵐ[volume] Set.Ioc 0 1 := by
    rw [MeasureTheory.ae_eq_set]
    exact ⟨hother, hnull⟩
  have hcongr : (volume.restrict (Set.Ioo (0 : ℝ) 1))
      = (volume.restrict (Set.Ioc (0 : ℝ) 1)) :=
    Measure.restrict_congr_set hae
  show Integrable (fun x : ℝ => x ^ (-(1 : ℝ) / 2)) (volume.restrict (Set.Ioc 0 1))
  rw [← hcongr]
  exact hIoo

/-- `x ↦ (11/6)·x^(-3/2)` is integrable on `(1,∞)`. -/
theorem integrableOn_rpow_neg_three_halves_Ioi :
    IntegrableOn (fun x : ℝ => (11 / 6) * x ^ (-(3 : ℝ) / 2)) (Set.Ioi 1) := by
  have hbase : IntegrableOn (fun x : ℝ => x ^ (-(3 : ℝ) / 2)) (Set.Ioi 1) :=
    (integrableOn_Ioi_rpow_iff zero_lt_one).mpr (by norm_num)
  exact hbase.const_mul (11 / 6)

/-- Small regime, uniform in `α`: for `0 < x ≤ 1` the quartic cancellation gives
`x^(-1/2)/8`. -/
theorem kernel_dominated_small (al x : ℝ) (hal : al ∈ Set.Icc (0 : ℝ) 1)
    (hx : 0 < x) (hx1 : x ≤ 1) :
    |x ^ (-(9 : ℝ) / 2) * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3)|
      ≤ x ^ (-(1 : ℝ) / 2) / 8 := by
  have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
  have ha1 : weightA al ≤ 1 := weightA_le_one hal.1 hal.2
  have hxp : (0 : ℝ) ≤ x ^ (-(9 : ℝ) / 2) := Real.rpow_nonneg hx.le _
  have hax : 0 ≤ weightA al * x := mul_nonneg ha0 hx.le
  have hsmall : weightA al * x ≤ 1 := by nlinarith [ha1, hx1, hax, hx.le]
  rw [abs_mul, abs_of_nonneg hxp]
  have hb := Hint_sub_abs_le_quartic hax hsmall
  have hmono : x ^ (-(9 : ℝ) / 2) * |Hint (weightA al * x) - (weightA al * x) ^ 3 / 3|
      ≤ x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 4 / 8) :=
    mul_le_mul_of_nonneg_left hb hxp
  have hval : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 4 / 8)
      = (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) := by
    have h1 : (weightA al * x) ^ 4 = (weightA al) ^ 4 * x ^ 4 := by ring
    have h2 := rpow_neg9_mul_four x hx
    rw [h1]
    calc x ^ (-(9 : ℝ) / 2) * ((weightA al) ^ 4 * x ^ 4 / 8)
        = (weightA al) ^ 4 / 8 * (x ^ (-(9 : ℝ) / 2) * x ^ 4) := by ring
      _ = (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) := by rw [h2]
  rw [hval] at hmono
  have ha4 : (weightA al) ^ 4 ≤ 1 := by
    calc (weightA al) ^ 4 ≤ 1 ^ 4 := pow_le_pow_left₀ ha0 ha1 4
      _ = 1 := by norm_num
  have h8 : (0 : ℝ) ≤ x ^ (-(1 : ℝ) / 2) := Real.rpow_nonneg hx.le _
  have hle : (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) ≤ x ^ (-(1 : ℝ) / 2) / 8 := by
    calc (weightA al) ^ 4 / 8 * x ^ (-(1 : ℝ) / 2) ≤ 1 / 8 * x ^ (-(1 : ℝ) / 2) := by
          apply mul_le_mul_of_nonneg_right _ h8
          linarith
      _ = x ^ (-(1 : ℝ) / 2) / 8 := by ring
  linarith

/-- Large regime, uniform in `α`: for `x ≥ 1` the crude bound gives
`(11/6)·x^(-3/2)`. -/
theorem kernel_dominated_large (al x : ℝ) (hal : al ∈ Set.Icc (0 : ℝ) 1)
    (hx : 0 < x) (hx1 : 1 ≤ x) :
    |x ^ (-(9 : ℝ) / 2) * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3)|
      ≤ (11 / 6) * x ^ (-(3 : ℝ) / 2) := by
  have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
  have ha1 : weightA al ≤ 1 := weightA_le_one hal.1 hal.2
  have hxp : (0 : ℝ) ≤ x ^ (-(9 : ℝ) / 2) := Real.rpow_nonneg hx.le _
  have hax : 0 ≤ weightA al * x := mul_nonneg ha0 hx.le
  rw [abs_mul, abs_of_nonneg hxp]
  have hb := Hint_sub_abs_le hax
  have hmono : x ^ (-(9 : ℝ) / 2) * |Hint (weightA al * x) - (weightA al * x) ^ 3 / 3|
      ≤ x ^ (-(9 : ℝ) / 2) * (1 + (weightA al * x) ^ 2 / 2 + (weightA al * x) ^ 3 / 3) :=
    mul_le_mul_of_nonneg_left hb hxp
  have t1 : x ^ (-(9 : ℝ) / 2) * 1 ≤ x ^ (-(3 : ℝ) / 2) := by
    have hle : x ^ (-(9 : ℝ) / 2) ≤ x ^ (-(3 : ℝ) / 2) :=
      Real.rpow_le_rpow_of_exponent_le hx1 (by norm_num)
    linarith
  have t2 : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
      ≤ x ^ (-(3 : ℝ) / 2) / 2 := by
    have h2eq : (weightA al * x) ^ 2 = (weightA al) ^ 2 * x ^ 2 := by ring
    have hrw := rpow_neg9_mul_two x hx
    have hval : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
        = (weightA al) ^ 2 / 2 * x ^ (-(5 : ℝ) / 2) := by
      rw [h2eq]
      calc x ^ (-(9 : ℝ) / 2) * ((weightA al) ^ 2 * x ^ 2 / 2)
          = (weightA al) ^ 2 / 2 * (x ^ (-(9 : ℝ) / 2) * x ^ 2) := by ring
        _ = (weightA al) ^ 2 / 2 * x ^ (-(5 : ℝ) / 2) := by rw [hrw]
    have ha2 : (weightA al) ^ 2 ≤ 1 := by
      calc (weightA al) ^ 2 ≤ 1 ^ 2 := pow_le_pow_left₀ ha0 ha1 2
        _ = 1 := by norm_num
    have hmono5 : x ^ (-(5 : ℝ) / 2) ≤ x ^ (-(3 : ℝ) / 2) :=
      Real.rpow_le_rpow_of_exponent_le hx1 (by norm_num)
    have hp5 : (0 : ℝ) ≤ x ^ (-(5 : ℝ) / 2) := Real.rpow_nonneg hx.le _
    rw [hval]
    calc (weightA al) ^ 2 / 2 * x ^ (-(5 : ℝ) / 2)
        ≤ 1 / 2 * x ^ (-(5 : ℝ) / 2) := by
          apply mul_le_mul_of_nonneg_right _ hp5
          linarith
      _ ≤ 1 / 2 * x ^ (-(3 : ℝ) / 2) := by linarith [hmono5]
      _ = x ^ (-(3 : ℝ) / 2) / 2 := by ring
  have t3 : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3)
      ≤ x ^ (-(3 : ℝ) / 2) / 3 := by
    have h3eq : (weightA al * x) ^ 3 = (weightA al) ^ 3 * x ^ 3 := by ring
    have hrw := rpow_neg9_mul_three x hx
    have hval : x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3)
        = (weightA al) ^ 3 / 3 * x ^ (-(3 : ℝ) / 2) := by
      rw [h3eq]
      calc x ^ (-(9 : ℝ) / 2) * ((weightA al) ^ 3 * x ^ 3 / 3)
          = (weightA al) ^ 3 / 3 * (x ^ (-(9 : ℝ) / 2) * x ^ 3) := by ring
        _ = (weightA al) ^ 3 / 3 * x ^ (-(3 : ℝ) / 2) := by rw [hrw]
    have ha3 : (weightA al) ^ 3 ≤ 1 := by
      calc (weightA al) ^ 3 ≤ 1 ^ 3 := pow_le_pow_left₀ ha0 ha1 3
        _ = 1 := by norm_num
    have hp3 : (0 : ℝ) ≤ x ^ (-(3 : ℝ) / 2) := Real.rpow_nonneg hx.le _
    rw [hval]
    calc (weightA al) ^ 3 / 3 * x ^ (-(3 : ℝ) / 2)
        ≤ 1 / 3 * x ^ (-(3 : ℝ) / 2) := by
          apply mul_le_mul_of_nonneg_right _ hp3
          linarith
      _ = x ^ (-(3 : ℝ) / 2) / 3 := by ring
  have hexpand : x ^ (-(9 : ℝ) / 2) * (1 + (weightA al * x) ^ 2 / 2 + (weightA al * x) ^ 3 / 3)
      = x ^ (-(9 : ℝ) / 2) * 1
        + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
        + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3) := by ring
  rw [hexpand] at hmono
  have hsum : x ^ (-(9 : ℝ) / 2) * 1
        + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 2 / 2)
        + x ^ (-(9 : ℝ) / 2) * ((weightA al * x) ^ 3 / 3)
      ≤ x ^ (-(3 : ℝ) / 2) + x ^ (-(3 : ℝ) / 2) / 2 + x ^ (-(3 : ℝ) / 2) / 3 := by
    linarith [t1, t2, t3]
  have hfin : x ^ (-(3 : ℝ) / 2) + x ^ (-(3 : ℝ) / 2) / 2 + x ^ (-(3 : ℝ) / 2) / 3
      = (11 / 6) * x ^ (-(3 : ℝ) / 2) := by ring
  linarith [hmono, hsum, hfin]

/-- `H` is continuous, from its closed form. Needed for the measurability of the
`(4.3)` integrand in any Fubini argument. -/
theorem continuous_Hint : Continuous Hint := by
  have h : Hint = fun y : ℝ => y ^ 2 / 2 - 1 + (1 + y) * Real.exp (-y) := funext Hint_closed
  rw [h]
  continuity

/-- **The inner `x`-integral exists for every `α ∈ [0,1]`.** For each `α` the
`(4.3)` integrand in cancellation form is integrable on `(0,∞)` — the
domain-side prerequisite for exchanging the `α`- and `x`-integrals. -/
theorem integrableOn_inner (al : ℝ) (hal : al ∈ Set.Icc (0 : ℝ) 1) :
    IntegrableOn (fun x : ℝ => x ^ (-(9 : ℝ) / 2)
      * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3)) (Set.Ioi 0) := by
  set f : ℝ → ℝ := fun x => x ^ (-(9 : ℝ) / 2)
    * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3) with hfdef
  have hHintc : Continuous fun x : ℝ => Hint (weightA al * x) :=
    continuous_Hint.comp (continuous_const.mul continuous_id)
  have hcubc : Continuous fun x : ℝ => (weightA al * x) ^ 3 / 3 :=
    ((continuous_const.mul continuous_id).pow 3).div_const 3
  have hinner : Continuous fun x : ℝ =>
      Hint (weightA al * x) - (weightA al * x) ^ 3 / 3 := hHintc.sub hcubc
  have haes1 : AEStronglyMeasurable f (volume.restrict (Set.Ioc (0 : ℝ) 1)) := by
    rw [hfdef]
    refine ContinuousOn.aestronglyMeasurable ?_ measurableSet_Ioc
    exact (continuousOn_id.rpow_const (fun x hx => Or.inl (ne_of_gt hx.1))).mul
      hinner.continuousOn
  have haes2 : AEStronglyMeasurable f (volume.restrict (Set.Ioi (1 : ℝ))) := by
    rw [hfdef]
    refine ContinuousOn.aestronglyMeasurable ?_ measurableSet_Ioi
    exact (continuousOn_id.rpow_const
      (fun x hx => Or.inl (ne_of_gt (lt_trans zero_lt_one (Set.mem_Ioi.mp hx))))).mul
      hinner.continuousOn
  have hbase1 : IntegrableOn (fun x : ℝ => x ^ (-(1 : ℝ) / 2) / 8) (Set.Ioc (0 : ℝ) 1) := by
    have h := integrableOn_rpow_neg_half_Ioc.const_mul (1 / 8 : ℝ)
    have hfun : (fun x : ℝ => (1 / 8 : ℝ) * x ^ (-(1 : ℝ) / 2))
        = fun x : ℝ => x ^ (-(1 : ℝ) / 2) / 8 := by
      funext x
      ring
    rwa [hfun] at h
  have hbnd1 : ∀ᵐ x ∂(volume.restrict (Set.Ioc (0 : ℝ) 1)),
      ‖f x‖ ≤ x ^ (-(1 : ℝ) / 2) / 8 := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    have hxf : ‖f x‖ = |f x| := Real.norm_eq_abs _
    rw [hxf, hfdef]
    exact kernel_dominated_small al x hal hx.1 hx.2
  have h1 : IntegrableOn f (Set.Ioc (0 : ℝ) 1) := hbase1.mono' haes1 hbnd1
  have hbnd2 : ∀ᵐ x ∂(volume.restrict (Set.Ioi (1 : ℝ))),
      ‖f x‖ ≤ (11 / 6) * x ^ (-(3 : ℝ) / 2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have hx1 : (1 : ℝ) < x := Set.mem_Ioi.mp hx
    have hxf : ‖f x‖ = |f x| := Real.norm_eq_abs _
    rw [hxf, hfdef]
    exact kernel_dominated_large al x hal (lt_trans zero_lt_one hx1) hx1.le
  have h2 : IntegrableOn f (Set.Ioi (1 : ℝ)) :=
    integrableOn_rpow_neg_three_halves_Ioi.mono' haes2 hbnd2
  have h := h1.union h2
  have hset : Set.Ioc (0 : ℝ) 1 ∪ Set.Ioi 1 = Set.Ioi 0 := by
    ext x
    constructor
    · rintro (⟨h0, _⟩ | h1')
      · exact h0
      · exact lt_trans zero_lt_one (Set.mem_Ioi.mp h1')
    · intro hx
      have hx0 : (0 : ℝ) < x := Set.mem_Ioi.mp hx
      by_cases hc : x ≤ 1
      · exact Or.inl ⟨hx0, hc⟩
      · exact Or.inr (Set.mem_Ioi.mpr (not_le.mp hc))
  rw [hset] at h
  exact h

/-- The piecewise dominating function for the `(4.3)` integrand: the quartic
regime bound on `x <= 1`, the crude bound for `x >= 1`. -/
noncomputable def kernelBound (x : ℝ) : ℝ :=
  if x ≤ 1 then x ^ (-(1 : ℝ) / 2) / 8 else (11 / 6) * x ^ (-(3 : ℝ) / 2)

/-- `kernelBound` is integrable on `(0, ∞)`. -/
theorem integrableOn_kernelBound : IntegrableOn kernelBound (Set.Ioi 0) := by
  have h1 : IntegrableOn kernelBound (Set.Ioc (0 : ℝ) 1) := by
    refine IntegrableOn.congr_fun (integrableOn_rpow_neg_half_Ioc.const_mul (1 / 8 : ℝ)) ?_
      measurableSet_Ioc
    intro x hx
    show (1 / 8 : ℝ) * x ^ (-(1 : ℝ) / 2) = kernelBound x
    rw [kernelBound, if_pos hx.2]
    ring
  have h2 : IntegrableOn kernelBound (Set.Ioi (1 : ℝ)) := by
    refine IntegrableOn.congr_fun integrableOn_rpow_neg_three_halves_Ioi ?_ measurableSet_Ioi
    intro x hx
    have hx1 : (1 : ℝ) < x := Set.mem_Ioi.mp hx
    rw [kernelBound, if_neg (not_le.mpr hx1)]
  have h := h1.union h2
  have hset : Set.Ioc (0 : ℝ) 1 ∪ Set.Ioi 1 = Set.Ioi 0 := by
    ext x
    constructor
    · rintro (⟨h0, _⟩ | h1')
      · exact h0
      · exact lt_trans zero_lt_one (Set.mem_Ioi.mp h1')
    · intro hx
      have hx0 : (0 : ℝ) < x := Set.mem_Ioi.mp hx
      by_cases hc : x ≤ 1
      · exact Or.inl ⟨hx0, hc⟩
      · exact Or.inr (Set.mem_Ioi.mpr (not_le.mp hc))
  rwa [hset] at h

/-- **The `α`/`x` interchange for the `(4.3)` integrand** (Tonelli/Fubini). The
double integral may be evaluated in either order. -/
theorem inner_integral_swap :
    (∫ al in (0 : ℝ)..1, ∫ x in Set.Ioi (0 : ℝ),
        x ^ (-(9 : ℝ) / 2) * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3))
      = ∫ x in Set.Ioi (0 : ℝ), (∫ al in (0 : ℝ)..1,
        x ^ (-(9 : ℝ) / 2) * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3)) := by
  set F : ℝ → ℝ → ℝ := fun al x =>
    x ^ (-(9 : ℝ) / 2) * (Hint (weightA al * x) - (weightA al * x) ^ 3 / 3) with hF
  have hw : Continuous fun p : ℝ × ℝ => weightA p.1 * p.2 := by
    unfold weightA
    continuity
  have hcont : ContinuousOn (fun p : ℝ × ℝ => F p.1 p.2)
      (Set.Ioc (0 : ℝ) 1 ×ˢ Set.Ioi (0 : ℝ)) := by
    rw [hF]
    have hhint : Continuous fun p : ℝ × ℝ => Hint (weightA p.1 * p.2) :=
      continuous_Hint.comp hw
    have hcub : Continuous fun p : ℝ × ℝ => (weightA p.1 * p.2) ^ 3 / 3 :=
      (hw.pow 3).div_const 3
    refine ContinuousOn.mul ?_ ((hhint.sub hcub).continuousOn)
    exact continuous_snd.continuousOn.rpow_const (fun p hp => Or.inl (ne_of_gt hp.2))
  have haes : AEStronglyMeasurable (fun p : ℝ × ℝ => F p.1 p.2)
      ((volume.restrict (Set.Ioc (0 : ℝ) 1)).prod (volume.restrict (Set.Ioi (0 : ℝ)))) := by
    have h := hcont.aestronglyMeasurable (μ := volume.prod volume)
      (measurableSet_Ioc.prod measurableSet_Ioi)
    simpa only [Measure.prod_restrict] using h
  have hconst : Integrable (fun _ : ℝ => (1 : ℝ)) (volume.restrict (Set.Ioc (0 : ℝ) 1)) :=
    integrable_const (1 : ℝ)
  have hg : Integrable (fun x : ℝ => kernelBound x) (volume.restrict (Set.Ioi (0 : ℝ))) :=
    integrableOn_kernelBound
  have hmaj : Integrable (fun p : ℝ × ℝ => kernelBound p.2)
      ((volume.restrict (Set.Ioc (0 : ℝ) 1)).prod (volume.restrict (Set.Ioi (0 : ℝ)))) := by
    have h := hconst.mul_prod hg
    simpa using h
  have hbnd : ∀ᵐ p ∂((volume.restrict (Set.Ioc (0 : ℝ) 1)).prod
      (volume.restrict (Set.Ioi (0 : ℝ)))), ‖F p.1 p.2‖ ≤ kernelBound p.2 := by
    rw [Measure.prod_restrict]
    filter_upwards [ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioi)] with p hp
    obtain ⟨hpa, hpx⟩ := hp
    have hal : p.1 ∈ Set.Icc (0 : ℝ) 1 := ⟨le_of_lt hpa.1, hpa.2⟩
    have hxpos : (0 : ℝ) < p.2 := hpx
    have hnorm : ‖F p.1 p.2‖ = |F p.1 p.2| := Real.norm_eq_abs _
    rw [hnorm, hF]
    by_cases hs : p.2 ≤ 1
    · rw [kernelBound, if_pos hs]
      exact kernel_dominated_small p.1 p.2 hal hxpos hs
    · have hx1 : (1 : ℝ) < p.2 := not_le.mp hs
      rw [kernelBound, if_neg hs]
      exact kernel_dominated_large p.1 p.2 hal (lt_trans zero_lt_one hx1) hx1.le
  have hprod := hmaj.mono' haes hbnd
  have hu : Set.uIoc (0 : ℝ) 1 = Set.Ioc (0 : ℝ) 1 := Set.uIoc_of_le zero_le_one
  exact intervalIntegral_integral_swap (μ := volume.restrict (Set.Ioi (0 : ℝ)))
    (by rwa [hu])

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.Hint_closed
#print axioms PairedDirac.Manuscript.Hint_le
#print axioms PairedDirac.Manuscript.Hint_ge_neg_one
#print axioms PairedDirac.Manuscript.Hint_abs_le
#print axioms PairedDirac.Manuscript.Hint_sub_abs_le
#print axioms PairedDirac.Manuscript.Hint_sub_abs_le_quartic
#print axioms PairedDirac.Manuscript.rpow_neg9_mul_four
#print axioms PairedDirac.Manuscript.rpow_neg9_mul_two
#print axioms PairedDirac.Manuscript.rpow_neg9_mul_three
#print axioms PairedDirac.Manuscript.kernel_pointwise_dominated
#print axioms PairedDirac.Manuscript.integrableOn_rpow_neg_half_Ioc
#print axioms PairedDirac.Manuscript.integrableOn_rpow_neg_three_halves_Ioi
#print axioms PairedDirac.Manuscript.kernel_dominated_small
#print axioms PairedDirac.Manuscript.kernel_dominated_large
#print axioms PairedDirac.Manuscript.continuous_Hint
#print axioms PairedDirac.Manuscript.integrableOn_inner
#print axioms PairedDirac.Manuscript.inner_integral_swap
#print axioms PairedDirac.Manuscript.integrableOn_kernelBound
#print axioms PairedDirac.Manuscript.kernelBound

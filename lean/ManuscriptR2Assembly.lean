import ManuscriptSmallOrder
import ManuscriptR2Asymptotics

set_option maxHeartbeats 1000000

/-!
# Manuscript formalization: assembly of the small-`x` kernel expansion

Certifies, on top of `ManuscriptSmallOrder` and the beta moments already in the
repository:

* `g2_closed` — `g₂(s) = 1 - e^{-s} - s + s²/2`, derived from the fundamental
  theorem of calculus with a *term-identical* antiderivative (no `funext` in the
  derivative step);
* `continuous_g2`;
* `exp_cubic_lower` — `1 - s + s²/2 - s³/6 ≤ e^{-s}` for `s ≥ 0`;
* `H_expansion` — `0 ≤ H(y) - (y³/3 - y⁴/8) ≤ y⁵/30`, `H(y) = ∫₀^y s(1-e^{-s})ds`;
* `R2_expansion` — `0 ≤ R2 x - (x³/840 - x⁴/10080) ≤ x⁵/60` for `x ≥ 0`;
* `R3_bound` — `|R3 x| ≤ x⁴(1/10080 + 1/60)` for `0 ≤ x ≤ 1`, i.e. `R3 = O(x⁴)`.

Kernel integrability on `(0, ∞)` is the next increment and is not claimed here.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- `1 - e^{-s} - s + s²/2` is `g₂`: its derivative is `g₁`. The function is
written in exactly the shape the derivative combinators produce, so no
function-level extensionality is needed. -/
theorem g2_closed (s : ℝ) : g2 s = 1 - Real.exp (-s) - s + s ^ 2 / 2 := by
  have hφ : ∀ t : ℝ, HasDerivAt (fun t : ℝ => 1 - Real.exp (-t) - t + t ^ 2 / 2) (g1 t) t := by
    intro t
    have hexp : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-Real.exp (-t)) t := by
      have h := (Real.hasDerivAt_exp (-t)).comp t (hasDerivAt_neg t)
      simpa using h
    have h2 : HasDerivAt (fun t : ℝ => (1 : ℝ) - Real.exp (-t)) (Real.exp (-t)) t := by
      have h := (hasDerivAt_const t 1).sub hexp
      convert h using 1
      ring
    have h3 : HasDerivAt (fun t : ℝ => (1 : ℝ) - Real.exp (-t) - t) (Real.exp (-t) - 1) t :=
      h2.sub (hasDerivAt_id t)
    have hquad : HasDerivAt (fun t : ℝ => t ^ 2 / 2) t t := by
      have h := (hasDerivAt_pow 2 t).div_const 2
      convert h using 1
      ring
    have h4 : HasDerivAt (fun t : ℝ => (1 : ℝ) - Real.exp (-t) - t + t ^ 2 / 2)
        (Real.exp (-t) - 1 + t) t := h3.add hquad
    convert h4 using 1
    unfold g1
    ring
  have hint : IntervalIntegrable (fun u : ℝ => g1 u) volume 0 s :=
    continuous_g1.intervalIntegrable 0 s
  unfold g2
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hφ x) hint
  have h0 : (1 : ℝ) - Real.exp (-(0 : ℝ)) - 0 + 0 ^ 2 / 2 = 0 := by norm_num
  rw [h0, sub_zero] at h
  rw [h]

/-- `g₂` is continuous. -/
theorem continuous_g2 : Continuous g2 := by
  have h : g2 = fun s : ℝ => 1 - Real.exp (-s) - s + s ^ 2 / 2 :=
    funext (fun s => g2_closed s)
  rw [h]
  continuity

/-- The cubic lower Taylor bound: `1 - s + s²/2 - s³/6 ≤ e^{-s}` for `s ≥ 0`. -/
theorem exp_cubic_lower (s : ℝ) (hs : 0 ≤ s) :
    1 - s + s ^ 2 / 2 - s ^ 3 / 6 ≤ Real.exp (-s) := by
  have hψ : ∀ t : ℝ,
      HasDerivAt (fun t : ℝ => Real.exp (-t) - 1 + t - t ^ 2 / 2 + t ^ 3 / 6) (g2 t) t := by
    intro t
    have hexp : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-Real.exp (-t)) t := by
      have h := (Real.hasDerivAt_exp (-t)).comp t (hasDerivAt_neg t)
      simpa using h
    have h2 : HasDerivAt (fun t : ℝ => Real.exp (-t) - 1) (-Real.exp (-t)) t :=
      hexp.sub_const 1
    have h3 : HasDerivAt (fun t : ℝ => Real.exp (-t) - 1 + t) (-Real.exp (-t) + 1) t :=
      h2.add (hasDerivAt_id t)
    have hquad : HasDerivAt (fun t : ℝ => t ^ 2 / 2) t t := by
      have h := (hasDerivAt_pow 2 t).div_const 2
      convert h using 1
      ring
    have h4 : HasDerivAt (fun t : ℝ => Real.exp (-t) - 1 + t - t ^ 2 / 2) (-Real.exp (-t) + 1 - t) t :=
      h3.sub hquad
    have hcub : HasDerivAt (fun t : ℝ => t ^ 3 / 6) (t ^ 2 / 2) t := by
      have h := (hasDerivAt_pow 3 t).div_const 6
      convert h using 1
      ring
    have h5 : HasDerivAt (fun t : ℝ => Real.exp (-t) - 1 + t - t ^ 2 / 2 + t ^ 3 / 6)
        (-Real.exp (-t) + 1 - t + t ^ 2 / 2) t := h4.add hcub
    convert h5 using 1
    rw [g2_closed]
    ring
  have hint : IntervalIntegrable (fun u : ℝ => g2 u) volume 0 s :=
    continuous_g2.intervalIntegrable 0 s
  have hftc := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hψ x) hint
  have hnonneg : (0 : ℝ) ≤ ∫ u in (0 : ℝ)..s, g2 u := by
    have h := intervalIntegral.integral_mono_on hs intervalIntegrable_const hint
      (fun u hu => g2_nonneg u hu.1)
    simpa using h
  have h0 : Real.exp (-(0 : ℝ)) - 1 + 0 - (0:ℝ) ^ 2 / 2 + (0:ℝ) ^ 3 / 6 = 0 := by norm_num
  rw [h0, sub_zero] at hftc
  linarith [hftc, hnonneg]

/-- `H(y) = ∫₀^y s(1-e^{-s}) ds` at the printed order. -/
theorem H_expansion (y : ℝ) (hy : 0 ≤ y) :
    0 ≤ (∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))) - (y ^ 3 / 3 - y ^ 4 / 8) ∧
      (∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))) - (y ^ 3 / 3 - y ^ 4 / 8) ≤ y ^ 5 / 30 := by
  have hf1 : IntervalIntegrable (fun s : ℝ => s * (1 - Real.exp (-s))) volume 0 y :=
    (by continuity : Continuous fun s : ℝ => s * (1 - Real.exp (-s))).intervalIntegrable 0 y
  have hf2 : IntervalIntegrable (fun s : ℝ => s ^ 2 - s ^ 3 / 2) volume 0 y :=
    (by continuity : Continuous fun s : ℝ => s ^ 2 - s ^ 3 / 2).intervalIntegrable 0 y
  have hf3 : IntervalIntegrable (fun s : ℝ => s ^ 2 - s ^ 3 / 2 + s ^ 4 / 6) volume 0 y :=
    (by continuity : Continuous fun s : ℝ => s ^ 2 - s ^ 3 / 2 + s ^ 4 / 6).intervalIntegrable 0 y
  have hlow : ∫ s in (0 : ℝ)..y, (s ^ 2 - s ^ 3 / 2)
      ≤ ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s)) := by
    apply intervalIntegral.integral_mono_on hy hf2 hf1
    intro s hs
    have hs0 : 0 ≤ s := hs.1
    have h := g1_le s hs0
    unfold g1 at h
    have hmul := mul_le_mul_of_nonneg_left h hs0
    nlinarith [hmul]
  have hhigh : ∫ s in (0 : ℝ)..y, s * (1 - Real.exp (-s))
      ≤ ∫ s in (0 : ℝ)..y, (s ^ 2 - s ^ 3 / 2 + s ^ 4 / 6) := by
    apply intervalIntegral.integral_mono_on hy hf1 hf3
    intro s hs
    have hs0 : 0 ≤ s := hs.1
    have h := exp_cubic_lower s hs0
    have hmul := mul_le_mul_of_nonneg_left h hs0
    nlinarith [hmul]
  have hval2 : ∫ s in (0 : ℝ)..y, (s ^ 2 - s ^ 3 / 2) = y ^ 3 / 3 - y ^ 4 / 8 := by
    have hderiv : ∀ x : ℝ,
        HasDerivAt (fun t : ℝ => t ^ 3 / 3 - t ^ 4 / 8) (x ^ 2 - x ^ 3 / 2) x := by
      intro x
      have h3 : HasDerivAt (fun t : ℝ => t ^ 3 / 3) (3 * x ^ 2 / 3) x :=
        (hasDerivAt_pow 3 x).div_const 3
      have h4 : HasDerivAt (fun t : ℝ => t ^ 4 / 8) (4 * x ^ 3 / 8) x :=
        (hasDerivAt_pow 4 x).div_const 8
      have h := h3.sub h4
      convert h using 1
      ring
    have := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hf2
    simpa using this
  have hval3 : ∫ s in (0 : ℝ)..y, (s ^ 2 - s ^ 3 / 2 + s ^ 4 / 6)
      = y ^ 3 / 3 - y ^ 4 / 8 + y ^ 5 / 30 := by
    have hderiv : ∀ x : ℝ,
        HasDerivAt (fun t : ℝ => t ^ 3 / 3 - t ^ 4 / 8 + t ^ 5 / 30)
          (x ^ 2 - x ^ 3 / 2 + x ^ 4 / 6) x := by
      intro x
      have h3 : HasDerivAt (fun t : ℝ => t ^ 3 / 3) (3 * x ^ 2 / 3) x :=
        (hasDerivAt_pow 3 x).div_const 3
      have h4 : HasDerivAt (fun t : ℝ => t ^ 4 / 8) (4 * x ^ 3 / 8) x :=
        (hasDerivAt_pow 4 x).div_const 8
      have h5 : HasDerivAt (fun t : ℝ => t ^ 5 / 30) (5 * x ^ 4 / 30) x :=
        (hasDerivAt_pow 5 x).div_const 30
      have h := (h3.sub h4).add h5
      convert h using 1
      ring
    have := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hf3
    simpa using this
  constructor
  · linarith [hlow, hval2]
  · linarith [hhigh, hval3]

/-- `φ(a(α)x)` is the kernel integral `H(a(α)x)`. -/
theorem phiR2_eq_integral (al x : ℝ) :
    phiR2 al x = ∫ s in (0 : ℝ)..(weightA al * x), s * (1 - Real.exp (-s)) :=
  phi_remainder _

/-- `∫₀¹ (a x)³/3 dα = x³/420`. -/
theorem integral_cubic_term (x : ℝ) :
    ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 3 / 3 = x ^ 3 / 420 := by
  have hcongr : ∀ al : ℝ, (weightA al * x) ^ 3 / 3 = (x ^ 3 / 3) * (weightA al) ^ 3 := by
    intro al
    ring
  simp only [hcongr]
  rw [intervalIntegral.integral_const_mul, integral_weightA_cu]
  ring

/-- `∫₀¹ (a x)⁴/8 dα = x⁴/5040`. -/
theorem integral_quartic_term (x : ℝ) :
    ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 4 / 8 = x ^ 4 / 5040 := by
  have hcongr : ∀ al : ℝ, (weightA al * x) ^ 4 / 8 = (x ^ 4 / 8) * (weightA al) ^ 4 := by
    intro al
    ring
  simp only [hcongr]
  rw [intervalIntegral.integral_const_mul, integral_weightA_quartic]
  ring

/-- `weightA al ≤ 1` on `[0,1]`. -/
theorem weightA_le_one {al : ℝ} (h0 : 0 ≤ al) (h1 : al ≤ 1) : weightA al ≤ 1 := by
  unfold weightA
  nlinarith

/-- Proposition 4.3's small-`x` expansion of `R2`:
`R2(x) = x³/840 - x⁴/10080 + ρ` with `0 ≤ ρ ≤ x⁵/60`. -/
theorem R2_expansion (x : ℝ) (hx : 0 ≤ x) :
    0 ≤ R2 x - (x ^ 3 / 840 - x ^ 4 / 10080) ∧
      R2 x - (x ^ 3 / 840 - x ^ 4 / 10080) ≤ x ^ 5 / 60 := by
  have hphi : ∀ al : ℝ, phiR2 al x = ∫ s in (0 : ℝ)..(weightA al * x), s * (1 - Real.exp (-s)) :=
    fun al => phiR2_eq_integral al x
  have hlow : ∀ al ∈ Set.Icc (0 : ℝ) 1,
      (weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8 ≤ phiR2 al x := by
    intro al hal
    have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
    have hax : 0 ≤ weightA al * x := mul_nonneg ha0 hx
    rw [hphi al]
    linarith [(H_expansion (weightA al * x) hax).1]
  have hhigh : ∀ al ∈ Set.Icc (0 : ℝ) 1,
      phiR2 al x ≤ (weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8
        + (weightA al * x) ^ 5 / 30 := by
    intro al hal
    have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
    have hax : 0 ≤ weightA al * x := mul_nonneg ha0 hx
    rw [hphi al]
    linarith [(H_expansion (weightA al * x) hax).2]
  have hcont : IntervalIntegrable (fun al : ℝ => phiR2 al x) volume (0 : ℝ) 1 :=
    (by continuity :
      Continuous fun al : ℝ =>
        (1 + al * (1 - al) * x) * Real.exp (-(al * (1 - al) * x)) - 1
          + (al * (1 - al) * x) ^ 2 / 2).intervalIntegrable 0 1
  have hcontl : IntervalIntegrable
      (fun al : ℝ => (weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ =>
      (al * (1 - al) * x) ^ 3 / 3 - (al * (1 - al) * x) ^ 4 / 8).intervalIntegrable 0 1
  have hconth : IntervalIntegrable
      (fun al : ℝ => (weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8
        + (weightA al * x) ^ 5 / 30) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ =>
      (al * (1 - al) * x) ^ 3 / 3 - (al * (1 - al) * x) ^ 4 / 8
        + (al * (1 - al) * x) ^ 5 / 30).intervalIntegrable 0 1
  have hmono_low : ∫ al in (0 : ℝ)..1, ((weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8)
      ≤ ∫ al in (0 : ℝ)..1, phiR2 al x :=
    intervalIntegral.integral_mono_on zero_le_one hcontl hcont hlow
  have hmono_high : ∫ al in (0 : ℝ)..1, phiR2 al x
      ≤ ∫ al in (0 : ℝ)..1, ((weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8
          + (weightA al * x) ^ 5 / 30) :=
    intervalIntegral.integral_mono_on zero_le_one hcont hconth hhigh
  have hcont3 : IntervalIntegrable (fun al : ℝ => (weightA al * x) ^ 3 / 3) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al) * x) ^ 3 / 3).intervalIntegrable 0 1
  have hcont4 : IntervalIntegrable (fun al : ℝ => (weightA al * x) ^ 4 / 8) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al) * x) ^ 4 / 8).intervalIntegrable 0 1
  have hcont5 : IntervalIntegrable (fun al : ℝ => (weightA al * x) ^ 5 / 30) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al) * x) ^ 5 / 30).intervalIntegrable 0 1
  have hIlow : ∫ al in (0 : ℝ)..1, ((weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8)
      = x ^ 3 / 420 - x ^ 4 / 5040 := by
    rw [intervalIntegral.integral_sub hcont3 hcont4, integral_cubic_term, integral_quartic_term]
  have hIhigh : ∫ al in (0 : ℝ)..1, ((weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8
        + (weightA al * x) ^ 5 / 30)
      = x ^ 3 / 420 - x ^ 4 / 5040 + ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 5 / 30 := by
    rw [intervalIntegral.integral_add hcontl hcont5, hIlow]
  have hbound5 : ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 5 / 30 ≤ x ^ 5 / 30 := by
    have h2 : IntervalIntegrable (fun al : ℝ => x ^ 5 / 30) volume (0 : ℝ) 1 :=
      intervalIntegrable_const
    have h := intervalIntegral.integral_mono_on zero_le_one hcont5 h2 (fun al hal => by
      have ha0 : 0 ≤ weightA al := weightA_nonneg hal.1 hal.2
      have ha1 : weightA al ≤ 1 := weightA_le_one hal.1 hal.2
      have hle : weightA al * x ≤ x := by nlinarith
      have h5 := pow_le_pow_left₀ (mul_nonneg ha0 hx) hle 5
      linarith)
    have hx5 : ∫ al in (0 : ℝ)..1, x ^ 5 / 30 = x ^ 5 / 30 := by
      simp
    linarith [h, hx5]
  have hR2 := R2_eq_half_integral x
  constructor
  · rw [hR2]
    have h1 : (1 / 2 : ℝ) * (x ^ 3 / 420 - x ^ 4 / 5040)
        ≤ (1 / 2) * ∫ al in (0 : ℝ)..1, phiR2 al x := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      rw [← hIlow]
      exact hmono_low
    linarith [h1]
  · rw [hR2]
    have h1 : (1 / 2 : ℝ) * ∫ al in (0 : ℝ)..1, phiR2 al x
        ≤ (1 / 2) * (x ^ 3 / 420 - x ^ 4 / 5040 + x ^ 5 / 30) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      calc ∫ al in (0 : ℝ)..1, phiR2 al x
          ≤ ∫ al in (0 : ℝ)..1, ((weightA al * x) ^ 3 / 3 - (weightA al * x) ^ 4 / 8
              + (weightA al * x) ^ 5 / 30) := hmono_high
        _ = x ^ 3 / 420 - x ^ 4 / 5040
              + ∫ al in (0 : ℝ)..1, (weightA al * x) ^ 5 / 30 := hIhigh
        _ ≤ x ^ 3 / 420 - x ^ 4 / 5040 + x ^ 5 / 30 := by
            linarith [hbound5]
    linarith [h1]

/-- `R3(x) = O(x⁴)` on `[0,1]`: `|R3 x| ≤ x⁴(1/10080 + 1/60)`. -/
theorem R3_bound (x : ℝ) (hx0 : 0 ≤ x) (hx1 : x ≤ 1) :
    |R3 x| ≤ x ^ 4 * (1 / 10080 + 1 / 60) := by
  obtain ⟨hl, hu⟩ := R2_expansion x hx0
  have hR3 : R3 x = R2 x - x ^ 3 / 840 := rfl
  have hx4 : 0 ≤ x ^ 4 := by positivity
  have hx54 : x ^ 5 ≤ x ^ 4 := by
    have h4 : 0 ≤ x ^ 4 := pow_nonneg hx0 4
    have h := mul_le_mul_of_nonneg_right hx1 h4
    nlinarith [h]
  rw [hR3, abs_le]
  constructor
  · nlinarith [hl]
  · nlinarith [hu, hx54, hx4]

/-- The small-`s` bound on the `(4.3)` kernel: for `0 < s ≤ 1`,
`|R3(s²)|/s⁸ ≤ 1/10080 + 1/60`. -/
theorem R3_kernel_small (s : ℝ) (hs0 : 0 < s) (hs1 : s ≤ 1) :
    |R3 (s ^ 2)| / s ^ 8 ≤ 1 / 10080 + 1 / 60 := by
  have hs2 : (0:ℝ) < s ^ 2 := by positivity
  have hs21 : s ^ 2 ≤ 1 := by nlinarith
  have h := R3_bound (s ^ 2) (le_of_lt hs2) hs21
  have hs8 : (0:ℝ) < s ^ 8 := by positivity
  have hpow : (s ^ 2) ^ 4 = s ^ 8 := by ring
  rw [hpow] at h
  rw [div_le_iff₀ hs8]
  linarith [h]

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.g2_closed
#print axioms PairedDirac.Manuscript.continuous_g2
#print axioms PairedDirac.Manuscript.exp_cubic_lower
#print axioms PairedDirac.Manuscript.H_expansion
#print axioms PairedDirac.Manuscript.integral_cubic_term
#print axioms PairedDirac.Manuscript.integral_quartic_term
#print axioms PairedDirac.Manuscript.R2_expansion
#print axioms PairedDirac.Manuscript.R3_bound
#print axioms PairedDirac.Manuscript.R3_kernel_small

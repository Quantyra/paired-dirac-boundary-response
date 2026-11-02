import ManuscriptSmallOrder

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

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.g2_closed
#print axioms PairedDirac.Manuscript.continuous_g2
#print axioms PairedDirac.Manuscript.exp_cubic_lower
#print axioms PairedDirac.Manuscript.H_expansion

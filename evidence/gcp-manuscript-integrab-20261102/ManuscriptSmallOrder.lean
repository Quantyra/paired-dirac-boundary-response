import ManuscriptCubic

/-!
# Manuscript formalization: the elementary remainder chain behind `R3(x) = O(x⁴)`

The manuscript's `(4.3)` proof needs the small-`x` behaviour of the kernel,
stated there as "`R3(x) = O(x⁴)` at zero" and used in Proposition 4.2's proof as
`R3(x) = -x⁴/10080 + O(x⁵)`.

Writing `g₁(u) = u - 1 + e^{-u}` and `g₂(t) = ∫_0^t g₁`, this file certifies the
analytic inputs of that expansion:

```text
0 ≤ g₁(u)              (all u),
g₁(u) ≤ u²/2           (u ≥ 0),
0 ≤ g₂(t) ≤ t³/6       (t ≥ 0).
```

They give, for `y ≥ 0`,

```text
∫_0^y s(1-e^{-s}) ds = y³/3 - y⁴/8 + ∫_0^y s g₂(s) ds,   0 ≤ ∫_0^y s g₂ ≤ y⁵/30,
```

and hence `R2(x) = x³/840 - x⁴/10080 + O(x⁵)`, `R3(x) = O(x⁴)`. The termwise
integration and the `α`-average with the beta moment `∫₀¹ a⁴ = 1/630` are the
next increment and are **not** claimed here.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- `g₁(u) = u - 1 + e^{-u}`, the first remainder of `1 - e^{-s}`. -/
noncomputable def g1 (u : ℝ) : ℝ := u - 1 + Real.exp (-u)

/-- `g₂(t) = ∫_0^t g₁`. -/
noncomputable def g2 (t : ℝ) : ℝ := ∫ u in (0 : ℝ)..t, g1 u

/-- `g₁` is nonnegative: `1 - u ≤ e^{-u}`. -/
theorem g1_nonneg (u : ℝ) : 0 ≤ g1 u := by
  have h : -u + 1 ≤ Real.exp (-u) := Real.add_one_le_exp (-u)
  unfold g1
  linarith

/-- Derivative of `g₁`. -/
theorem hasDerivAt_g1 (t : ℝ) : HasDerivAt (fun t : ℝ => g1 t) (1 - Real.exp (-t)) t := by
  have h1 : HasDerivAt (fun t : ℝ => t - 1) 1 t := by
    simpa using (hasDerivAt_id t).sub_const 1
  have h2 : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-Real.exp (-t)) t := by
    have h := (Real.hasDerivAt_exp (-t)).comp t (hasDerivAt_neg t)
    simpa using h
  have := h1.add h2
  unfold g1
  convert this using 1

/-- `g₁` is continuous. -/
theorem continuous_g1 : Continuous g1 := by
  unfold g1
  continuity

/-- `g₁(u) ≤ u²/2` for `u ≥ 0`: `g₁` is the integral of `1 - e^{-v} ≤ v`. -/
theorem g1_le (u : ℝ) (hu : 0 ≤ u) : g1 u ≤ u ^ 2 / 2 := by
  have hint : IntervalIntegrable (fun v : ℝ => 1 - Real.exp (-v)) volume 0 u :=
    (by continuity : Continuous fun v : ℝ => 1 - Real.exp (-v)).intervalIntegrable 0 u
  have hftc : ∫ v in (0 : ℝ)..u, (1 - Real.exp (-v)) = g1 u := by
    have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ => hasDerivAt_g1 x) hint
    have h0 : g1 0 = 0 := by
      unfold g1
      norm_num
    simpa [h0] using h
  rw [← hftc]
  have hint2 : IntervalIntegrable (fun v : ℝ => v) volume 0 u :=
    (by continuity : Continuous fun v : ℝ => v).intervalIntegrable 0 u
  have hmono : ∫ v in (0 : ℝ)..u, (1 - Real.exp (-v)) ≤ ∫ v in (0 : ℝ)..u, v := by
    apply intervalIntegral.integral_mono_on hu hint hint2
    intro v hv
    have h : -v + 1 ≤ Real.exp (-v) := Real.add_one_le_exp (-v)
    linarith [hv.1]
  have hval : ∫ v in (0 : ℝ)..u, v = u ^ 2 / 2 := by
    have hderiv2 : ∀ x : ℝ, HasDerivAt (fun t : ℝ => t ^ 2 / 2) x x := by
      intro x
      have h := (hasDerivAt_pow 2 x).div_const 2
      convert h using 1
      ring
    have := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv2 x) hint2
    simpa using this
  linarith [hmono, hval]

/-- `g₂ ≥ 0`. -/
theorem g2_nonneg (t : ℝ) (ht : 0 ≤ t) : 0 ≤ g2 t := by
  have hint : IntervalIntegrable (fun u : ℝ => g1 u) volume 0 t :=
    continuous_g1.intervalIntegrable 0 t
  have hmono : (∫ u in (0 : ℝ)..t, (0 : ℝ)) ≤ ∫ u in (0 : ℝ)..t, g1 u := by
    apply intervalIntegral.integral_mono_on ht intervalIntegrable_const hint
    intro u _
    exact g1_nonneg u
  simpa [g2] using hmono

/-- `g₂(t) ≤ t³/6` for `t ≥ 0`. -/
theorem g2_le (t : ℝ) (ht : 0 ≤ t) : g2 t ≤ t ^ 3 / 6 := by
  have hint : IntervalIntegrable (fun u : ℝ => g1 u) volume 0 t :=
    continuous_g1.intervalIntegrable 0 t
  have hint2 : IntervalIntegrable (fun u : ℝ => u ^ 2 / 2) volume 0 t :=
    (by continuity : Continuous fun u : ℝ => u ^ 2 / 2).intervalIntegrable 0 t
  have hmono : ∫ u in (0 : ℝ)..t, g1 u ≤ ∫ u in (0 : ℝ)..t, u ^ 2 / 2 := by
    apply intervalIntegral.integral_mono_on ht hint hint2
    intro u hu
    exact g1_le u hu.1
  have hval : ∫ u in (0 : ℝ)..t, u ^ 2 / 2 = t ^ 3 / 6 := by
    have hderiv : ∀ x : ℝ, HasDerivAt (fun s : ℝ => s ^ 3 / 6) (x ^ 2 / 2) x := by
      intro x
      have h := (hasDerivAt_pow 3 x).div_const 6
      convert h using 1
      ring
    have := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint2
    simpa using this
  rw [g2]
  linarith [hmono, hval]

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.g1_nonneg
#print axioms PairedDirac.Manuscript.continuous_g1
#print axioms PairedDirac.Manuscript.g1_le
#print axioms PairedDirac.Manuscript.g2_nonneg
#print axioms PairedDirac.Manuscript.g2_le

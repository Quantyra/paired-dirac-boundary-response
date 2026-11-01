import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic

/-!
# Manuscript formalization: the integral form of (4.8)

This file formalizes the integral step of Proposition 4.3 in `manuscript/DRAFT.md`:

```text
|r t| / t² ≤ C on (0,t0]  ⟹  ∫_0^{t0} |r t| / t² dt ≤ C t0,
```

which is exactly the passage from the cubic kernel bound (4.7) to the
time-integrability statement (4.8), with `C = ‖u'''‖ ‖w'''‖ / (420 π)`.

It is deliberately separate from `ManuscriptFormal.lean` because it needs
`Mathlib.MeasureTheory.Integral.IntervalIntegral`, which the retained
paper1 exact-tree build does not contain; it is compiled against the Space
reference Mathlib build that does.

Not certified here: the Fourier transform, Parseval, the bound
`0 ≤ R2 ≤ min(x³/840, x²/120)`, the half/full-line norm relation, or the
identification of `r_flat` with any physical response.
-/

open MeasureTheory
open scoped Interval

namespace PairedDirac.Manuscript

/-- The integral step of `(4.8)`: if the time integrand obeys the cubic bound
`|r t| / t² ≤ C` on `(0,t0]` and is interval-integrable, then its integral
over `[0,t0]` is at most `C t0`. At `t = 0` the integrand is `0` by Lean's
division convention, so the pointwise inequality holds on the whole closed
interval. -/
theorem flat_time_integral_bound (r : ℝ → ℝ) (C t0 : ℝ) (hC : 0 ≤ C)
    (ht0 : 0 ≤ t0)
    (hint : IntervalIntegrable (fun t => |r t| / t ^ 2) volume 0 t0)
    (hbound : ∀ t ∈ Set.Ioc (0 : ℝ) t0, |r t| / t ^ 2 ≤ C) :
    ∫ t in (0)..t0, |r t| / t ^ 2 ≤ C * t0 := by
  have hle : ∀ x ∈ Set.Icc (0 : ℝ) t0, |r x| / x ^ 2 ≤ C := by
    intro x hx
    rcases eq_or_lt_of_le hx.1 with h | h
    · subst h
      simp only [abs_zero, zero_pow (by norm_num : 2 ≠ 0), div_zero]
      exact hC
    · exact hbound x ⟨h, hx.2⟩
  have hmono : ∫ t in (0)..t0, |r t| / t ^ 2 ≤ ∫ t in (0)..t0, (C : ℝ) :=
    intervalIntegral.integral_mono_on ht0 hint intervalIntegrable_const hle
  have hconst : ∫ t in (0)..t0, (C : ℝ) = C * t0 := by
    rw [intervalIntegral.integral_const]
    simp [smul_eq_mul, sub_zero]
    ring
  linarith

/-- The integral step of `(4.8)` with integrability discharged: the pointwise
cubic bound plus measurability of `r` already make the time integrand
interval-integrable, so no separate integrability hypothesis is needed. -/
theorem flat_time_integral_bound_of_bounded (r : ℝ → ℝ) (C t0 : ℝ) (hC : 0 ≤ C)
    (ht0 : 0 ≤ t0) (hr : Measurable r)
    (hbound : ∀ t ∈ Set.Ioc (0 : ℝ) t0, |r t| / t ^ 2 ≤ C) :
    ∫ t in (0)..t0, |r t| / t ^ 2 ≤ C * t0 := by
  have hfin : volume (Set.uIoc (0 : ℝ) t0) < ⊤ := by
    rw [Set.uIoc_of_le ht0]
    exact measure_Ioc_lt_top
  have hmeas : AEStronglyMeasurable (fun t => |r t| / t ^ 2)
      (volume.restrict (Set.uIoc (0 : ℝ) t0)) := by
    have hmeas' : Measurable (fun t : ℝ => |r t| / t ^ 2) := by
      measurability
    exact hmeas'.aestronglyMeasurable
  have hboundae : ∀ᵐ x ∂(volume.restrict (Set.uIoc (0 : ℝ) t0)),
      ‖|r x| / x ^ 2‖ ≤ C := by
    rw [Set.uIoc_of_le ht0, ae_restrict_iff' measurableSet_Ioc]
    filter_upwards with x hx
    have hnn : 0 ≤ |r x| / x ^ 2 := div_nonneg (abs_nonneg _) (sq_nonneg x)
    rw [Real.norm_eq_abs, abs_of_nonneg hnn]
    exact hbound x hx
  have hint : IntervalIntegrable (fun t => |r t| / t ^ 2) volume 0 t0 := by
    rw [intervalIntegrable_iff]
    exact IntegrableOn.of_bound hfin hmeas C hboundae
  exact flat_time_integral_bound r C t0 hC ht0 hint hbound

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.flat_time_integral_bound
#print axioms PairedDirac.Manuscript.flat_time_integral_bound_of_bounded

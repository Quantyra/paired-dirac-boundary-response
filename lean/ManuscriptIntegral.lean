import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Tactic.NoncommRing

/-!
# Manuscript formalization: continuum results

This file certifies two statements of `manuscript/DRAFT.md` that need the
measure-theoretic interval integral:

* the integral step of Proposition 4.3 (`(4.8)`), and
* the continuum form of `(2.5)`, variation of constants.

It is separate from `ManuscriptFormal.lean` because it needs
`Mathlib.MeasureTheory.Integral.IntervalIntegral`, which the retained paper1
exact-tree build does not contain; it is compiled against the Space reference
Mathlib build that does.

Not certified here: the Fourier transform, Parseval, Propositions 4.1--4.2,
the heat-trace and regulator statements of Section 5, or any physical
identification.
-/

open MeasureTheory
open scoped Interval

namespace PairedDirac.Manuscript

/-! ## Proposition 4.3: the integral step of `(4.8)` -/

/-- The integral step of `(4.8)`: if the time integrand obeys the cubic bound
`|r t| / t² ≤ C` on `(0,t0]` and is interval-integrable, then its integral
over `[0,t0]` is at most `C t0`. At `t = 0` the integrand is `0` by Lean's
division convention, so the pointwise inequality holds on the closed
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

/-- The same with integrability discharged: measurability of `r` plus the
pointwise bound already make the integrand interval-integrable. -/
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

/-! ## (2.5): continuum variation of constants -/

section Continuum

variable {A : Type*} [NormedRing A] [NormedAlgebra ℝ A] [CompleteSpace A]

/-- `(2.5)`, continuum form, in a normed algebra (a scalar is the case
`A = ℝ`; matrices instantiate it when a normed-ring structure is available).

Hypotheses: `U a ·` is the fundamental solution of the backward equation
`∂_s U(a,s) = -U(a,s) K` with `U(a,a) = 1`, and `Y` solves `Y' = K Y + b`.
Then

```text
Y(s0) = U(s0,s1) Y(s1) - ∫_{s0}^{s1} U(s0,s) b(s) ds.
```

The proof differentiates the constant-of-motion function
`G(s) = U(s0,s) Y(s) - ∫_{s0}^{s} U(s0,τ) b(τ) dτ`, shows `G' = 0`, and
applies the fundamental theorem of calculus to conclude `G(s1) = G(s0)`. -/
theorem continuum_variation_of_constants (U : ℝ → ℝ → A) (y b : ℝ → A) (K : A)
    (s0 s1 : ℝ)
    (hU0 : ∀ a, U a a = 1)
    (hU : ∀ a s, HasDerivAt (U a) (-(U a s * K)) s)
    (hy : ∀ s, HasDerivAt y (K * y s + b s) s)
    (hb : Continuous b) :
    y s0 = U s0 s1 * y s1 - ∫ s in s0..s1, U s0 s * b s := by
  set G : ℝ → A := fun s => U s0 s * y s - ∫ τ in s0..s, U s0 τ * b τ with hG
  have hUcont : Continuous (U s0) :=
    continuous_iff_continuousAt.mpr fun s => (hU s0 s).continuousAt
  have hfcont : Continuous fun τ => U s0 τ * b τ := hUcont.mul hb
  have hderiv : ∀ s, HasDerivAt G (0 : A) s := by
    intro s
    have h1 : HasDerivAt (fun s => U s0 s * y s)
        ((-(U s0 s * K)) * y s + U s0 s * (K * y s + b s)) s :=
      (hU s0 s).mul (hy s)
    have h2 : HasDerivAt (fun u => ∫ τ in s0..u, U s0 τ * b τ) (U s0 s * b s) s :=
      intervalIntegral.integral_hasDerivAt_right
        (hfcont.intervalIntegrable s0 s)
        (hfcont.stronglyMeasurableAtFilter volume (nhds s))
        hfcont.continuousAt
    have hsub := h1.sub h2
    have hzero : (-(U s0 s * K)) * y s + U s0 s * (K * y s + b s)
        - U s0 s * b s = 0 := by
      noncomm_ring
    rw [hG]
    exact hzero ▸ hsub
  have hFTC : ∫ x in s0..s1, (0 : A) = G s1 - G s0 :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (f := G) (f' := fun _ => 0) (fun x _ => hderiv x)
      intervalIntegrable_const
  have hzero : ∫ x in s0..s1, (0 : A) = 0 := by simp
  have hGeq : G s1 = G s0 := by
    rw [hzero] at hFTC
    exact sub_eq_zero.mp hFTC.symm
  have hG0 : G s0 = y s0 := by
    rw [hG]
    simp [hU0 s0]
  have hG1 : G s1 = U s0 s1 * y s1 - ∫ s in s0..s1, U s0 s * b s := by
    rw [hG]
  calc y s0 = G s0 := hG0.symm
    _ = G s1 := hGeq.symm
    _ = U s0 s1 * y s1 - ∫ s in s0..s1, U s0 s * b s := hG1

end Continuum

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.flat_time_integral_bound
#print axioms PairedDirac.Manuscript.flat_time_integral_bound_of_bounded
#print axioms PairedDirac.Manuscript.continuum_variation_of_constants

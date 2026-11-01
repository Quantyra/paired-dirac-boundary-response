import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Integral.MeanInequalities
import Mathlib.Analysis.MeanInequalities
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity

/-!
# Manuscript formalization: the Parseval/Cauchy--Schwarz step of Proposition 4.3

This file certifies the analytic step that turns the kernel bound `(4.7)`,

```text
0 <= R2(x) <= min (x^3/840) (x^2/120)      (x >= 0),
```

into the response bound `(4.8)`. Writing `K` for the kernel (`K = R2` in the
manuscript; `R2_bound` in `ManuscriptFlatBound.lean` supplies the hypothesis),

```text
r_flat(t;u,w) = (1/(π t)) (1/(2π)) ∫_k uhat(k) what(k) K(t k^2) dk,
```

for real even profiles, so that the conjugation in `(4.7)` is trivial. The
third derivative enters through the Fourier-side symbols `g = (i k)^3 uhat`,
`h = (i k)^3 what`, i.e. `uhat k = g k / k^3` and `what k = h k / k^3` for
`k ≠ 0`.

Certified here:

* `integrand_abs_le` — pointwise `|uhat what K(tk²)| ≤ (t³/840)|g k||h k|`,
  from the kernel bound and the symbol identities;
* `integral_abs_mul_le` — Cauchy--Schwarz in `L²`;
* `flat_response_le_symbol` — `|r_flat| ≤ t²/(1680 π²)·√(∫g²)·√(∫h²)`;
* `flat_response_le_half` — the printed `(4.8)` shape,
  `|r_flat| ≤ t²/(420π)·‖u'''‖·‖w'''‖`, after substituting Plancherel and the
  half/full-line relation.

**Not** proven here, and isolated as explicit hypotheses with their exact
content: the Fourier derivative identity `g = (i k)^3 uhat` and Plancherel in
the manuscript's normalization. The hypothesis `∫g² = π(2A)²` in
`flat_response_le_half` is the composite of Plancherel
(`∫|uhat'''|² = 2π‖u'''‖²`) and the half/full-line factor
(`‖u'''‖² = 2‖u'''‖_half²`), i.e. `4π‖u'''‖_half²`. Mathlib's `L²` Plancherel
(`MeasureTheory.Lp.norm_fourier_eq`) uses the `exp(-2πi k x)` convention, so
matching the manuscript's `exp(-i k y)` convention is a separate rescaling
lemma. No physical identification is made.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- `r_flat(t;u,w)` of `(4.7)`, at the manuscript's Fourier and half
normalization. `K` is the kernel (`R2` in the manuscript). -/
noncomputable def rFlat (uhat what K : ℝ → ℝ) (t : ℝ) : ℝ :=
  (1 / (Real.pi * t)) * (1 / (2 * Real.pi)) *
    ∫ k, uhat k * what k * K (t * k ^ 2)

/-- Pointwise bound on the `(4.7)` integrand: the kernel bound at `x = t k²`
together with `uhat k = g k / k³`, `what k = h k / k³`. -/
theorem integrand_abs_le (K uhat what g h : ℝ → ℝ) (t : ℝ) (ht : 0 < t)
    (hK : ∀ x : ℝ, 0 ≤ x → |K x| ≤ x ^ 3 / 840)
    (h1 : ∀ k : ℝ, k ≠ 0 → uhat k = g k / k ^ 3)
    (h2 : ∀ k : ℝ, k ≠ 0 → what k = h k / k ^ 3) (k : ℝ) :
    |uhat k * what k * K (t * k ^ 2)| ≤ (t ^ 3 / 840) * (|g k| * |h k|) := by
  rcases eq_or_ne k 0 with hk | hk
  · subst hk
    have hK0 : K 0 = 0 := by
      have h := hK 0 le_rfl
      have h0 : |K 0| ≤ 0 := by simpa using h
      exact abs_eq_zero.mp (le_antisymm h0 (abs_nonneg _))
    have ht0 : t * 0 ^ 2 = 0 := by ring
    rw [ht0, hK0, mul_zero, abs_zero]
    positivity
  · have habs1 : |uhat k| = |g k| / |k| ^ 3 := by
      rw [h1 k hk, abs_div, abs_pow]
    have habs2 : |what k| = |h k| / |k| ^ 3 := by
      rw [h2 k hk, abs_div, abs_pow]
    have hKb : |K (t * k ^ 2)| ≤ (t * k ^ 2) ^ 3 / 840 :=
      hK _ (by positivity)
    have hk6 : |k| ^ 6 = k ^ 6 := by
      rw [show (6 : ℕ) = 2 * 3 by norm_num, pow_mul, sq_abs, ← pow_mul]
    have hkey : (|g k| / |k| ^ 3) * (|h k| / |k| ^ 3) * ((t * k ^ 2) ^ 3 / 840)
        = (t ^ 3 / 840) * (|g k| * |h k|) := by
      have hk0 : (|k| : ℝ) ≠ 0 := abs_ne_zero.mpr hk
      rw [show (t * k ^ 2) ^ 3 = t ^ 3 * k ^ 6 by ring]
      field_simp
      rw [hk6]
      ring
    rw [abs_mul, abs_mul]
    calc |uhat k| * |what k| * |K (t * k ^ 2)|
        = (|g k| / |k| ^ 3) * (|h k| / |k| ^ 3) * |K (t * k ^ 2)| := by
          rw [habs1, habs2]
      _ ≤ (|g k| / |k| ^ 3) * (|h k| / |k| ^ 3) * ((t * k ^ 2) ^ 3 / 840) := by
          apply mul_le_mul_of_nonneg_left hKb
          positivity
      _ = (t ^ 3 / 840) * (|g k| * |h k|) := hkey

/-- Cauchy--Schwarz in `L²`: `∫ |g h| ≤ √(∫g²) √(∫h²)`. -/
theorem integral_abs_mul_le (g h : ℝ → ℝ)
    (hg : MemLp g 2 volume) (hh : MemLp h 2 volume) :
    ∫ k, |g k| * |h k| ≤ Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2) := by
  have hpq : (2 : ℝ).HolderConjugate 2 := ⟨by norm_num, by norm_num, by norm_num⟩
  have := integral_mul_le_Lp_mul_Lq_of_nonneg (μ := (volume : Measure ℝ)) hpq
    (f := fun k => |g k|) (g := fun k => |h k|)
    (Filter.Eventually.of_forall fun k => abs_nonneg (g k))
    (Filter.Eventually.of_forall fun k => abs_nonneg (h k))
    (by simpa using hg.norm) (by simpa using hh.norm)
  have e1 : (∫ k, |g k| ^ (2 : ℝ)) = ∫ k, g k ^ 2 := by
    apply integral_congr_ae
    filter_upwards with k
    rw [Real.rpow_two, sq_abs]
  have e2 : (∫ k, |h k| ^ (2 : ℝ)) = ∫ k, h k ^ 2 := by
    apply integral_congr_ae
    filter_upwards with k
    rw [Real.rpow_two, sq_abs]
  rw [e1, e2] at this
  calc ∫ k, |g k| * |h k|
      ≤ (∫ k, g k ^ 2) ^ (1 / 2) * (∫ k, h k ^ 2) ^ (1 / 2) := this
    _ = Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2) := by
        rw [Real.sqrt_eq_rpow, Real.sqrt_eq_rpow]

/-- `(4.7)` ⇒ symbol-level response bound: the triangle inequality for
integrals plus Cauchy--Schwarz. -/
theorem flat_response_le_symbol (K uhat what g h : ℝ → ℝ) (t : ℝ) (ht : 0 < t)
    (hK : ∀ x : ℝ, 0 ≤ x → |K x| ≤ x ^ 3 / 840)
    (h1 : ∀ k : ℝ, k ≠ 0 → uhat k = g k / k ^ 3)
    (h2 : ∀ k : ℝ, k ≠ 0 → what k = h k / k ^ 3)
    (hint : Integrable (fun k => uhat k * what k * K (t * k ^ 2)))
    (hgh : Integrable (fun k => |g k| * |h k|))
    (hg : MemLp g 2 volume) (hh : MemLp h 2 volume) :
    |rFlat uhat what K t| ≤
      (t ^ 2 / (1680 * Real.pi ^ 2)) *
        Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2) := by
  have hcoef : (0 : ℝ) < 1 / (Real.pi * t) * (1 / (2 * Real.pi)) := by positivity
  have hstep1 : |∫ k, uhat k * what k * K (t * k ^ 2)|
      ≤ ∫ k, |uhat k * what k * K (t * k ^ 2)| :=
    abs_integral_le_integral_abs
  have habsint : Integrable (fun k => |uhat k * what k * K (t * k ^ 2)|) := hint.abs
  have hmaj : Integrable (fun k => (t ^ 3 / 840) * (|g k| * |h k|)) :=
    hgh.const_mul _
  have hstep2 : ∫ k, |uhat k * what k * K (t * k ^ 2)|
      ≤ ∫ k, (t ^ 3 / 840) * (|g k| * |h k|) := by
    apply integral_mono habsint hmaj
    intro k
    exact integrand_abs_le K uhat what g h t ht hK h1 h2 k
  have hstep3 : ∫ k, (t ^ 3 / 840) * (|g k| * |h k|)
      = (t ^ 3 / 840) * ∫ k, |g k| * |h k| := integral_const_mul _ _
  have hCS : ∫ k, |g k| * |h k| ≤
      Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2) :=
    integral_abs_mul_le g h hg hh
  have hnonneg : (0 : ℝ) ≤ t ^ 3 / 840 := by positivity
  have hbound : |∫ k, uhat k * what k * K (t * k ^ 2)|
      ≤ (t ^ 3 / 840) * (Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2)) := by
    calc |∫ k, uhat k * what k * K (t * k ^ 2)|
        ≤ ∫ k, (t ^ 3 / 840) * (|g k| * |h k|) := le_trans hstep1 hstep2
      _ = (t ^ 3 / 840) * ∫ k, |g k| * |h k| := hstep3
      _ ≤ (t ^ 3 / 840) * (Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2)) := by
          exact mul_le_mul_of_nonneg_left hCS hnonneg
  have hcoef2 : (1 / (Real.pi * t)) * (1 / (2 * Real.pi)) * (t ^ 3 / 840)
      = t ^ 2 / (1680 * Real.pi ^ 2) := by
    have ht0 : (t : ℝ) ≠ 0 := ne_of_gt ht
    have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
    field_simp
    ring
  unfold rFlat
  rw [abs_mul, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 1/(Real.pi*t)),
    abs_of_pos (by positivity : (0:ℝ) < 1/(2*Real.pi))]
  calc (1 / (Real.pi * t)) * (1 / (2 * Real.pi)) *
        |∫ k, uhat k * what k * K (t * k ^ 2)|
      ≤ (1 / (Real.pi * t)) * (1 / (2 * Real.pi)) *
          ((t ^ 3 / 840) * (Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2))) := by
        apply mul_le_mul_of_nonneg_left hbound (le_of_lt hcoef)
    _ = t ^ 2 / (1680 * Real.pi ^ 2) *
          (Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2)) := by
        rw [← mul_assoc, hcoef2]
    _ = t ^ 2 / (1680 * Real.pi ^ 2) *
          Real.sqrt (∫ k, g k ^ 2) * Real.sqrt (∫ k, h k ^ 2) := by ring

/-- The printed `(4.8)` form: under Plancherel in the manuscript normalization
and the half/full-line relation, i.e. `∫g² = 4π·Ah²` and `∫h² = 4π·Bh²`, the
response is bounded by `t²/(420π)·Ah·Bh`. -/
theorem flat_response_le_half (K uhat what g h : ℝ → ℝ) (t Ah Bh : ℝ) (ht : 0 < t)
    (hK : ∀ x : ℝ, 0 ≤ x → |K x| ≤ x ^ 3 / 840)
    (h1 : ∀ k : ℝ, k ≠ 0 → uhat k = g k / k ^ 3)
    (h2 : ∀ k : ℝ, k ≠ 0 → what k = h k / k ^ 3)
    (hint : Integrable (fun k => uhat k * what k * K (t * k ^ 2)))
    (hgh : Integrable (fun k => |g k| * |h k|))
    (hg : MemLp g 2 volume) (hh : MemLp h 2 volume)
    (hAh : 0 ≤ Ah) (hBh : 0 ≤ Bh)
    (hg2 : ∫ k, g k ^ 2 = Real.pi * (2 * Ah) ^ 2)
    (hh2 : ∫ k, h k ^ 2 = Real.pi * (2 * Bh) ^ 2) :
    |rFlat uhat what K t| ≤
      (t ^ 2 / (420 * Real.pi)) * Ah * Bh := by
  have hmain := flat_response_le_symbol K uhat what g h t ht hK h1 h2 hint hgh hg hh
  have hspi : Real.sqrt Real.pi * Real.sqrt Real.pi = Real.pi := by
    rw [← sq]
    exact Real.sq_sqrt (le_of_lt Real.pi_pos)
  have hsg : Real.sqrt (∫ k, g k ^ 2) = Real.sqrt Real.pi * (2 * Ah) := by
    rw [hg2, Real.sqrt_mul (le_of_lt Real.pi_pos)]
    congr 1
    rw [Real.sqrt_sq_eq_abs, abs_of_nonneg (by positivity)]
  have hsh : Real.sqrt (∫ k, h k ^ 2) = Real.sqrt Real.pi * (2 * Bh) := by
    rw [hh2, Real.sqrt_mul (le_of_lt Real.pi_pos)]
    congr 1
    rw [Real.sqrt_sq_eq_abs, abs_of_nonneg (by positivity)]
  rw [hsg, hsh] at hmain
  have hrewrite : t ^ 2 / (1680 * Real.pi ^ 2) * (Real.sqrt Real.pi * (2 * Ah)) *
        (Real.sqrt Real.pi * (2 * Bh)) = t ^ 2 / (420 * Real.pi) * Ah * Bh := by
    have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
    field_simp
    rw [show Real.sqrt Real.pi ^ 2 = Real.pi from Real.sq_sqrt (le_of_lt Real.pi_pos)]
    ring
  calc |rFlat uhat what K t|
      ≤ t ^ 2 / (1680 * Real.pi ^ 2) * (Real.sqrt Real.pi * (2 * Ah)) *
          (Real.sqrt Real.pi * (2 * Bh)) := hmain
    _ = t ^ 2 / (420 * Real.pi) * Ah * Bh := hrewrite

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.integrand_abs_le
#print axioms PairedDirac.Manuscript.integral_abs_mul_le
#print axioms PairedDirac.Manuscript.flat_response_le_symbol
#print axioms PairedDirac.Manuscript.flat_response_le_half

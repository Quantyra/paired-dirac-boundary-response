import Mathlib.Analysis.Fourier.FourierTransformDeriv
import Mathlib.Analysis.Fourier.LpSpace
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp

/-!
# Manuscript formalization: the two Fourier inputs of Proposition 4.3

`lean/ManuscriptParseval.lean` reduces `(4.7)` to `(4.8)` under two named
Fourier hypotheses. This file proves those two hypotheses.

The draft uses `uhat(k) = ∫ exp(-i k y) u(y) dy`. Mathlib's `𝓕` is
`∫ exp(-2 π i ξ y) f(y) dy`, so the draft transform is the rescaling

```text
draftFourier u k = 𝓕 u (k / (2π)).
```

Proved here:

* `symbol_identity` — for `u : ℝ → ℂ` of class `C³` with integrable
  derivatives, `draftFourier (iteratedDeriv 3 u) k = (i k)³ · draftFourier u k`,
  i.e. `uhat k = g k / (i k)³` with `g = draftFourier (u''')`; derived from
  Mathlib's `Real.fourier_iteratedDeriv`;
* `plancherel_l2` and `plancherel_draft` — Plancherel in the draft's
  normalization: for `f : Lp ℂ 2 volume`,
  `∫ k, ‖draftFourier f k‖² = 2π ∫ x, ‖f x‖²`, from Mathlib's `L²`
  Plancherel (`MeasureTheory.Lp.norm_fourier_eq`) and the change of variables
  `MeasureTheory.integral_comp_div`.

With `Ah² := (1/2)∫‖u'''‖²` (the half-line normalization of `(4.8)`), the second
statement is exactly `∫ g² = 4π Ah²`, the hypothesis used in
`ManuscriptParseval.flat_response_le_half`.
-/

open MeasureTheory Real

namespace PairedDirac.Manuscript

/-- The draft's Fourier transform: `uhat(k) = ∫ exp(-i k y) u(y) dy`. -/
noncomputable def draftFourier (u : ℝ → ℂ) (k : ℝ) : ℂ :=
  Real.fourierIntegral u (k / (2 * Real.pi))

/-- `(i k)³` of the transformed third derivative: the symbol identity behind
`uhat k = g k / k³` in `(4.7)`. -/
theorem symbol_identity (u : ℝ → ℂ) (hu : ContDiff ℝ 3 u)
    (hint : ∀ n : ℕ, n ≤ 3 → Integrable (iteratedDeriv n u)) (k : ℝ) :
    draftFourier (iteratedDeriv 3 u) k = (Complex.I * (k : ℂ)) ^ 3 * draftFourier u k := by
  have h := Real.fourier_iteratedDeriv (N := 3) (n := 3) hu hint le_rfl
  have hk := congrFun h (k / (2 * Real.pi))
  unfold draftFourier
  rw [hk]
  have harg : (2 * (Real.pi : ℂ) * Complex.I * ((k : ℂ) / (2 * (Real.pi : ℂ)))) ^ 3
      = (Complex.I * (k : ℂ)) ^ 3 := by
    congr 1
    field_simp
  rw [harg, smul_eq_mul]

/-- Plancherel at the `L²` level in Mathlib's normalization. -/
theorem plancherel_l2 (f : Lp ℂ 2 (volume : Measure ℝ)) :
    ∫ x, ‖(𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x‖ ^ 2 = ∫ x, ‖f x‖ ^ 2 := by
  have h := MeasureTheory.Lp.inner_fourier_eq (𝕜 := ℂ) f f
  rw [MeasureTheory.Lp.inner_def, MeasureTheory.Lp.inner_def] at h
  simp only [inner_self_eq_norm_sq] at h
  have hre := congrArg Complex.re h
  rw [MeasureTheory.integral_re, MeasureTheory.integral_re] at hre
  simpa using hre

/-- Plancherel in the draft's `exp(-i k y)` normalization:
`∫ k, ‖draftFourier f k‖² = 2π ∫ x, ‖f x‖²`. -/
theorem plancherel_draft (f : Lp ℂ 2 (volume : Measure ℝ)) :
    ∫ k, ‖(𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) (k / (2 * Real.pi))‖ ^ 2
      = 2 * Real.pi * ∫ x, ‖f x‖ ^ 2 := by
  have h2pi : (0 : ℝ) < 2 * Real.pi := by positivity
  have hcomp : ∫ k, (fun ξ : ℝ => ‖(𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) ξ‖ ^ 2)
        (k / (2 * Real.pi))
      = 2 * Real.pi * ∫ ξ, ‖(𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) ξ‖ ^ 2 := by
    rw [MeasureTheory.integral_comp_div]
    simp [abs_of_pos h2pi, smul_eq_mul]
  rw [hcomp, plancherel_l2]

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.symbol_identity
#print axioms PairedDirac.Manuscript.plancherel_l2
#print axioms PairedDirac.Manuscript.plancherel_draft

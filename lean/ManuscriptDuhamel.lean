import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

/-!
# Manuscript formalization: the triangle measure of `(5.1)`

Draft `(5.1)` writes the mixed heat derivative as a triangle integral

```text
K_uw(t) = ∫_{a,b,c>=0, a+b+c=t} [K_a V_u K_b V_w K_c + K_a V_w K_b V_u K_c] da db
          - ∫_0^t K_{t-s} V_uw K_s ds,
```

and states explicitly: "The triangle has measure `da db`, with no additional
factorial." This file certifies that structural claim:

* `triangle_area` — the triangle `{a, b ≥ 0, a + b ≤ t}` has area `t²/2`, i.e.
  `∫₀^t ∫₀^{t-a} 1 db da = t²/2`;

hence a *constant* integrand picks up exactly `t²/2` (not `t²` and not `t²/4`),
which is the "no additional factorial" normalization of the first `(5.1)`
integral.

**Not** certified: the Duhamel identity itself for a genuine heat family
`K_s = exp(-sL)` (needs the matrix exponential, its semigroup property and the
twice-differentiated variation of constants), the matrix-valued version of the
constant-integrand reduction above (blocked in this build by a missing
`NormedSpace ℝ (Matrix …)` instance path in the continuity goal), the unbounded
realization, and the trace-class hypotheses of Section 5.
-/

namespace PairedDirac.Manuscript

open MeasureTheory

/-- The `(5.1)` triangle has area `t²/2`: `∫₀^t ∫₀^{t-a} 1 db da = t²/2`. -/
theorem triangle_area (t : ℝ) (_ht : 0 ≤ t) :
    ∫ a in (0 : ℝ)..t, (∫ b in (0 : ℝ)..(t - a), (1 : ℝ)) = t ^ 2 / 2 := by
  have hinner : ∀ a : ℝ, ∫ b in (0 : ℝ)..(t - a), (1 : ℝ) = t - a := by
    intro a
    rw [intervalIntegral.integral_const]
    simp
  simp only [hinner]
  have hderiv : ∀ a : ℝ, HasDerivAt (fun x : ℝ => t * x - x ^ 2 / 2) (t - a) a := by
    intro a
    have h1 : HasDerivAt (fun x : ℝ => t * x) t a := by
      simpa using (hasDerivAt_id a).const_mul t
    have h2 : HasDerivAt (fun x : ℝ => x ^ 2 / 2) a a := by
      have h := (hasDerivAt_pow 2 a).div_const 2
      convert h using 1
      ring
    have h := h1.sub h2
    convert h using 1
  have hint : IntervalIntegrable (fun a : ℝ => t - a) volume 0 t :=
    (by continuity : Continuous fun a : ℝ => t - a).intervalIntegrable 0 t
  have hftc := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
  rw [hftc]
  ring

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.triangle_area

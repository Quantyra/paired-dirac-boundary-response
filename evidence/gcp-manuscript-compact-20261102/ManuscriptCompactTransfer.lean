import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Topology.Algebra.InfiniteSum.Basic

/-!
# Manuscript formalization: the winding-sum core of `(4.6)`

Draft `(4.6)` states that the compact flat-model mixed derivative and its
Fourier-defined counterpart differ by

```text
O((1 + t^(-N)) · exp(-c/t) · ‖u‖_H2 ‖w‖_H2),
```

at fixed `L, R, T`, where the compact model sums over nonzero radial windings.
The analytic core of the exponential factor is the *geometric domination of the
nonzero winding sum*: each winding `n ≠ 0` contributes `exp(-c n²/t)`, and

```text
∑_{n≥1} exp(-c n²/t) ≤ ∑_{n≥1} exp(-c n/t) = r/(1-r) ≤ 2 exp(-c/t)
```

whenever `r = exp(-c/t) ≤ 1/2`. That is: the nonzero-winding tail is bounded by
a *constant times* `exp(-c/t)`, which is the factor displayed in `(4.6)`; the
`(1 + t^{-N})` prefactor and the profile norms are bookkeeping on top.

Certified here:

* `winding_term_le` — `exp(-c (n+1)²/t) ≤ exp(-c/t)^(n+1)` for `c, t > 0`;
* `winding_nonzero_sum_le` — `∑' n, exp(-c (n+1)²/t) ≤ 2 exp(-c/t)` under
  `c, t > 0` and `exp(-c/t) ≤ 1/2`.

**Not** certified: the compact-model form-differentiation, folding and
per-exterior trace conventions behind `(4.6)`, the `(1 + t^{-N})` prefactor,
the profile-norm factors, and any uniformity in `L, R, T`.
-/

open scoped BigOperators

namespace PairedDirac.Manuscript

/-- Monotonicity of the winding factor: a higher winding is smaller. -/
theorem winding_term_le (c t : ℝ) (hc : 0 < c) (ht : 0 < t) (n : ℕ) :
    Real.exp (-(c * ((n : ℝ) + 1) ^ 2) / t) ≤ Real.exp (-c / t) ^ (n + 1) := by
  have hpow : Real.exp (-c / t) ^ (n + 1) = Real.exp (((n : ℝ) + 1) * (-c / t)) := by
    rw [← Real.exp_nat_mul]
    push_cast
    ring_nf
  rw [hpow]
  apply Real.exp_le_exp.mpr
  have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
  have hsq : ((n : ℝ) + 1) ≤ ((n : ℝ) + 1) ^ 2 := by nlinarith
  have : -(c * ((n : ℝ) + 1) ^ 2) / t ≤ -(((n : ℝ) + 1) * c) / t := by
    apply div_le_div_of_nonneg_right _ ht.le
    nlinarith
  calc -(c * ((n : ℝ) + 1) ^ 2) / t ≤ -(((n : ℝ) + 1) * c) / t := this
    _ = ((n : ℝ) + 1) * (-c / t) := by ring

/-- The nonzero-winding sum is bounded by `2 exp(-c/t)` when `exp(-c/t) ≤ 1/2`:
the geometric domination behind the `exp(-c/t)` factor of `(4.6)`. -/
theorem winding_nonzero_sum_le (c t : ℝ) (hc : 0 < c) (ht : 0 < t)
    (hr : Real.exp (-c / t) ≤ 1 / 2) :
    ∑' n : ℕ, Real.exp (-(c * ((n : ℝ) + 1) ^ 2) / t) ≤ 2 * Real.exp (-c / t) := by
  set r : ℝ := Real.exp (-c / t) with hrdef
  have hr0 : 0 ≤ r := (Real.exp_pos _).le
  have hr1 : r < 1 := lt_of_le_of_lt hr (by norm_num)
  have hgeom : Summable (fun n : ℕ => r ^ n) := summable_geometric_of_lt_one hr0 hr1
  have hgeom' : Summable (fun n : ℕ => r ^ (n + 1)) := by
    have h := hgeom.mul_left r
    simpa [pow_succ, mul_comm] using h
  have hle : ∀ n : ℕ, Real.exp (-(c * ((n : ℝ) + 1) ^ 2) / t) ≤ r ^ (n + 1) :=
    fun n => winding_term_le c t hc ht n
  have hsum := Summable.of_nonneg_of_le (fun n => (Real.exp_pos _).le) hle hgeom'
  have htsum : ∑' n : ℕ, Real.exp (-(c * ((n : ℝ) + 1) ^ 2) / t) ≤ ∑' n : ℕ, r ^ (n + 1) :=
    hsum.tsum_le_tsum hle hgeom'
  have hval : ∑' n : ℕ, r ^ (n + 1) = r / (1 - r) := by
    rw [show (fun n : ℕ => r ^ (n + 1)) = fun n : ℕ => r * r ^ n by
      funext n; rw [pow_succ]; ring]
    rw [tsum_mul_left]
    rw [tsum_geometric_of_lt_one hr0 hr1]
    ring
  have hbound : r / (1 - r) ≤ 2 * r := by
    have h1r : (0 : ℝ) < 1 - r := by linarith
    rw [div_le_iff₀ h1r]
    nlinarith
  calc ∑' n : ℕ, Real.exp (-(c * ((n : ℝ) + 1) ^ 2) / t)
      ≤ ∑' n : ℕ, r ^ (n + 1) := htsum
    _ = r / (1 - r) := hval
    _ ≤ 2 * r := hbound

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.winding_term_le
#print axioms PairedDirac.Manuscript.winding_nonzero_sum_le

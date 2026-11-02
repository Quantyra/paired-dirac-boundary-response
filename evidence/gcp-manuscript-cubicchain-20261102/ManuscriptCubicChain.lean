import ManuscriptCubic

/-!
# Manuscript formalization: the `s = √t k` substitution in `(4.3)`

Proposition 4.1's proof substitutes `s = √t k` in `(4.2)` and states that the
limit reduces to `144 c_u c_w / π²` times the kernel integral
`∫₀^∞ R3(s²) ds/s⁸`. This file certifies the *scalar* bookkeeping of that
substitution, mirroring the certified `cubic_coefficient`.

With `(4.2)` as printed, `B_t = (1/(πt))·(1/(2π))∫ uhat what R3(tk²) dk`, and
`uhat(s/√t) what(s/√t) → 144 c_u c_w t⁴ s⁻⁸`, the substitution gives

```text
t^(-5/2) B_t  →  [t^(-5/2)·(1/(πt))·(1/(2π))·t^(-1/2)·t⁴] · 144 c_u c_w · I,
I = ∫₀^∞ R3(s²) ds/s⁸,
```

and the bracket equals `1/(2π²)`. Hence the coefficient of `I` is
`144 c_u c_w/(2π²) = 72 c_u c_w/π²`.

## Open bookkeeping check (recorded, not a defect claim)

The manuscript states the coefficient `144 c_u c_w/π²`; the displayed
normalization gives `72 c_u c_w/π²`, a factor `2` — the **same** factor `2`
that the log chain shows (`log_term_half_split` vs `log_term_printed` in
receipt `gcp-manuscript-logcoef-20261102`). A single convention difference
(candidate: the `dk/(2π)` in `(4.2)` against the draft's Fourier normalization)
would explain both. This is an arithmetic observation about the displayed text;
it is not a claim that the manuscript is wrong. The limit itself — dominated
convergence, the Fourier tails, and the evaluation of `I` — is not formalized
here.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- `t^(5/2) = t²·√t`. -/
theorem rpow_five_halves (t : ℝ) (ht : 0 < t) :
    t ^ ((5 : ℝ) / 2) = t ^ 2 * Real.sqrt t := by
  have h : (5 : ℝ) / 2 = 2 + 1 / 2 := by norm_num
  rw [h, Real.rpow_add ht, Real.rpow_two, Real.sqrt_eq_rpow]

/-- `t^(-5/2) = 1/(t²√t)`. -/
theorem rpow_neg_five_halves (t : ℝ) (ht : 0 < t) :
    t ^ (-((5 : ℝ) / 2)) = 1 / (t ^ 2 * Real.sqrt t) := by
  rw [Real.rpow_neg (le_of_lt ht), rpow_five_halves t ht, one_div]

/-- The substitution bracket of `(4.3)`:
`t^(-5/2)·(1/(πt))·(1/(2π))·(1/√t)·t⁴ = 1/(2π²)`. -/
theorem cubic_scaling_factor (t : ℝ) (ht : 0 < t) :
    t ^ (-((5 : ℝ) / 2)) * (1 / (Real.pi * t)) * (1 / (2 * Real.pi)) * (1 / Real.sqrt t) * t ^ 4
      = 1 / (2 * Real.pi ^ 2) := by
  have ht0 : t ≠ 0 := ne_of_gt ht
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  have hs : Real.sqrt t ≠ 0 := (Real.sqrt_pos.mpr ht).ne'
  rw [rpow_neg_five_halves t ht]
  have hsq : Real.sqrt t ^ 2 = t := Real.sq_sqrt (le_of_lt ht)
  field_simp
  rw [hsq]

/-- The coefficient of the kernel integral `I` under the displayed
normalization: `144 c_u c_w/(2π²)`. -/
theorem cubic_limit_coefficient (cu cw : ℝ) :
    144 * cu * cw * (1 / (2 * Real.pi ^ 2)) = 72 * cu * cw / Real.pi ^ 2 := by
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  field_simp
  ring

/-! ## Resolution of the factor `2`

The substitution `s = √t k` in `(4.2)` runs over `k ∈ ℝ`, hence over `s ∈ ℝ`,
while the draft's stated constant is the **half-line** integral
`I = ∫_0^∞ R3(s²)ds/s⁸`. The kernel is even in `s` (`R3 ((-s)²) = R3 (s²)` and
`(-s)⁸ = s⁸`), so the full-line integral is twice the half-line one; that factor
`2` is exactly the discrepancy recorded in `cubic_scaling_factor` and in the log
chain. -/

/-- The kernel is even in `s`. -/
theorem kernel_even (s : ℝ) : R3 ((-s) ^ 2) / (-s) ^ 8 = R3 (s ^ 2) / s ^ 8 := by
  rw [neg_sq, neg_pow]
  norm_num

/-- With the evenness factor `2` (full line → half line) the cubic coefficient is
the printed `144 c_u c_w/π²`. -/
theorem cubic_limit_coefficient_doubled (cu cw : ℝ) :
    2 * (144 * cu * cw * (1 / (2 * Real.pi ^ 2))) = 144 * cu * cw / Real.pi ^ 2 := by
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  field_simp

/-- With the same evenness factor the log coefficient is the printed
`-(D t³ log t)/(70π)`. -/
theorem log_coefficient_doubled (D t : ℝ) :
    2 * ((D / (70 * Real.pi)) * t ^ 3 * (-(1 / 2) * Real.log t))
      = -(D * t ^ 3 * Real.log t) / (70 * Real.pi) := by
  ring

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.rpow_five_halves
#print axioms PairedDirac.Manuscript.rpow_neg_five_halves
#print axioms PairedDirac.Manuscript.cubic_scaling_factor
#print axioms PairedDirac.Manuscript.cubic_limit_coefficient
#print axioms PairedDirac.Manuscript.kernel_even
#print axioms PairedDirac.Manuscript.cubic_limit_coefficient_doubled
#print axioms PairedDirac.Manuscript.log_coefficient_doubled

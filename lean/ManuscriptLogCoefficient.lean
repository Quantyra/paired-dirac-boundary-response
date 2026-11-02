import ManuscriptCubic

/-!
# Manuscript formalization: Proposition 4.2's printed coefficient algebra

Proposition 4.2 of `manuscript/DRAFT.md` states the logarithmic jet

```text
B_t(u,w) = -15 c_u c_w t^(5/2)/(1024 √π)
           - (c_u d_w + d_u c_w) t³ log t/(70π)
           + o(t³ |log t|),                                  (4.4)
```

from the Fourier tail

```text
conj(uhat) what = 144 c_u c_w |k|^{-8}
                  - 288π (c_u d_w + d_u c_w) |k|^{-9} + o(|k|^{-9}).   (4.5)
```

This file certifies the printed *arithmetic* that turns the `|k|^{-9}` tail
coefficient into the `t³ log t` coefficient, together with the `t^{5/2}` term
already certified as `cubic_coefficient`:

* `tail_ratio` — `288π/(2π·10080) = 1/70`, the ratio of the `(4.5)` log tail
  coefficient `-288π` to the `R3` quartic coefficient `-1/10080` under the
  `(4.2)` normalization `1/(πt)·1/(2π)`;
* `log_conversion` — the exact integrand identity
  ```text
  (1/(πt))(1/(2π))·(-288πD k⁻⁹)·(-(t k²)⁴/10080) = (D/(70π))·t³·k⁻¹,
  ```
  i.e. the log tail contributes `(D/(70π))t³` times `∫ dk/k`;
* `log_term_printed` — the printed `(4.4)` coefficient written as
  `-(D/(70π))·t³·log t`;
* `log_term_half_split` — the value obtained from the *manuscript's own*
  statement "the integral of `dk/k` supplies `-(1/2) log t`", namely
  `-(D·t³·log t)/(140π)`.

The last two differ by a factor `2`. That is an arithmetic observation about the
displayed text, recorded here and in the ledger as an open convention check: the
`1/(2π)` in `(4.2)`, the `-1/10080` leading coefficient of `R3`, the `-288π`
tail coefficient, or the `(1/2)` from the split must absorb it. It is **not** a
claim that the manuscript is wrong, and the analysis (split, tails, remainder)
is not formalized here.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- `288π/(2π·10080) = 1/70`: the log-tail-to-quartic ratio under the `(4.2)`
normalization. -/
theorem tail_ratio : (288 * Real.pi) / (2 * Real.pi * 10080) = 1 / 70 := by
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  field_simp
  norm_num

/-- The integrand conversion: the `|k|^{-9}` tail against the quartic leading
term of `R3` gives `(D/(70π))t³ k⁻¹`, i.e. the coefficient of `∫ dk/k`. -/
theorem log_conversion (D t k : ℝ) (ht : t ≠ 0) (hk : k ≠ 0) :
    (1 / (Real.pi * t)) * (1 / (2 * Real.pi)) *
        (-288 * Real.pi * D * k ^ (-9 : ℤ)) * (-(t * k ^ 2) ^ 4 / 10080)
      = (D / (70 * Real.pi)) * t ^ 3 * k ^ (-1 : ℤ) := by
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  have hk2 : k ^ 2 ≠ 0 := pow_ne_zero 2 hk
  field_simp
  ring

/-- The printed `(4.4)` log coefficient, in the form used above. -/
theorem log_term_printed (D t : ℝ) :
    -(D * t ^ 3 * Real.log t) / (70 * Real.pi)
      = -(D / (70 * Real.pi)) * t ^ 3 * Real.log t := by
  ring

/-- The coefficient obtained from the manuscript's own split statement that
`∫ dk/k` supplies `-(1/2) log t`. -/
theorem log_term_half_split (D t : ℝ) :
    (D / (70 * Real.pi)) * t ^ 3 * (-(1 / 2) * Real.log t)
      = -(D * t ^ 3 * Real.log t) / (140 * Real.pi) := by
  ring

/-- The `t^{5/2}` coefficient of `(4.4)` is the already-certified cubic
constant (`cubic_coefficient` in `ManuscriptCubic`). -/
theorem cubic_term_42 (cu cw : ℝ) :
    144 * cu * cw / Real.pi ^ 2 * (-5 * Real.pi ^ ((3 : ℝ) / 2) / 49152)
      = -15 * cu * cw / (1024 * Real.sqrt Real.pi) :=
  cubic_coefficient cu cw

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.tail_ratio
#print axioms PairedDirac.Manuscript.log_conversion
#print axioms PairedDirac.Manuscript.log_term_printed
#print axioms PairedDirac.Manuscript.log_term_half_split
#print axioms PairedDirac.Manuscript.cubic_term_42

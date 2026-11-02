import ManuscriptSmallOrder

/-!
# Manuscript formalization: the beta moment `∫₀¹ a⁴ = 1/630`

The small-`x` assembly of `R2(x) = x³/840 - x⁴/10080 + O(x⁵)` needs the fourth
beta moment of `a(α) = α(1-α)`:

```text
∫₀¹ a(α)⁴ dα = B(5,5) = 4!·4!/9! = 1/630.
```

Certified here together with `continuous_g2`, the continuity of the second
remainder `g₂(t) = ∫₀^t g₁`, which the termwise integration requires.

The assembly itself (comparing `φ(a x)` with `(ax)³/3 - (ax)⁴/8` and taking the
`α`-average) is the next increment and is **not** claimed here.
-/

open MeasureTheory

namespace PairedDirac.Manuscript

/-- The beta moment `∫₀¹ a(α)⁴ dα = 1/630`. -/
theorem integral_weightA_quartic : ∫ al in (0 : ℝ)..1, (weightA al) ^ 4 = 1 / 630 := by
  have hderiv : ∀ al : ℝ,
      HasDerivAt (fun t : ℝ => t ^ 5 / 5 - 2 * t ^ 6 / 3 + 6 * t ^ 7 / 7 - t ^ 8 / 2 + t ^ 9 / 9)
        ((weightA al) ^ 4) al := by
    intro al
    have h5 : HasDerivAt (fun t : ℝ => t ^ 5 / 5) (5 * al ^ 4 / 5) al :=
      (hasDerivAt_pow 5 al).div_const 5
    have h6 : HasDerivAt (fun t : ℝ => 2 * t ^ 6 / 3) (2 * (6 * al ^ 5) / 3) al :=
      ((hasDerivAt_pow 6 al).const_mul 2).div_const 3
    have h7 : HasDerivAt (fun t : ℝ => 6 * t ^ 7 / 7) (6 * (7 * al ^ 6) / 7) al :=
      ((hasDerivAt_pow 7 al).const_mul 6).div_const 7
    have h8 : HasDerivAt (fun t : ℝ => t ^ 8 / 2) (8 * al ^ 7 / 2) al :=
      (hasDerivAt_pow 8 al).div_const 2
    have h9 : HasDerivAt (fun t : ℝ => t ^ 9 / 9) (9 * al ^ 8 / 9) al :=
      (hasDerivAt_pow 9 al).div_const 9
    have h := (((h5.sub h6).add h7).sub h8).add h9
    convert h using 1
    unfold weightA
    ring
  have hint : IntervalIntegrable (fun al : ℝ => (weightA al) ^ 4) volume (0 : ℝ) 1 :=
    (by continuity : Continuous fun al : ℝ => (al * (1 - al)) ^ 4).intervalIntegrable 0 1
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hderiv x) hint
  rw [h]
  norm_num

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.integral_weightA_quartic

import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
The pointwise rational-jet regrouping used in the curved scalar/contact
comparison. This file does not derive the Hessian expansion, justify
integration by parts, or certify any heat-trace or physical-response claim.
Those analytic steps remain in the ordinary proof audit.
-/

theorem curved_scalar_contact_jet_identity
    (f f1 f2 u u1 u2 w w1 w2 xu xw : ℝ)
    (hf : f ≠ 0) :
    (-2 * u1 * w1 / f
      + f1 * u * w1 / (3 * f ^ 2)
      + f1 * w * u1 / (3 * f ^ 2)
      + f1 * u2 * xw / (3 * f ^ 2)
      + f1 * w2 * xu / (3 * f ^ 2)
      + f2 * u1 * xw / (3 * f ^ 2)
      + f2 * w1 * xu / (3 * f ^ 2)
      - 2 * f1 ^ 2 * u1 * xw / (3 * f ^ 3)
      - 2 * f1 ^ 2 * w1 * xu / (3 * f ^ 3))
      = (-2 * u1 * w1 / f
        + ((f2 * (u1 * xw + w1 * xu)
            + f1 * (u2 * xw + w2 * xu - u1 * w - w1 * u))
            / (3 * f ^ 2)
          - 2 * f1 ^ 2 * (u1 * xw + w1 * xu) / (3 * f ^ 3))
        + 2 * f1 * (u1 * w + u * w1) / (3 * f ^ 2)) := by
  field_simp
  ring

#print axioms curved_scalar_contact_jet_identity

/-!
The next theorem checks only the coefficient subtraction printed in the
flat full-Weyl/source-conversion comparison. The O(t) remainders and the
identification with a physical response are not represented here.
-/

noncomputable def flatFullWeylLocal (b0 C0 t U0 U1 : ℝ) : ℝ :=
  8 * b0 ^ 2 / (Real.pi * t ^ 2) * U0
    + C0 / (Real.pi * t) * U0
    - b0 ^ 2 / (2 * Real.pi * t) * U1

noncomputable def flatSourceConversionLocal (b0 C0 C1 t U0 U1 U2 : ℝ) : ℝ :=
  C0 / (2 * Real.pi * t) * U0
    + b0 ^ 2 / (12 * Real.pi * t) * U1
    + 1 / (2 * Real.pi) *
      (-C0 * U1 / 12 - b0 ^ 2 * U2 / 60 + 2 * C1 * U0 / b0 ^ 2)

noncomputable def flatLocalCoefficientResidual
    (b0 C0 C1 t U0 U1 U2 : ℝ) : ℝ :=
  8 * b0 ^ 2 / (Real.pi * t ^ 2) * U0
    + C0 / (2 * Real.pi * t) * U0
    - 7 * b0 ^ 2 / (12 * Real.pi * t) * U1
    + C0 / (24 * Real.pi) * U1
    + b0 ^ 2 / (120 * Real.pi) * U2
    - C1 / (Real.pi * b0 ^ 2) * U0

theorem flat_local_coefficient_difference
    (b0 C0 C1 t U0 U1 U2 : ℝ) (hb0 : b0 ≠ 0) (ht : t ≠ 0) :
    flatFullWeylLocal b0 C0 t U0 U1
      - flatSourceConversionLocal b0 C0 C1 t U0 U1 U2
      = flatLocalCoefficientResidual b0 C0 C1 t U0 U1 U2 := by
  unfold flatFullWeylLocal flatSourceConversionLocal
    flatLocalCoefficientResidual
  have hpi : Real.pi ≠ 0 := Real.pi_ne_zero
  field_simp
  ring

#print axioms flat_local_coefficient_difference

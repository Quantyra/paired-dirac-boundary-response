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
  field_simp [hf]
  <;> ring

#print axioms curved_scalar_contact_jet_identity

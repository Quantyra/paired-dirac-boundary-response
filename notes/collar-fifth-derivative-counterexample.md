# Original collar weights do not imply fifth-derivative integrability

The jet-preserving smoothing argument in [the compatibility note](jet-smoothing-weight-compatibility.md) assumes an integrable post-jet fifth derivative. This assumption is not implied by the source's j≤5 pointwise collar weights, even when the first four seam jets vanish. Consequently that smoothing result cannot be applied to the entire original class without a further argument or an explicit restriction of the theorem.

Choose a smooth cutoff χ supported in |y|<e⁻² and equal to one near zero, and define

    r(y) = χ(y) |y|⁴ sin(log(log(1/|y|)))   (y ≠ 0),   r(0)=0.

Put L=log(1/|y|) and f(L)=sin(log L). For 0≤j≤4, repeated differentiation gives

    r^(j)(y)=O(|y|^(4-j))

near the seam. Thus r and its first three derivatives extend continuously by zero at y=0. Its fourth derivative is bounded but need not have a limit there. The fifth derivative exists away from the seam and has the asymptotic form

    r^(5)(y) = -24 sgn(y) cos(log L)/(|y| L)
               + O(1/(|y| L²)).                         (1)

To see (1), on the positive side differentiate y⁴f(L) using y d/dy = -d/dL on f: the term with one L derivative has coefficient -24/y, and every remaining term contains at least two L derivatives of f. Those are O(L⁻²). Even reflection supplies the sign on the negative side. Cutoff derivatives occur only away from the seam.

The displayed bounds meet the source's remainder estimates: for 0≤j≤5 they are bounded by a fixed multiple of |y|^(4-j)(1+log(1/|y|)), after enlarging the constant to cover the cutoff transition. In contrast, (1) gives

    ∫₀^δ |r^(5)(y)| dy = ∞.

Indeed, after L=log(1/y), the leading absolute integral is ∫ |cos(log L)| dL/L = ∫ |cos u| du, which diverges; the error contributes a finite ∫ dL/L². Since r has bounded fourth derivative, its fourth weak derivative is represented almost everywhere by that classical derivative. Were r in W^{5,1} across the seam, that representative would have an absolutely continuous version with integrable derivative, contradicting the divergent integral above.

This example has no explicit cubic or y⁴ log y jet: c=d=0. Multiplication by any fixed nonzero scalar can reduce its collar constant without changing the divergence. It therefore isolates the integrability gap rather than a failure of the lower-order weighted estimates. The example is an allowed local remainder under the displayed collar inequalities; any separate global or physical hypotheses still need their own examination.

This is an ordinary counterexample to an implication between function classes, not a counterexample to the proposed operator theorem, the response theorem, or the physical existence of a solution. No numerical or Lean verification is claimed.

Remaining to-do list: find a smoothing or trace argument that works for the full original class, or explicitly justify and assess a narrower physical class; complete the response and novelty audits, manuscript, and GCP Lean certification.

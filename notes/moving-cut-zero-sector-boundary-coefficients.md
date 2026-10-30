# Moving-cut boundary coefficients for cubic directions

This estimates the explicit low-order mixed-boundary heat coefficients at a moving product-orbit cut. It complements `zero-sector-mixed-boundary-lll-coefficient.md`: unlike the limiting boundary, the cut at y=delta has small nonzero direction jets. The result is a coefficient estimate, not a uniform heat-remainder or common-regulator theorem.

Let X_delta be the stipulated compact smooth product-orbit cuts, with mixed Dirichlet/Robin square realization and boundary circle of uniformly bounded length. Let u,v be fixed scalar directions whose boundary-normal jets satisfy, uniformly at y=delta,

  |u|+|v| <= K delta³,  |nabla u|+|nabla v| <= K delta²,
  |nabla² u|+|nabla² v| <= K delta.                            (1)

These follow for the source's stationary one-sided cubic/weighted-log collar when its product-coordinate and normal-frame identifications have the stated uniform bounds. No claim about a smooth even reflection is needed.

Assume the coefficients, boundary splitting, Robin endomorphism, curvature and their first parameter variations that occur in the standard mixed heat coefficients a1,a2,a3 are uniformly bounded as delta varies, and that a fixed scalar insertion's normal derivatives through order two have uniformly bounded parameter variations in terms of its own jets through order two. This is a concrete smooth-family hypothesis: it requires the actual square boundary condition, normalized frames and the relevant field/metric derivatives to be matched. Assume also that the physical-half/time trace is a fixed bounded multiple of this model trace. These conditions concern the coefficients themselves; no uniform remainder is assumed.

The [mixed-boundary formulas](https://arxiv.org/html/hep-th/0306138v3#S5.SS3), equations (5.30)--(5.32), show that the boundary part of a1 is linear in u, that of a2 is linear in u and its normal first derivative, and that of a3 is linear in u and its first two normal derivatives. The same pattern holds after differentiating in v: the parameter derivative acts on uniformly bounded coefficient tensors, the boundary measure, and the normal jets of the fixed insertion. Using (1) and bounded boundary length gives

  |partial_v a1_boundary(u)| <= C K² delta³,
  |partial_v a2_boundary(u)| <= C K² delta²,
  |partial_v a3_boundary(u)| <= C K² delta.                  (2)

The constants also depend on the fixed geometry and the declared bounds; the K² notation assumes the family is linear in v and normalized by its direction norm. The same estimates hold with u,v interchanged. These are deliberately conservative: additional cancellations or the smallness of v's boundary jets may improve them, but are not needed here. The regular bolt is interior and contributes no boundary coefficient.

In dimension two, the corresponding terms in the zero-sector mixed seed jet carry t^(-1/2), t^0 and t^(1/2), respectively. Hence their combined absolute size at t=epsilon is bounded by

  C K² [delta³ epsilon^(-1/2)+delta²+delta epsilon^(1/2)].    (3)

For the recorded nonzero angular tower, its geometric part has the full Theta(epsilon)=O(epsilon^-1) factor, giving the bound

  C K² [delta³ epsilon^(-3/2)+delta² epsilon^(-1)
                          +delta epsilon^(-1/2)].             (4)

Thus delta=epsilon^p with p>1/2 makes these displayed boundary coefficient terms vanish. This is compatible with the stricter contact-insertion condition p>(4+2eta)/7 in `product-contact-heat-bound-h2.md`, for any fixed 0<eta<1. The contact term and all of its own boundary coefficients are not estimated by (4); neither is the effect of changing the operator or its domain.

The heat expansion at each fixed cut does not give a remainder uniform as delta and epsilon tend to zero together. Equation (4) therefore cannot be used alone to remove the common regulator or establish the source's finite part. The actual transported infinity boundary, coefficient-variation bounds, physical normalization, rough seam, angular/thermal identities and remaining geometric and contact vertices must still be verified. No numerical or Lean certification is claimed.

Remaining to-do list: prove the uniform differentiated remainder and physical matching on the common cut path, complete the novelty audit and manuscript, and certify supported claims in Lean on GCP.
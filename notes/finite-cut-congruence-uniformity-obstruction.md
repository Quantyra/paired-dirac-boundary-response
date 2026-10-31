# Loss of uniform invertibility at the conformal cut

**Claim.** The finite-cut congruence identity `P=E D_hat E` cannot be promoted to a cut-uniform graph equivalence by the fixed-cut bounded-invertible multiplier argument alone when the conformal factor is `u=ell/r` on the exterior interval `r_h <= r <= R`.

**Ordinary argument.** On each finite cut, `E=u^(1/2)=sqrt(ell/r)` is a positive multiplication operator. Its essential supremum is `sqrt(ell/r_h)`, while the essential supremum of its inverse is `sqrt(R/ell)` (with equality understood as a supremum at the outer edge). Hence

```text
||E||_(L2->L2) = sqrt(ell/r_h),
||E^(-1)||_(L2->L2) = sqrt(R/ell),
cond_L2(E) = sqrt(R/r_h).
```

For the natural finite-cut graph norm `||f||_H1`, multiplication has

```text
||E^(-1) f||_H1 <= ||E^(-1)||_infinity ||f||_H1
                    + ||d(E^(-1))||_infinity ||f||_L2,
```

and the first term already has coefficient `sqrt(R/ell)`. The derivative term does not remove this loss. Since the multiplier is radial, it preserves the angular projector spaces on each cut, but this boundary preservation does not improve its interior lower bound.

**First unsupported implication.** A cut-uniform estimate for the physical paired response or trace from the finite-cut operator identity. Any such estimate must use additional weighted spaces, localization, cancellation, or a different comparison; it cannot follow with constants uniform in `R` from the ordinary bounded-invertible `E`/`E^(-1)` graph comparison.

**Numerical role.** None. This is an exact multiplier norm calculation. It is not a lower bound for the physical response, determinant, heat trace, or admission margin, and it does not rule out a renormalized common-regulator limit.

**Relation to Lean.** No Lean run is appropriate: the result is a direct norm computation, while the abstract set-domain lemma in `FiniteCutCongruenceDomain.lean` has already been checked. Formalizing the scalar supremum would not address the missing analytic response estimate.

This sharpens the limitation recorded in [`physical-product-contact-operator-gap.md`](physical-product-contact-operator-gap.md). It identifies why the fixed-cut congruence is not a uniform endpoint argument; the physical density/contact/LLL comparison and common-regulator limit remain to be established independently.

Remaining to-do list: derive a weighted or localized estimate that compensates for this loss, then close the physical response and common-regulator bridge, novelty audit, manuscript, and claim-matched Lean certification.

# Smooth mixed-boundary zero-sector LLL coefficient

This extends `zero-sector-curved-local-lll-coefficient.md` from interior-supported directions to smooth cubic-jet directions reaching the boundary, for a specified compact two-dimensional mixed-boundary model. It checks the local finite coefficient and its low-order boundary terms; it does not prove the rough-seam or physical common-regulator limit.

## Hypotheses and boundary coefficients

Let X be a compact smooth two-dimensional orbit with one smooth outer boundary and a regular bolt included as an interior point. Let L_b be an untwisted rank-two Dirac-type square for g_b=exp(2b)g, transported unitarily to a fixed Hilbert space. Assume its actual composition domain is the smooth mixed Dirichlet/Robin realization with projectors Pi_minus, Pi_plus and Robin endomorphism S_b, as in `multiplier-square-boundary.md`. Assume the boundary splitting and coefficients depend smoothly on the real variation parameter and the smeared heat expansion may be differentiated with a uniform remainder. These are model hypotheses, not a verification of the source's global bundle or transported infinity boundary.

Let u and v be real smooth scalar directions with boundary jets through second order zero: u|_boundary=partial_n u|_boundary=partial_n² u|_boundary=0, and likewise for v. Smooth cubic behavior in a boundary-normal coordinate supplies these conditions. In the standard mixed-boundary coefficients, [Vassilevich, equations (5.29)--(5.32)](https://arxiv.org/html/hep-th/0306138v3#S5.SS3), the a1 boundary integrand is proportional to u; the a2 boundary integrand contains only u and partial_n u; and the a3 boundary integrand contains only u, partial_n u and partial_n² u. Hence all three smeared boundary coefficients vanish for u, for every nearby parameter value. The conclusion is unchanged when the normal, projector, Robin coefficient and induced boundary metric vary smoothly: every term still contains one of the vanishing jets. The same holds with u and v interchanged.

## Mixed zero-sector coefficient

The remaining a0 and a2 terms are the bulk ones. With Delta=div grad and E=-R/4 Id, the rank-two local density is tr(E+R/6)=-R/6. Using the two-dimensional conformal identities in `zero-sector-curved-local-lll-coefficient.md` and differentiating the smooth heat expansion gives

  partial_v T_t(u;0)
    = (1/(4pi))[4/t integral_X u v +(1/3) integral_X u Delta v]
        + O(t).                                               (1)

Here the a3 term also vanishes, so its t^(1/2) contribution is absent. Integration by parts has no outer boundary term because u and partial_n v vanish there; the smooth bolt introduces no boundary term. Combining (1) with the positive-cut zero-sector identity in `product-zero-sector-skew-endpoint-jets.md` yields

  J_t''(0)[u,v]
    = (1/(4pi))[4/t integral_X u v
                -(1/3) integral_X grad u.grad v] + O(t).      (2)

For q identical zero sectors with the same declared trace convention, the finite coefficient after the model's inverse-time subtraction is -q/(12pi) integral grad u.grad v. This agrees with the polarized coefficient of the [source's recorded LLL cocycle](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-seed-quantum-form.md) only after matching its conformal tangent, action sign, per-exterior/time normalization and single allocation of the q modes. It is not a second term to add to an already allocated LLL action.

This is a smooth compact boundary result. At a finite cut y=delta the source directions generally have small nonzero jets rather than the zero jets assumed here; their boundary coefficients need a separate uniform moving-cut estimate. Nor does the calculation establish the differentiated heat remainder for the reflected cubic/log seam, state-dependent contributions, the actual physical bundle and boundary, or a common rough regulator. No numerical or Lean certification is claimed.

Remaining to-do list: prove the moving-cut and rough-seam remainder, match the physical LLL and massive traces and subtraction, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
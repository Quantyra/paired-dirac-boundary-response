# Flat conversion comparison with the source finite contact

This is an algebraic consistency check against Eq. (9) of the pinned
[source conversion note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md).
It does not prove that its curved expansion, physical trace, common-regulator
limit or bundle hypotheses hold. The source itself states stronger conclusions;
the present comparison checks only the displayed flat finite coefficients.

Let C=b^2, H0=C0=-q-1/3 and H1=C1/b^2=(q^2/6-1/30)/b^2,
as in the source angular convention. Set its curvature R and its derivatives
to zero, take a flat physical half-plane per unit tangential length, and take
u,v real, even and in H3(R). Assume the source's flat normal coordinate,
Fourier and trace normalizations agree with those of
[the flat conversion](flat-conversion-angular-local-terms.md). Write
V_j=integral_0^infinity u^(j)(y)v^(j)(y) dy. Even reflection gives U_j=2V_j
for j=0,1,2, including the sign change in odd derivatives on both factors.

The finite coefficient in equation (4) of the flat calculation is therefore

  (1/pi) [2 H1 V0 - H0 V1/12 - C V2/60].                 (1)

The R=0 specialization of source Eq. (9), using the same half-plane trace
and per-unit-tangential-length convention, is

  (1/(4 pi)) [8 H1 V0 - (H0/3) V1 - (C/15) V2].          (2)

The two expressions agree term by term. In particular, neither the angular
multiplicities nor the physical-half factor should be divided a second time
when comparing these two declared conventions. The inverse-time terms of the
flat expansion are divergent local terms and are not part of this finite-part
comparison. The n>=1 angular sum here is precisely the tower used in the
source conversion; an independently defined zero sector would alter the
finite coefficient and must be kept in its own source block.

This comparison tests the local coefficients and the half-versus-full-line
bookkeeping. It does not independently derive the curved coefficients, prove
that the physical realization meets the stated assumptions, identify all
source blocks or establish the regulator-uniform P1-D remainder. No numerical
execution is needed for the algebraic comparison and it is not Lean-certified.

Remaining to-do list: establish the physical source and zero-sector matching,
prove the necessary curved and regulator estimates, settle novelty and scope,
complete the manuscript, and certify the supported claims in Lean on GCP.

# Curved interior zero-sector coefficient and the LLL cocycle

This extends `zero-sector-flat-lll-normalization-comparison.md` to the smooth interior of the stipulated two-dimensional product-orbit model. It checks the local finite coefficient, not the full curved LLL functional, a boundary heat expansion, or a common-regulator limit.

## Local coefficient

Let g be a smooth two-dimensional orbit metric and let L_b be the Dirac-type square for the conformal metric g_b=exp(2b)g, transported to the fixed Hilbert space with the scalar-insertion convention of `interior-conversion-first-curvature-coefficients.md`. Use its rank-two orbit trace and untwisted orbit endomorphism E=-R/4. Let u,v be real smooth directions supported in the interior. Assume the positive-time zero-sector identity in `product-zero-sector-skew-endpoint-jets.md` and the parameter-uniform interior heat expansion through the constant term. Then

  J_t''(0)[u,v]
     = (1/(4pi)) [4/t integral u v
                  -(1/3) integral grad u.grad v] + o(1),      (1)

where integrals use dvol_g. The first term is the local inverse-time subtraction; the finite term is -1/(12pi) times the gradient pairing.

For completeness, the local trace coefficient is tr(E+R/6)=-R/6 at rank two. Under g_z=exp(2zv)g,

  partial_z(dvol_(g_z))|_0=2v dvol_g,
  partial_z(R_(g_z) dvol_(g_z))|_0=-2 Delta v dvol_g.       (2)

Thus, for fixed scalar u and with Delta=div grad,

  partial_v T_t(u;0)
      = (1/(4pi))[4/t integral u v +(1/3) integral u Delta v]
          + o(1).                                             (3)

Substitution into the symmetrized zero-sector jet gives (1), since interior integration by parts gives integral u Delta v=-integral grad u.grad v. The coefficient and sign agree with `interior-conversion-first-curvature-coefficients.md`; no flat-space or angular-frequency truncation is used in this local calculation.

## Comparison and boundary scope

For q identical zero sectors with the same declared trace normalization, the finite coefficient in (1) is

  -q/(12pi) integral grad u.grad v.                            (4)

This matches the polarized local coefficient of the [recorded source LLL Polyakov cocycle](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-seed-quantum-form.md), provided the model b is the same conformal tangent, the source's action sign and physical-half/time convention agree, and its q sectors are counted once. It strengthens the flat coefficient comparison but is still a local consistency check. It must not be added to an already allocated source LLL cocycle as a new contribution.

For the source-type stationary cubic directions, u,v=O(y³) and partial_y u,partial_y v=O(y²) at a smooth finite-density product collar. The explicit integration-by-parts boundary pairing u partial_n v is O(y^5) and tends to zero; the regular bolt is an interior point when its smooth chart is established. This checks that particular pairing. It does not prove that every boundary heat coefficient or parameter-dependent boundary term vanishes, nor does it extend the assumed uniform expansion to the rough seam. If the fields are supported away from the boundary, the argument above is purely interior and avoids that issue.

The source's HH state, global determinant, boundary and bolt domains, physical normalization, possible twist terms, local counterterms and common cutoff remain to be matched. A boundary or state contribution not captured by (1) may alter the full finite functional. No numerical or Lean certification is claimed.

Remaining to-do list: verify the physical LLL and boundary realization, prove the full mixed and common-regulator limits, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
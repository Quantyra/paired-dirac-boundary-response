# First curvature and gradient coefficients in the interior conversion

This checks the next smooth-interior coefficients after
`interior-conversion-leading-cancellation.md`. It uses the standard local
Laplace-type heat coefficient through order four and the parameter-uniform
hypothesis in `interior-conversion-parametrix-reduction.md`. It does not
prove that hypothesis or the physical boundary and regulator identification.

Use Delta=div grad, the geometric metric variation g_z=e^(2zv)g in dimension
two, and the Laplace-type convention

  L=-(g^(ij) nabla_i nabla_j+E),   E=-R/4 Id.          (1)

This is the untwisted orbit Dirac-square convention used in the source;
additional twist endomorphisms require their own trace contribution. Let r
be the actual fiber rank and use the same trace normalization in both terms.
The local heat coefficients needed here are

  a_2 density = tr(E+R/6),
  a_4 density = (1/360) tr[60 Delta E+60 R E+180 E^2
                              + terms independent of E]. (2)

The terms independent of E do not change when the scalar potential lambda v
is added. All formulas below concern insertions supported in the smooth
interior or an integration by parts with no boundary contribution.

Because a_2 density is -r R/12, and

  d/dz [R_(g_z) dvol_(g_z)]|_0 = -2 Delta v dvol_g,  (3)

its first geometric variation for fixed scalar smearing u is

  D_v T_t(u)=(4pi)^(-1)[(2r/t) integral uv
                           +(r/6) integral u Delta v]+O(t). (4)

For the contact, the bounded potential perturbation L+lambda v changes
E to E-lambda v. Differentiating the E-dependent terms of (2) at lambda=0
gives r[R v/12-Delta v/6] for the a_4 density. The minus sign in the
potential Duhamel derivative therefore yields

  I_t(u,v)=(4pi)^(-1) r [integral uv
              +t integral(-R uv/12+u Delta v/6)]+O(t^2). (5)

The O terms require the parameter-uniform expansion, not merely formal
coefficient identities. For r=2, integration by parts in the interior and
symmetrization of the geometric variations give

  G_t=(4pi)^(-1)[4 integral uv/t
                      -(1/3) integral grad u.grad v]+O(t),
  I_t=(4pi)^(-1)[2 integral uv+t integral(-R uv/6
                               -grad u.grad v/3)]+O(t^2). (6)

These agree with the coefficients used in
`curved-conversion-leading-local-terms.md`, including their signs and the
rank-two factor. Applying a different common trace normalization multiplies
both formulas consistently. This check does not cover seam distributions,
finite-cut boundary terms, twisting corrections, higher-order coefficients,
or the source's complete renormalized response. No numerical run or Lean
certificate is claimed.

Remaining to-do list: verify the uniform parametrix and actual orbit/twist
hypotheses, handle boundary and higher coefficients and the common regulator,
resolve prior art, prepare the manuscript, and certify claims in Lean on GCP.
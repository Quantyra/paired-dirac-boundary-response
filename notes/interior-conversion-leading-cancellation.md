# Interior leading coefficient of the conversion cancellation

This checks the leading coefficient in the source conversion for smooth
interior insertions. It assumes the parameter-uniform local heat expansion
and operator/trace identifications specified in
`interior-conversion-parametrix-reduction.md`; it does not prove higher
coefficients, boundary asymptotics, or a physical regulator limit.

Let the two-dimensional orbit metric vary as g_z=e^(2zv)g, with v real and
smooth, and let L_z be the associated Dirac-type square transported to a
fixed Hilbert space. Let u be a fixed scalar smearing, and let r be the
actual fiber rank included in the declared trace. For the local leading
heat coefficient, the principal symbol is the metric quadratic form, so

  T_z(t;u)=Tr[u exp(-tL_z)]
          =(4pi t)^(-1) r integral u dvol_(g_z)+O(1).  (1)

Under a parameter-uniform expansion, differentiation gives

  D_v T_t(u)=(4pi t)^(-1) 2r integral u v dvol_g+O(1). (2)

The coefficient 2 follows from the two-dimensional conformal volume
variation. The fixed-Hilbert-space conjugation does not introduce another
scalar smearing factor: the trace identity in
`product-orbit-half-density-trace-identity.md` accounts for the density.
Formula (2) is an interior statement, with the local support, spin structure
and trace normalization fixed before applying any paired/per-exterior factor.

For the contact, perturb L_0 by lambda times multiplication by v. The
principal symbol and hence a_0 are unchanged. The standard first local heat
coefficient for L_0+lambda v differs from that of L_0 by -lambda r v.
With the Duhamel identity in the parametrix reduction, this yields

  I_t(u,v)=(4pi)^(-1) r integral u v dvol_g+O(t).     (3)

Equations (2)-(3) give, for the source-normalized symmetrized geometric term
G_t=[D_v T_t(u)+D_u T_t(v)]/2,

  g_(-1)=2 i_0,   i_0=(4pi)^(-1) r integral u v.       (4)

Thus, with Theta(t)=C/t+O(1) and Theta'(t)=-C/t^2+O(1), the t^(-2)
coefficient of Theta G_t+2Theta' I_t cancels. The cancellation holds for
any consistently applied overall trace normalization, including a
per-exterior factor, provided it is the same in both terms. For the source's
rank-two orbit convention r=2, (2)-(3) reproduce the displayed leading
4 integral uv and 2 integral uv coefficients in
`curved-conversion-leading-local-terms.md`, before any separate angular
multiplicity.

This verifies the interior leading-coefficient algebra under the stated
parametrix and trace assumptions. It does not establish cancellation of
additional boundary terms, the lower-order source coefficients, an actual
uniform complex parametrix, or the finite part. The convention that v is a
fixed scalar direction and the conformal metric is g_z=e^(2zv)g are essential.
No numerical run or Lean certificate is claimed.

Remaining to-do list: establish the uniform interior parametrix and lower
coefficients, match the boundary/source regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.
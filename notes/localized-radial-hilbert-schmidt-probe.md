# A localized radial Hilbert--Schmidt probe

This constructs an explicit probe for
`changing-cut-quantitative-trace-probe.md` and identifies the extra radial
smoothing it introduces. It is an auxiliary half-line construction, not an
unweighted physical trace or Lean certificate.

Let J_D and J_N be the nonnegative scalar Laplacians -partial_x² on
L²(0,infinity) with Dirichlet and Neumann boundary conditions at zero.
For a two-component radial fiber, choose either condition independently on
each component and call the resulting direct-sum operator J. Let
chi in L² intersect L-infinity be a scalar localization and define

    S_rad=M_chi (1+J)^(-1/2).                              (1)

The resolvent (1+J)^(-1) has the scalar kernels

    G_D(x,y)=[exp(-|x-y|)-exp(-(x+y))]/2,
    G_N(x,y)=[exp(-|x-y|)+exp(-(x+y))]/2.                (2)

These formulas follow by solving the one-dimensional Green equation and
checking the boundary and derivative-jump conditions. On the diagonal,
0<=G_D(x,x)<=1/2 and 0<=G_N(x,x)<=1. Using an orthonormal basis and
Tonelli's theorem for the nonnegative squared norms gives

    ||S_rad||_2² = integral |chi(x)|² tr_fiber G_J(x,x) dx
                 <= 2 ||chi||_2².                         (3)

Thus S_rad is Hilbert--Schmidt. For a nonnegative localized scalar insertion
u in L¹ intersect L-infinity, take chi=sqrt(u); then
||S_rad||_2²<=2||u||_1. Substitution into the quantitative trace-probe
estimate gives, for the two-dimensional angular model,

    ||S_tau* D_ell(z) S_tau||_1
       <= C_z H ||u||_1 sqrt(ell) tau^(-7/4),             (4)

where S_tau=S_rad tensor exp(-tau A²/2), with all the assumptions and
normalization of the preceding note. The bound includes the full angular
tower after its stated heat factor.

This probe is not multiplication by u. Indeed

    S_rad S_rad* = M_sqrt(u) (1+J)^(-1) M_sqrt(u),        (5)

which inserts a nonlocal radial resolvent between the two multiplication
factors. Trace cyclicity can move this operator within a trace but cannot
turn it into M_u. Removing or replacing (1+J)^(-1) requires an independent
estimate; the Dirichlet/Neumann choice for J is also a declared auxiliary
choice, not identification of the physical bolt. The angular heat factor,
physical domain and full response remain separate. No numerical calculation
is used.

Remaining to-do list: justify or remove the radial smoothing for the physical
observable, match boundary and regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
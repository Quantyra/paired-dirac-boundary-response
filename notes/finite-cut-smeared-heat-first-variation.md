# Fixed-cut smeared heat trace and first form variation

This gives the fixed-positive-time first variation needed for the geometric
smearing in `tangent-regulator-normalization.md`. It assumes the compact
sectorial form setting and Galerkin convergence of
`finite-cut-galerkin-heat-derivative.md`; it does not identify the physical
half-trace, prove source contacts, or remove any regulator.

Let L>=0 on H, V=Dom L^(1/2), R=(1+L)^(-1/2), K_t=exp(-tL), and assume
K_t is trace class for t>0. Let v be the bounded first form derivative and
B the bounded operator defined by <f,Bg>=v(Rf,Rg). Let U be any fixed bounded
operator on H. For 0<s<t put

  G_U,v(s)=Tr[B R^(-1) K_s U K_(t-s) R^(-1)].          (1)

The expression is a trace-class product with the spectral extensions of the
two heat factors; it is not an assertion that R^(-1) is bounded. For
0<s<=t/2, the spectral theorem gives

  ||R^(-1) K_s|| <= C_t s^(-1/2),
  ||K_(t-s) R^(-1)||_1 <= ||K_(t/2) R^(-1)||_1 < infinity. (2)

The last norm is finite because (1+lambda)^(1/2) exp(-t lambda/2) is bounded
by a multiple of exp(-t lambda/4). Taking the long factor on the other side
gives the symmetric bound near s=t. Thus G is absolutely integrable and

  integral_0^t |G_U,v(s)| ds
     <= C_t ||B|| ||U|| ||K_(t/2) R^(-1)||_1.          (3)

The precise constant absorbs the two endpoint integrals. For finite spectral
projections P_N, insert P_N next to both heat factors in (1). Strong
convergence of P_N, trace-norm convergence on the long factor, and uniform
operator bounds on the short factor give pointwise convergence and the same
integrable majorant. Finite-matrix Duhamel, followed by dominated convergence
and the trace-norm holomorphic Galerkin limit, yields

  d/dz Tr[U exp(-t L_z)]|_(z=0)
       = - integral_0^t G_U,v(s) ds.                    (4)

The heat semigroup in (4) is the operator associated with the common-domain
form family; no fixed square-operator domain is assumed. The order of U and
the heat factors in (1) follows from cyclicity at finite N and is preserved
in the trace-class limit. Formula (4) covers bounded matrix or scalar U,
including an unsymmetrized insertion; it is not a cyclic replacement of U
by the identity.

If a bounded insertion U(z1,z2) is twice differentiable in operator norm,
trace-norm differentiation gives the exact product rule

  partial_1 partial_2 Tr[U K]
    = Tr[U_12 K] + Tr[U_1 K_2] + Tr[U_2 K_1] + Tr[U K_12], (5)

all evaluated at the base point. Here K_i and K_12 are the respective
trace-norm heat derivatives; (4) describes K_i inside a fixed bounded trace.
Equation (5) inventories possible moving-insertion terms but does not infer
which U(z) represents the physical measure or determine contact coefficients.
For the fixed-smearing geometric term in the cited source, U is held fixed;
the separate mass/contact term and trace normalization must still be matched.

The bound uses the global heat trace of one compact cut and may diverge as
the cut moves or t approaches zero. No numerical run or Lean certificate is
claimed.

Remaining to-do list: identify physical density and contact terms, prove
uniform cut and regulator matching, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
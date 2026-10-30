# Physical-volume integrability of the conformal-log direction

This compares the product-collar regularity in
`conformal-log-cubic-direction.md` with the uncompactified physical volume
used in `physical-cut-tail-locality-reduction.md`. It is a scalar integrability
calculation, not a mixed heat-trace or regulator theorem.

For the fixed RN exterior

  g=F(r)d tau²+F(r)^(-1)dr²+r² g_S²,
  U=b_sphere/r,      b_conf=log U,                            (1)

the physical volume is r² dr d tau dOmega; the factors F and F^-1 cancel.
The product-frame collar coordinate y satisfies y(r)=a/r+O(r^-2), a>0,
by `rn-proper-canonical-collar-jets.md`. Let v(y)=c_v y³+O(y^4(1+|log y|))
with the corresponding differentiated bounds, and assume the stationary
radial direction and fixed finite thermal/sphere volumes of the source.
Then

  v(r)=c_v a³ r^-3+O(r^-4 log r),
  b_conf(r)=-log r+O(1).                                      (2)

If c_v!=0, for sufficiently large r there are positive constants C1,C2
such that

  C1 r^-3 log r <= |b_conf v| <= C2 r^-3 log r.               (3)

It follows that |b_conf v| is not L1 in the physical volume: the radial
integral is comparable to integral^infinity (log r)/r dr. It is Lp for
all p>1, since the radial integrand is comparable to
r^(2-3p)(log r)^p. If c_v=0, the L1 divergence is not implied by the
stated upper bound; it must be checked from the next jet.

For p=2 the tail has an explicit bound. For R>1,

  integral_R^infinity r^-4(log r)^2 dr
   = R^-3[(log R)^2/3+2 log R/9+2/27].                       (4)

Thus the physical L2 norm of b_conf v on r>=R is
O(R^(-3/2)(1+log R)). The differentiated source bounds, F(r) comparable to
r² at infinity, and the fixed seed connection also give the same order for
the L2 tails of its first and second physical covariant derivatives: each
physical radial derivative is controlled by r partial_r, which preserves the
O(r^-3 log r) order. This statement assumes the declared stationary radial
scalar and includes the fixed angular/thermal volume constants.

The contrast with product-frame H3 is a measure effect: the physical
four-volume grows toward infinity. Neither the L1 divergence nor L2 decay
proves a divergence or convergence of the mixed heat response. In particular,
the bridge insertion b_conf cannot be combined with a direction by formal
commutation alone; an actual vertex/Schatten factorization is still needed.
The physical bundle, boundary and regulator matching and Lean certification
remain open. No numerical calculation is used.

Remaining to-do list: use the physical L2 tail only within a justified mixed
heat factorization, establish the regulator and physical domains, resolve
novelty, complete the manuscript, and certify supported claims in Lean on GCP.

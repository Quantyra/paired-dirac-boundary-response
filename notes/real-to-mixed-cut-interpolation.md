# Recovering mixed cut derivatives from real convergence

This gives a conditional bridge from `full-weyl-localized-heat-tower-bound.md` to mixed variations. It does not assume that the cut difference is small at complex parameters. It does require a cut-uniform complex trace bound, which the operator-norm gap in `full-weyl-uniform-complex-form-gap.md` alone does not provide.

Let X be a complex Banach space and F(z1,z2) be X-valued and holomorphic on a neighborhood of the closed polydisc |zi|<=rho. Suppose

  sup_(|zi|<=rho) ||F(z)||_X <= M,
  sup_(xi real, |xi|<=rho/2) ||F(x1,x2)||_X <= delta.    (1)

For 0<h<=rho/2, the centered mixed difference D_h is the sum of F(±h,±h) with the alternating signs, divided by 4h². Hence ||D_h||<=delta/h². By the two-variable Taylor expansion and Cauchy's bound on coefficients,

  ||partial_1 partial_2 F(0)-D_h|| <= C M h²/rho^4.      (2)

Indeed, D_h retains only terms with both powers odd; beyond the (1,1) term their total degree is at least four. Summing the resulting geometric series for h/rho<=1/2 proves (2). If 0<delta<=M/16, take h=rho(delta/M)^(1/4); otherwise use h=rho/2. Thus, for a universal C,

  ||partial_1 partial_2 F(0)|| <= C rho^-2 sqrt(M delta)  (3)

when delta<=M, while the trivial Cauchy estimate covers delta>=M. The delta=0 case follows by taking h to zero. This argument works in trace-class and in an l1 direct sum of trace-class spaces; it does not exchange an unproved mode sum with differentiation.

For the model of the cited heat-tower note, set X to the l1 sum over angular and thermal modes of the trace-class operators on the full radial mode spaces, including angular multiplicity. On a fixed real two-direction neighborhood take

 F_ell(z,t) = ( S [exp(-t A_nj,z) - J* exp(-t A_ell,nj,z) J] S )_(n,j).

Assume: (i) the real-field estimates and constants of the heat-tower note are uniform on that neighborhood, yielding delta=C(sqrt(ell)+ell²)t^-N for ell<=c t; (ii) F_ell is X-valued holomorphic on a common complex polydisc of radius rho; and (iii) its X norm there is bounded by M(t)<=C t^-K, independently of ell, for 0<t<=1. The last two assumptions require uniform complex trace smoothing and summability for both full and cut families; sectorial operator-norm decay is not enough. Then (3) yields

 ||partial_1 partial_2 F_ell(0,t)||_X
   <= C_rho (sqrt(ell)+ell²)^(1/2) t^(-(N+K)/2),        (4)

after increasing C_rho if necessary when delta>M. The proof of the latter case uses Cauchy's estimate and M<=sqrt(M delta). The zero angular sector is included only if its own bounds are included in X and in the assumptions.

Writing Q=(N+K)/2, a sufficient joint path for integrating this bound over [epsilon,1] with dt/t² is ell=epsilon^p with p>max(1,4(Q+1)); constants N and K are finite but not yet determined. This proves neither path independence nor convergence of the separate physical subtraction and boundary terms.

A moving insertion is covered by the same argument if it factors as S_z=R_z S with R_z a uniformly bounded holomorphic multiplier and the cut uses the corresponding restriction: the real comparison remains bounded by a constant times delta, and the complex trace bound must include the R_z factors. More general moving insertions, action contacts, and counterterms require their own estimates. No physical identification, actual uniform complex trace bound, regulator cancellation, or Lean certificate is asserted.

Remaining to-do list: establish the uniform complex trace smoothing and mode sum on actual domains, match physical boundaries and all response terms, prove the regulator cancellation, complete the novelty audit and manuscript, and certify supported claims on GCP.

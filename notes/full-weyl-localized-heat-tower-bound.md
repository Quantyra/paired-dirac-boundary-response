# Conditional full-Weyl localized heat tower comparison

This combines `full-weyl-localized-resolvent-cut.md`, `full-weyl-reference-local-trace.md`, and `full-weyl-combined-mode-gap.md`. It is a conditional comparison for the stated local-projector model, not the physical Hessian or a renormalized response.

For each nonzero angular mode n and antiperiodic thermal mode j, let A_nj and A_ell,nj be the full and cut nonnegative self-adjoint full-Weyl squares. Assume all the uniform form, domain, fixed-collar W2,infinity, flux, endpoint and Poisson hypotheses in the preceding notes, with finite fiber rank per mode and the same retained differential expression. Assume moreover a common lower bound

  A_nj,A_ell,nj >= lambda_nj:=g(M_n²+nu_j²), g>0,        (1)

and that all constants in the endpoint and Poisson bounds are bounded by a fixed polynomial in 1+M_n+|nu_j|+|zeta|, delta^-1 and delta^-1/2, independent of n,j,ell. The combined-gap note supplies a candidate g under its explicit seed-domain and thermal-gap hypotheses; it does not verify (1) for the physical source. The angular masses and multiplicities and fixed thermal lattice are those in `symmetric-lapse-transfer-summability-test.md`.

Let S=sqrt(u), u>=0 bounded, supported in a fixed outer collar, and assume U_ell=integral_removed u<=C ell^4 in the canonical measure. Choose a shifted contour zeta=lambda_nj+z with rays z=r exp(+-i theta), r>=1/t, and the radius-1/t arc through the negative axis. Along it delta=dist(z,[0,infinity))>=c_theta/t and |zeta|<=C(M_n²+nu_j²+|z|). The full-Weyl transfer bound gives

  h_b <= C ell [1+M_n+|nu_j|+M_n²+nu_j²+|z|].           (2)

The reference trace is bounded by the preceding local Neumann comparison with a polynomial reference shift. Thus the fixed-mode trace resolvent difference is bounded by a fixed polynomial in 1+M_n+|nu_j|+|z| and t^-1 times

  exp(h_b)(sqrt(ell)+ell²),                                (3)

for ell<=1: use exp(h_b)-1<=h_b exp(h_b), ell<=sqrt(ell), and sqrt(U_ell)=O(ell²). The contour heat factor supplies exp[-t lambda_nj] and, on the rays, exp[-t |z| cos(theta)]. If ell<=c t for a sufficiently small fixed c, the quadratic and contour terms in (2) are absorbed by these exponentials, and the linear terms by Young's inequality. On the arc |z|=1/t, its length is O(1/t) and the same mode damping applies.

Dunford functional calculus and the Gaussian lattice estimates in the summability note therefore yield finite C,N such that

 sum_(n>=1) d_n sum_(j in Z)
 ||S[exp(-t A_nj)-J* exp(-t A_ell,nj)J]S||_1
   <= C (sqrt(ell)+ell²) t^(-N),  ell<=c t, 0<t<=1.      (4)

This includes the removed-collar input within the localized heat comparison. It is an *unsubtracted positive-time heat* estimate for the model, with finite but unspecified C,N; no numerical margin is asserted. A finite zero angular sector may be added separately if its own common thermal gap and the same uniform estimates hold.

For a cutoff epsilon, keep one ell fixed during t integration and choose ell=epsilon^p with p>max(1,2(N+1)). Then ell<=c epsilon for small epsilon and the integral of the right side of (4) over [epsilon,1] against dt/t² tends to zero. This is one sufficient path, not path independence, and the unknown N must be made explicit before using a specific exponent.

The estimate concerns heat operators with fixed scalar insertion. It does not control their first or mixed metric variations, moving densities, boundary-contact derivatives or counterterm changes. The uniform physical mode and boundary hypotheses, actual infinity transport, observable normalization and common-regulator cancellation remain open. No Lean certification is claimed.

Remaining to-do list: verify physical domains and uniform mode constants, extend the comparison to every mixed response vertex and subtraction, prove the regulator limit, resolve novelty, finish the manuscript, and certify supported claims on GCP.
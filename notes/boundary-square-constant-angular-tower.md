# Boundary-touching square resolvent on a constant-coefficient tower

This extends `boundary-touching-free-square-resolvent.md` from the zero mode
to the complete recorded magnetic-sphere tower for a constant radial angular
coefficient. It is an auxiliary product model, not the varying RN lapse,
physical infinity/bolt matching, regulated response or a Lean certificate.

On the full and cut half-lines use the local sigma_1 projector as in the
free-mode note. For each angular eigenvalue mu define

    H_mu=-i sigma_2 partial_x+alpha mu sigma_1,   alpha>0.

Since the coefficient is constant, H_mu²=-partial_x²+alpha² mu². Its actual
square domain has Neumann data on the allowed sigma_1 component and
Dirichlet data on the other, by the same first-order composition argument
as in `finite-interval-radial-square-domain.md`. With fixed M>0 set
kappa_mu=sqrt(M²+alpha² mu²). The full and cut square-resolvent kernels are
therefore exactly the free kernels of the preceding note with M replaced
by kappa_mu.

For u>=0 in L¹ intersect L-infinity, S=M_sqrt(u),
U=integral_0^infinity u and U_ell=integral_0^ell u, that proof gives in
each mode

 ||S[J_ell* (H_(ell,mu)²+M²)^(-1) J_ell
              -(H_mu²+M²)^(-1)]S||_1
   <= [||u||_infinity ell+2 sqrt(U U_ell)]/kappa_mu.      (1)

The first term uses 1-exp(-2 kappa_mu ell)<=2 kappa_mu ell. This bound
includes the removed-collar cross term and is valid even when u touches the
boundary. It is uniform in the mode apart from the displayed kappa factor.

Take the recorded nonzero sphere spectrum
mu_n²=n(n+q)/b², d_n=2(q+2n), n>=1, with q>=0 and b>0. The multiplicity
includes both nonzero signs. Let d0 be the finite number of zero angular
modes. Because mu_n>=n/b and d_n<=2(q+2)n,

    sum_(n>=1) d_n exp(-tau mu_n²)/kappa_n
       <= [2b(q+2)/alpha] sum_(n>=1) exp(-tau n²/b²)
       <= b²(q+2)sqrt(pi)/(alpha sqrt(tau)).              (2)

The last inequality compares the decreasing Gaussian sum with its integral.
A finite zero-mode contribution is d0/M. Consequently the direct sum of
(1), with the angular heat factor exp(-tau B²), is trace class and obeys

 ||S[J_ell*R_ell J_ell-R]S exp(-tau B²)||_1
   <= [||u||_infinity ell+2 sqrt(U U_ell)]
      [d0/M+C_(b,q,alpha) tau^(-1/2)].                   (3)

All angular multiplicities are counted once; S acts only radially and
commutes with the angular heat factor. For a cubic boundary insertion,
U_ell<=K ell^4/4. Thus ell=o(sqrt(tau)) is sufficient for the right side of
(3) to vanish as ell,tau->0 with M fixed. This is a bound for this square
resolvent observable, not the rate for the first-order resolvent or the
complete physical action.

The constant-coefficient assumption is substantive: a varying coefficient
creates the off-diagonal -mu a' sigma_3 term discussed in
`radial-heat-block-mixing.md`. The physical Euclidean lapse and bundle,
nonlocal transported boundary condition, bolt, spectral-parameter
integration and common regulator remain to be matched. The angular heat
factor is explicit and has not been removed. No numerical calculation is
used.

Remaining to-do list: extend the result to the actual varying paired family,
prove the response and regulator, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
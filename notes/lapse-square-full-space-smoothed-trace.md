# Full-space localized lapse-square cut difference at positive mass

This extends `lapse-square-endpoint-resolvent-comparison.md` to the removed
collar and angular/thermal heat-smoothed model sum. It uses local projector
realizations and does not identify the physical Euclidean square, its common
regulator, or a Lean certificate.

Use the model operators P_nu=f(H_mu+i nu), L=P_nu*P_nu and their cut
counterparts from the cited note on a half-line. Assume globally f>=f0>0,
a is real and bounded, and the first-order form domain is H1 with the fixed
local sigma_1 projector. Assume the fixed-collar regularity and uniform lift
constants used in the endpoint comparison. Let u>=0 be bounded and L1,
S=sqrt(u), U=integral u, U_ell=integral_removed u, and let R=(L+M^2)^-1,
R_ell=(L_ell+M^2)^-1, M>0. Put

    Q=|nu|+|mu| ||a||_infinity,
    c=f0^2/2,  lambda=1+f0^2 Q^2.                       (1)

For v in the first-order domain, ||(H_mu+i nu)v||>=||v'||-Q||v||, so

    ||P_nu v||^2+lambda ||v||^2
       >= c ||v'||^2+||v||^2.                           (2)

Relaxing the endpoint projector enlarges the comparison form domain to full
H1. Hence form inverse monotonicity bounds (L+lambda)^-1 by the direct sum
of two scalar Neumann resolvents (-c partial^2+1)^-1. Its diagonal kernel
is at most 1/sqrt(c). For all M>0 spectral calculus further gives

    R <= max(1,lambda/M^2) (L+lambda)^-1.               (3)

It follows that S R^(1/2) and S E R^(1/2), E the removed-collar indicator,
are Hilbert--Schmidt, with squared norms at most
2 U max(1,lambda/M^2)/sqrt(c) and the same expression with U_ell. Thus

    ||S E R S||_1
       <= [2/sqrt(c)] max(1,lambda/M^2) sqrt(U U_ell).   (4)

This factorization covers the cross term as well as the removed diagonal;
it does not infer trace class from an operator-norm bound.

Let J_ell be restriction and P_ell=J_ell*J_ell. The exact decomposition

    J_ell* R_ell J_ell-R
      = J_ell*(R_ell J_ell-J_ell R) - E R              (5)

shows that the first term has rank at most two. Denote by B_(mu,nu,M,ell)
the operator bound (4) in `lapse-square-endpoint-resolvent-comparison.md`.
The localized full-space difference therefore satisfies

 ||S(J_ell*R_ell J_ell-R)S||_1
   <= 2 ||u||_infinity B_(mu,nu,M,ell)
      + [2/sqrt(c)] max(1,lambda/M^2) sqrt(U U_ell).    (6)

For fixed M>0, assume the recorded magnetic-sphere multiplicities, a fixed
(anti)periodic thermal lattice, and weights exp[-tau(mu^2+nu^2)] with
tau>0. The explicit local-lift construction makes its coefficient at most
polynomial in |mu|,|nu| and M for fixed coefficient bounds; h in the endpoint
bound is at most ell times a constant plus terms linear in |mu| and |nu|.
Consequently the Gaussian-weighted sums of both terms in (6) are finite,
uniformly for 0<ell<=ell0. For each fixed mode B=O(sqrt(ell)); dominated
convergence gives a vanishing trace-norm direct-sum difference as ell->0.
If u(y)<=K y^3 near the endpoint, U_ell=O(ell^4); the Gaussian moment bounds
also give an O_(M,tau)(sqrt(ell)) rate for the complete localized difference.
All multiplicities, including zero angular modes, are counted once.

The positive mass and both Gaussian weights are fixed in this conclusion;
the displayed constants grow as M->0 or tau->0. There is no mass integration,
physical trace normalization, thermal-boundary identification or common
regulator in (6). The lapse and sigma-frame model must still be matched to the
actual Euclidean operator, spin/bundle map and boundary. No numerical
calculation is used.

Remaining to-do list: derive uniform joint mass and heat bounds, establish
physical domain and boundary matching, prove the full response and common
regulator, resolve prior art, prepare the manuscript, and certify in Lean on
GCP.
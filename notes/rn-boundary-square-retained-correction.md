# Boundary-touching variable square resolvent: retained correction

This combines `rn-local-collar-square-no-global-gap.md` with the rank-one
first-order boundary comparison in `changing-cut-resolvent-comparison.md`.
It gives a complete localized square-resolvent difference for the declared
canonical separated model, after angular heat smoothing. It is not the
physical Euclidean response, a common-regulator theorem or Lean proof.

Use the fixed RN-type half-line model and local cut projector from those
notes. Let H_mu and H_(ell,mu) be the self-adjoint full and cut first-order
operators, R_mu=(H_mu²+M²)^(-1), R_(ell,mu)=(H_(ell,mu)²+M²)^(-1),
and J_ell the restriction. Let M²>C_a²/2, as required by the local Neumann
comparison, and let u>=0 be bounded, integrable and supported in the fixed
outer collar [0,L]. Put S=M_sqrt(u), E=1_(0,ell), P=1-E,
U=integral u and U_ell=integral_0^ell u.

The exact full-space identity is

 J_ell* R_(ell,mu) J_ell-R_mu
   = J_ell*[R_(ell,mu)J_ell-J_ell R_mu] - E R_mu.         (1)

The second term localized by S is trace class. The local comparison in
`rn-local-collar-square-no-global-gap.md` bounds it by

    ||S E R_mu S||_1 <= C_L sqrt(U U_ell)/kappa_mu,      (2)
    kappa_mu²=m0²+(a0²/2)mu²,

where m0²=M²-C_a²/2>0. This is one of the two terms in the earlier
removed-collar estimate.

For the first term use the self-adjoint functional-calculus identity

    (H²+M²)^(-1)=[(H-iM)^(-1)-(H+iM)^(-1)]/(2iM).      (3)

At each sign of iM, the restriction difference
R_(ell,mu)^first J_ell-J_ell R_mu^first has range in the one-dimensional
L² solution space of the homogeneous first-order equation, by the Poisson
uniqueness result in `interior-dirac-poisson-existence.md`. Hence the
square-resolvent restriction difference has rank at most two per radial
mode. For k_mu=M+||a||_infinity |mu|, the fixed-mode estimate in
`changing-cut-resolvent-comparison.md` and (3) give its operator norm bound

    sqrt(ell) sqrt(2 k_mu)/M² (1+k_mu/M).                (4)

Its symmetrically localized trace norm is at most twice (4) times
||u||_infinity, by rank and the operator ideal inequality. This bound
includes arbitrary full-space inputs, including inputs in the removed
collar; it does not assert the physical infinity projector is transported
exactly to the chosen cut projector.

Assume the recorded two-dimensional magnetic-sphere heat bound, including
all angular multiplicities once. Summing the mode estimates after the
explicit angular factor exp(-tau B²) gives, for 0<tau<=1,

 ||S[J_ell*R_ell J_ell-R]S exp(-tau B²)||_1
   <= C_M [||u||_infinity sqrt(ell) tau^(-7/4)
                  + sqrt(U U_ell) tau^(-1/2)].            (5)

For the first term split the Gaussian weight in half, use the angular heat
trace O(tau^(-1)) for one half and the supremum of
(1+|mu|)^(3/2) exp(-tau mu²/2), O(tau^(-3/4)), for the other. For the
second use the 1/kappa_mu sum in the local RN note. Both direct sums are
trace class. If u(y)<=K y³ near the boundary, then U_ell<=K ell^4/4;
ell=o(tau^(7/2)) suffices for (5) to vanish as ell,tau->0 with M fixed.
This is a sufficient model rate, not a necessary physical cutoff rule.

The result uses the canonical half-line, the local cut projector, a mass
above the stated comparison threshold, and an explicit angular heat factor.
It does not match the Euclidean lapse and spin bundle, the true transported
infinity condition, thermal normalization, mass integration, metric
vertices or the common regulator. In particular it does not certify the
physical response or the paper. No numerical calculation is used.

Remaining to-do list: establish physical boundary and Euclidean matching,
control the full response and regulator, recover the pending GCP run,
resolve prior art, prepare the manuscript, and certify supported claims in
Lean on GCP.
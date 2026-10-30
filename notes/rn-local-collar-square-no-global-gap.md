# Local RN collar square bound without a global angular gap

This replaces the global a>=a0 assumption in
`variable-radial-removed-collar-square.md` for the removed-collar term of a
canonical separated model. It does not control the retained cut-boundary
correction, identify the full Euclidean paired operator, or certify Lean.

Let y>=0 be inward canonical coordinate on a half-line, with a fixed
boundary collar [0,L]. Consider

    H_mu=-i sigma_2 partial_x+mu a(x) sigma_1

with the local sigma_1 boundary projector at y=0 and the self-adjoint
half-line domain of the changing-cut notes. Suppose real a is bounded and
W1,infinity, a>=0, and

    a(y)>=a0>0 on [0,L],     |a'(x)|<=C_a a(x) globally.  (1)

The prime denotes canonical x derivative; reversing to y changes only its
sign. The actual square domain is the mixed Dirichlet/Neumann domain as in
`finite-interval-radial-square-domain.md`, and the form identity is

    H_mu²=J+mu² a²-mu a' sigma_3,

with J the nonnegative mixed free Laplacian. Young's inequality gives

    H_mu²+M² >= J+(mu²/2)a²+m0²,
    m0²=M²-C_a²/2>0.                                     (2)

The inequality is in closed-form order. The mass condition is an auxiliary
comparison hypothesis, not an admission margin. Unlike the previous global
gap argument, (2) permits a to vanish at the bolt.

Cut the scalar comparison form at y=L and impose Neumann conditions on both
sides of that artificial cut; also relax the physical endpoint Dirichlet
condition to Neumann for the comparison. The decoupled form has a larger
domain and is lower, so its inverse is greater in form order. On [0,L],
(1) bounds its potential below by

    kappa_mu²=m0²+(a0²/2)mu².

Thus for any nonnegative u supported in [0,L], S=M_sqrt(u), and
U=integral u, inverse monotonicity and the Neumann interval Green kernel give

    ||S(H_mu²+M²)^(-1/2)||_2²
      <= 2 coth(m0 L) U/kappa_mu.                         (3)

The factor two counts the orbit fiber. To see (3), the scalar Neumann
kernel of (-partial_y²+kappa²)^(-1) has diagonal
cosh(kappa y) cosh(kappa(L-y))/(kappa sinh(kappa L)), at most
coth(kappa L)/kappa <= coth(m0 L)/kappa. The comparison is made on the
common direct-sum L² space; localizing S to [0,L] eliminates the other
side of the artificial cut. No claim that the original resolvent is
pointwise dominated is needed.

Let E=1_(0,ell), P=1-E, with ell<L, and U_ell=integral_0^ell u. Applying
(3) both to u and to E u and using the Schatten factorization in the
previous note yields

    ||S[R_mu-P R_mu P]S||_1
       <= 4 coth(m0 L) sqrt(U U_ell)/kappa_mu,            (4)

where R_mu=(H_mu²+M²)^(-1). For the recorded magnetic sphere spectrum,
sum_mu exp(-tau mu²)/kappa_mu <= C tau^(-1/2) for 0<tau<=1, by the
Gaussian comparison in the previous note. If u(y)<=K y³ near zero, then
U_ell<=K ell^4/4 and the heat-weighted tower of (4) is
O(ell² tau^(-1/2)). This controls only the removed-collar and cross terms,
not P R_mu P versus the cut resolvent.

For the fixed nonextremal RN-AdS canonical coefficient a=sqrt(f)/r,

    (d a/dx)/a = f'(r)/2-f(r)/r.

The right side extends continuously to the horizon and tends to zero at
infinity for the recorded RN-AdS f; hence it is bounded on the exterior.
Also a is positive on a fixed outer collar. Thus the coefficient hypotheses
(1) hold for that fixed canonical model, including the bolt end. The
first-order operator/domain identification and relation to the Euclidean
paired square remain separate. Constants are not claimed uniform over a
varying RN family.

No physical trace, common regulator or Lean certificate follows from this
local estimate. No numerical calculation is used.

Remaining to-do list: control the retained cut-boundary correction, match
the physical Euclidean bundle and domains, complete response and prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
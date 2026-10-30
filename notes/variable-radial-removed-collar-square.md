# Removed-collar square bound with varying radial coefficient

This extends the removed-collar part of
`boundary-square-constant-angular-tower.md` to a variable coefficient. It
uses a global positive lower bound that generally fails at a regular bolt;
it is a separated auxiliary model estimate, not a physical response or Lean
certificate.

On the full half-line with the specified local sigma_1 projector let

    H_mu=-i sigma_2 partial_x+mu a(x) sigma_1,

where a is real W1,infinity, a(x)>=a0>0 and ||a'||_infinity<=G. Its square
has the mixed Neumann/Dirichlet composition domain described in
`finite-interval-radial-square-domain.md`, adapted to one endpoint, and

    H_mu²=J+mu² a²-mu a' sigma_3,                          (1)

where J is the nonnegative free mixed-boundary Laplacian. The equality is
on the actual square domain; the corresponding form identity follows by
density. In particular the sigma_1 projector makes the boundary cross term
vanish. Let M>0 satisfy

    M²>G²/(4a0²),
    kappa_mu²=M²+a0² mu²-G|mu|>0.                          (2)

The matrix potential in (1) is bounded below by a0² mu²-G|mu|, so closed
form order and operator monotonicity of the inverse give

    0 <= (H_mu²+M²)^(-1) <= (J+kappa_mu²)^(-1).            (3)

For u>=0 in L¹ intersect L-infinity put S=M_sqrt(u), U=integral u,
U_ell=integral_0^ell u and E=1_(0,ell). The comparison resolvent on the
right of (3) has Neumann and Dirichlet kernels whose diagonal fiber trace
is 1/kappa_mu. It follows by positive trace domination that

    ||S (H_mu²+M²)^(-1/2)||_2² <= U/kappa_mu,
    ||S E (H_mu²+M²)^(-1/2)||_2² <= U_ell/kappa_mu.       (4)

Consequently, with P=1-E,

 ||S[R_mu-P R_mu P]S||_1 <= 2 sqrt(U U_ell)/kappa_mu,     (5)

where R_mu=(H_mu²+M²)^(-1). The identity and Schatten factorization are the
same as in the free-mode note. This proves trace-class control of the
removed collar and its cross term for the variable-coefficient full
resolvent; it does not yet compare the retained piece with the cut resolvent.

For the recorded magnetic-sphere spectrum mu_n²=n(n+q)/b² and
multiplicities d_n=2(q+2n), kappa_mu is positive for all modes and, beyond
finitely many n, kappa_n>=a0 n/(sqrt(2)b). Splitting off the finitely many
low modes and using the Gaussian sum in the constant-tower note yields

    sum_mu exp(-tau mu²)/kappa_mu <= C tau^(-1/2), 0<tau<=1, (6)

with multiplicities and any finite zero modes counted once. Thus the direct
sum of (5) with angular heat weighting is bounded by
C sqrt(U U_ell) tau^(-1/2). If u(y)<=K y³ on the removed collar, this is
O(ell² tau^(-1/2)); ell=o(tau^(1/4)) suffices for this removed-collar
contribution to vanish. The retained cut-versus-full boundary correction
still needs its own uniform trace estimate, so this is not a complete
changing-cut bound.

The global condition a>=a0 is essential to (6) and is not asserted for the
RN geometry at its bolt. The mass restriction, local projector, angular heat
weight, actual bundle and physical regulator also need matching. No
numerical calculation is used.

Remaining to-do list: control the retained boundary correction and the bolt,
establish physical domains and the mixed response, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.
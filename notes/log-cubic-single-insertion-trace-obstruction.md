# Physical log-cubic single-insertion trace obstruction

The later [local-test argument](rn-log-cubic-trace-obstruction-local-test.md) removes the diagonal-lower-bound hypothesis for the specified fixed RN-AdS geometric model. This note retains the conditional diagonal route for comparison.

This examines assumption (5) of `massive-mixed-heat-infrared-bound.md` for the actual physical log-cubic scalar. It gives a conditional obstruction, not a divergence of the full mixed response or renormalized action. The conditional input is a uniform positive lower bound on the fixed physical heat-kernel diagonal in the asymptotic end.

Let X be the fixed RN-AdS exterior with physical volume r² dr d tau dOmega, and let u=b_conf v be the stationary scalar in `conformal-log-direction-physical-volume.md`, with nonzero cubic coefficient c_v. Then u is bounded, has a fixed nonzero sign for all sufficiently large r, and

  |u(r)| >= C r^(-3) log r,
  integral_(r>R) |u| dvol = infinity.                          (1)

Let L>=0 be a self-adjoint physical Laplace-type square with a smooth finite-rank heat kernel K_t(x,y). Fix t>0 and suppose that, outside some compact set,

  tr_fiber K_t(x,x) >= c_t > 0.                               (2)

This condition must be verified for the particular physical bundle and square. It is compatible with standard bounded-geometry short-time diagonal expansions for a smooth Dirac-type square, but bounded geometry, the bundle and the uniform remainder have not been established here. Adding a constant positive mass multiplies the heat kernel by exp(-t M²), so it preserves (2) for fixed M and t.

Let P_R be multiplication by the indicator of an annulus R0<r<R contained in the region of constant sign of u. Standard local heat smoothing makes the compactly localized operator P_R M_|u| K_t P_R trace class, with

  Tr(P_R M_|u| K_t P_R)
    = integral_(R0<r<R) |u(x)| tr_fiber K_t(x,x) dvol(x).       (3)

By (1)--(2), the right side diverges at least like a positive multiple of (log R)^2. If M_u K_t were trace class, the trace norm ideal inequality would give

  |Tr(P_R sgn(u) M_u K_t P_R)| <= ||M_u K_t||_1               (4)

for every R, contradicting (3). Thus, under (2), M_u K_t is not trace class. The same argument shows M_|u|^(1/2) K_t M_|u|^(1/2) is not trace class. This is stronger than merely observing u is not L1: the heat diagonal lower bound is the essential extra hypothesis.

Consequently a proof of the previous note's single-insertion condition (5) cannot use this unmodified fixed-physical-volume observable under (2). If cut heat traces converge locally to the fixed heat kernel and use cutoffs approaching u with the same tail sign, their trace norms cannot remain uniformly bounded: the compact annular traces already become arbitrarily large before the outer cut is sent to infinity. This conclusion requires that local convergence and the indicated positive-real seed, not any complex-parameter estimate.

There is no contradiction with the L2-weighted two-sided result: if a,d are L2, their product is L1 and the two-sided Hilbert--Schmidt factorization can be trace class even when an individual insertion is not. Nor does this rule out a *relative*, differentiated, subtracted, or product-frame trace; cancellations and the actual density normalization must be demonstrated before any conclusion about those observables. A finite outer cut is trace class and may have a regulator-dependent trace whose divergence cancels against another term. The uniform lower bound (2), physical matching and all such cancellations remain to be checked. No Lean or numerical certification is claimed.

Remaining to-do list: verify or refute the physical diagonal bound, identify and prove the source's relative/subtracted mixed trace, complete ultraviolet and infrared regulator limits and novelty, finish the manuscript, and certify supported claims in Lean on GCP.
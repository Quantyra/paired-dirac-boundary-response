# Infrared-integrable cut comparison for the free angular zero mode

This strengthens the zero-sector part of `rn-regulated-low-mass-cut-integral.md`
for the declared canonical half-line model. It uses the exact free square
kernels in `boundary-touching-free-square-resolvent.md`; it does not control
nonzero angular modes or establish the physical regulator.

Let H_0 be the free first-order half-line operator with the local sigma_1
projector, H_0,ell its counterpart after removing [0,ell), and J_ell the
restriction. For M>0 set R(M)=(H_0^2+M^2)^(-1) and R_ell(M) analogously.
For u>=0 in L1 intersect L-infinity write S=sqrt(u),
U=integral u and U_ell=integral_0^ell u. The square has one Neumann and one
Dirichlet component. As shown in the cited kernel calculation, the removed
collar and cross contribution obeys

    ||S[R-J_ell* J_ell R J_ell* J_ell]S||_1
       <= (2/M) sqrt(U U_ell).                          (1)

On the retained half-line the difference of the scalar Green kernels is,
for each sign,

    + or - [(1-exp(-2 M ell))/(2M)]
                    exp[-M(y-ell)] exp[-M(y'-ell)].     (2)

After localization by S, its rank-one trace norm is the coefficient in (2)
times integral_ell^infinity u(y) exp[-2M(y-ell)]dy. Both spin components
therefore contribute at most 2 ell U, since 1-exp(-2M ell)<=2M ell. Thus

    ||S[J_ell* R_ell(M) J_ell-R(M)]S||_1
       <= 2 ell U + (2/M) sqrt(U U_ell),               (3)

uniformly for all M>0. Unlike the earlier estimate using ||u||_infinity,
this retains the integrability of u in the rank-one term.

Fix M_*>0 and 0<=epsilon<=1. Multiplying (3) by 2M exp(-epsilon M^2) and
integrating to zero gives an absolutely Bochner-integrable difference and

    ||integral_0^M_* 2M exp(-epsilon M^2)
          S[J_ell* R_ell(M) J_ell-R(M)]S dM||_1
      <= 2 ell U M_*^2 + 4 M_* sqrt(U U_ell).          (4)

The integral at zero is improper; the right side also bounds its trace-norm
integral, so it exists. The estimate is uniform in the exponential regulator.
If u(y)<=K y^3 near the cut, U_ell<=K ell^4/4 and (4) is O(ell)+O(ell^2).
A finite angular zero-mode multiplicity contributes only its fixed factor;
the angular heat weight equals one on this sector.

This removes the positive infrared cutoff for this zero-sector *difference*
only. It does not show that the individual mass integrals have finite limits,
control nonzero modes, identify the actual transported boundary projector or
Euclidean lapse, or prove the physical determinant and response. The
operator-valued integrand is continuous for M>0 by resolvent continuity;
its Bochner integrability follows from (3). No numerical calculation is used.

Remaining to-do list: control nonzero low-mass sectors and physical matching,
prove the full response and common regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
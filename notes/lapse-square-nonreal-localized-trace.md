# Localized nonreal square-resolvent cut difference

This extends `lapse-square-full-space-smoothed-trace.md` to the nonreal
resolvent of `lapse-square-nonreal-poisson-resolvent.md`. It controls a
fixed separated model mode with a nonnegative radial localization. It does
not prove an angular/thermal sum, physical boundary matching, or a heat
contour limit.

Use the full and cut model squares L and L_ell, the nonreal parameter zeta,
eta=|Im zeta|>0, and J,E from the removed-collar operator note. Assume the
first-order form and global coefficient hypotheses in the positive-mass
localized trace note, so with c>0 and lambda>0 defined there,

  L+lambda >= c(-partial_s^2)_N+1                                (1)

in form order, after relaxing the two-component endpoint condition. Let
u>=0 be bounded and L1, S=M_sqrt(u), U=integral u and U_ell=integral_collar u.
The scalar Neumann comparison kernel in the cited note gives

  ||S(L+lambda)^(-1/2)||_2^2 <= 2U/sqrt(c),
  ||S E(L+lambda)^(-1/2)||_2^2 <= 2U_ell/sqrt(c).              (2)

Put R_zeta=(L+M^2-zeta)^(-1). Spectral calculus factors

  R_zeta=(L+lambda)^(-1/2) B_zeta (L+lambda)^(-1/2),
  B_zeta=(L+lambda)(L+M^2-zeta)^(-1),
  ||B_zeta|| <= 1+|lambda-M^2+zeta|/eta.                       (3)

The last inequality follows from (x+lambda)/(x+M^2-zeta)
=1+(lambda-M^2+zeta)/(x+M^2-zeta), x>=0. Hence Schatten Holder and (2) give

  ||S E R_zeta S||_1
   <= (2/sqrt(c)) [1+|lambda-M^2+zeta|/eta] sqrt(U U_ell).    (4)

The factorization is valid for the non-self-adjoint complex resolvent;
no positivity of R_zeta is assumed. The one-sided term includes the collar
and its cross contribution. It tends to zero at fixed zeta and fixed mode as
U_ell->0.

The exact decomposition of the zero-extended cut resolvent gives a second
term J*(J R_zeta-R_(cut,zeta)J), whose range has dimension at most two per
separated mode. With B_cut denoting the operator bound (5) in the nonreal
Poisson note,

 ||S(R_zeta-J*R_(cut,zeta)J)S||_1
   <= 2 ||u||_infinity B_cut
      + (2/sqrt(c))[1+|lambda-M^2+zeta|/eta] sqrt(U U_ell).    (5)

Thus the localized difference is trace class and tends to zero for each
fixed mode and fixed nonreal zeta under the stated uniform cut/lift
assumptions. If u<=K y^3 in the collar, U_ell<=K ell^4/4. This does not
by itself control the dependence on zeta, thermal frequency or angular mode:
lambda, B_cut, eta^(-1) and the collar transfer can grow. The source's
physical insertion, normalization, nonlocal transported boundary and common
regulator still require independent identification. No numerical or Lean
certification is claimed.

Remaining to-do list: control contour and mode sums with actual boundary
matching, establish the curved remainder and regulator, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.

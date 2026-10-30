# Inhomogeneous lapse-square collar transfer

This extends `lapse-square-collar-boundary-transfer.md` to a source in the
removed collar and a complex square-resolvent parameter. It gives an exact
finite-dimensional transfer identity and a source norm bound for that
separated model. It does not supply the interior Poisson bound or physical
bundle, measure, trace or regulator identification.

Use the model and assumptions of the lapse-square note on [s0,s1], and let
ell=s1-s0. For zeta in C consider the inhomogeneous equation

  (P_nu^formal* P_nu + M^2 - zeta) psi = g,
  xi=f^2(H_mu+i nu)psi,        Y=(psi,xi).                     (1)

For g in L2(ds) and distributional solutions with absolutely continuous
first-order data, the pair solves

  Y'=K_zeta(s)Y + (0, i sigma_2 g),                             (2)

where

  K_zeta = [ nu sigma_2 - mu a sigma_3     i f^(-2) sigma_2 ]
           [ i(zeta-M^2) sigma_2         -nu sigma_2-mu a sigma_3 ]. (3)

The lower source sign follows from
(H_mu-i nu)xi=(zeta-M^2)psi+g. The flux definition retains derivatives of
f implicitly; it is not legitimate to replace xi by an unweighted normal
derivative without additional terms.

Let U_zeta(s,t) be the fundamental matrix taking homogeneous data at t to s.
Define

  h_zeta=integral_(s0)^s1 [2|nu|+2|mu||a|+f^(-2)+|zeta-M^2|] ds.

Gronwall gives ||U_zeta(s,t)||<=exp(h_zeta) for s,t in the collar, and
variation of constants yields the exact relation

  Y(s0)=U_zeta(s0,s1)Y(s1)
          - integral_(s0)^s1 U_zeta(s0,s)(0,i sigma_2 g(s)) ds. (4)

Consequently the inhomogeneous displacement obeys

  ||Y(s0)-U_zeta(s0,s1)Y(s1)||
       <= exp(h_zeta) sqrt(ell) ||g||_(L2(s0,s1)).             (5)

The direct-sum Euclidean norm is used in the boundary fiber; any fixed
equivalent norm changes only the constant. Equation (4) follows first for
smooth g and then for L2 g by density and the bounded integral operator.
If the outer data belong to the plane B from the lapse-square note, the
cut data lie in the affine plane U_zeta(s0,s1)B plus the explicit source
displacement. Its homogeneous plane mismatch is bounded by C min(h_zeta,1)
as in that note. These are distinct contributions and neither can be
silently discarded for a source that meets the removed collar.

The exponential bound is deliberately general and can grow with frequency,
mass and contour parameter. It is not sufficient by itself for an angular
or proper-time sum. Moreover, identifying the induced affine data with a
bulk resolvent difference requires a uniformly controlled interior Poisson
map, compatible domain and trace norms, and the actual Hilbert-space and
boundary transport. The physical LLL, contact vertices, renormalized
subtractions and common regulator remain open. No numerical or Lean
certification is claimed.

Remaining to-do list: establish the physical transfer and interior Poisson
estimates, match the LLL and massive observables, prove the curved remainder
and regulator, resolve novelty, prepare the manuscript, and certify supported
claims in Lean on GCP.

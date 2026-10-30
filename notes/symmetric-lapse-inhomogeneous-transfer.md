# Inhomogeneous collar transfer for the symmetric lapse square

This extends the corrected operator in
`euclidean-canonical-unitary-half-density.md` to a nonreal square-resolvent
parameter and an arbitrary source in a finite collar. It replaces the
left-lapse transfer as the appropriate local starting point for a physical
comparison. Global domains, the physical bundle, and the common regulator
remain unverified.

Let [s0,s1] be a finite collar, f>0 with f and f^-1 bounded there, a real
bounded, and H_mu=-i sigma_2 partial_s+mu a sigma_1. Put

  P=f^(1/2)(H_mu+i nu)f^(1/2),
  P^formal*=f^(1/2)(H_mu-i nu)f^(1/2),
  (P^formal* P+M^2-zeta)psi=g.                                (1)

For real mu,nu and M>=0, define eta=f^(1/2)psi and
xi=f(H_mu+i nu)eta. On a smooth core, and distributionally where the
first-order data are absolutely continuous, (1) is equivalent to

  (H_mu+i nu)eta=f^-1 xi,
  (H_mu-i nu)xi=f^(-1/2)g+(zeta-M^2)f^-1 eta.                (2)

The second equation follows by dividing P^formal* P psi by sqrt(f); it
retains the derivative of f inside the flux xi. Writing Y=(eta,xi),

  Y'=K_zeta Y+(0,i f^(-1/2) sigma_2 g),
  K_zeta=[ nu sigma_2-mu a sigma_3      i f^-1 sigma_2 ]
         [ i(zeta-M^2)f^-1 sigma_2     -nu sigma_2-mu a sigma_3 ]. (3)

Let U_zeta(s,t) be the fundamental matrix for the homogeneous system, and
let ell=s1-s0 and

  h=integral_(s0)^s1 [2|nu|+2|mu||a|+f^-1
                         +|zeta-M^2| f^-1] ds.                (4)

With the direct-sum fiber norm, ||U_zeta(s,t)||<=exp(h), and variation of
constants gives

  Y(s0)=U_zeta(s0,s1)Y(s1)
       -integral_(s0)^s1 U_zeta(s0,s)(0,i f^(-1/2) sigma_2 g(s)) ds. (5)

Consequently

  ||Y(s0)-U_zeta(s0,s1)Y(s1)||
      <= exp(h)||f^(-1/2)||_infinity sqrt(ell)||g||_L2(collar). (6)

The inequality follows from Cauchy--Schwarz and extends from smooth to L2
sources by density. The input norm is the ds half-density norm associated
with the declared unitary coordinate map; physical use requires that map
to be verified globally.

If the conditional square boundary identification in the cited symmetric
lapse note holds, Y(s1) lies in B={P_- eta=0, P_- xi=0}. Then the cut data
lie in the affine plane U_zeta(s0,s1)B plus the explicit source displacement.
The homogeneous plane has projection distance at most C min(h,1) from B,
by the graph argument in `lapse-square-collar-boundary-transfer.md`. This
does not imply that the physical infinity boundary equals the local cut
condition. A resolvent comparison also requires an interior Poisson bound
for the symmetric-lapse square, endpoint trace estimates, the removed-collar
term and summable contour/mode control. The left-lapse estimates cannot be
imported without proving these inputs for the new coefficients and domains.
No numerical calculation or Lean certificate is claimed.

Remaining to-do list: establish the corrected physical domain and Poisson
estimates, match angular/thermal traces and regulator, prove the curved
response, resolve novelty, complete the manuscript, and certify supported
claims in Lean on GCP.

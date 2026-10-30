# Interior contact finite heat coefficient

This checks the smooth rank-two interior contact coefficient I2 in
`curved-conversion-finite-coefficient.md` by a second route: differentiation
of the local a6 coefficient in a scalar potential. It assumes the standard
local a6 formula and the parameter-differentiable heat expansion described in
`interior-conversion-parametrix-reduction.md`. It does not establish that
expansion uniformly for the physical rough family or determine boundary terms.

Let M be a smooth closed two-dimensional spin manifold, L=D^2 the untwisted
rank-two Dirac square, and u,v smooth real functions. Set Delta=div grad,
L_lambda=L+lambda v=-(nabla^2+E_lambda), E_lambda=-R/4-lambda v, and

 I_t(u,v)=integral_0^t Tr[u exp(-(t-s)L) v exp(-sL)] ds.

Bounded-potential Duhamel differentiation gives I_t=-partial_lambda
Tr[u exp(-t L_lambda)] at lambda=0. If the localized heat expansion can be
differentiated to this order, the coefficient of t^2 in I_t is (4pi)^-1
integral u times minus the lambda derivative of the fiber-traced local a6
density. The conventional local formula is due to Gilkey; see his original
source collection (https://pages.uoregon.edu/gilkey/respap.html, item 8) and
his invariance-theory treatment (https://pages.uoregon.edu/gilkey/dirPDF/InvarianceTheory1Ed.pdf).
The following calculation specifies the convention used, so that the sign can
be checked independently of the choice of source notation.

The potential-dependent part of 360 times the local a6 density before fiber
trace is

 6 Delta^2 E + 60 E Delta E + 30 |nabla E|^2 + 60 E^3
 +30 E Omega_ij Omega^ij +10 R Delta E +4 Ric_ij nabla_i nabla_j E
 +12 <nabla R,nabla E> +30 R E^2 +12 E Delta R
 +(5 R^2-2 |Ric|^2+2 |Riem|^2) E.                     (1)

At lambda=0, take minus its derivative and divide by fiber rank temporarily.
Use Ric=(R/2)g, |Ric|^2=R^2/2, |Riem|^2=R^2, and
tr(Omega_ij Omega^ij)/2=-R^2/8. The terms group as follows:

 * fourth derivatives: 6 Delta^2 v;
 * derivatives of v and R: (-15+10+2) R Delta v
   +(-15+12) <nabla R,nabla v> +(-15+12) v Delta R;
 * curvature squared: (180/16-30/8-15+6) R^2 v = -3 R^2 v/2.

Multiplying by rank two and dividing by 360 yields

 -partial_lambda tr(a6)(x) = Delta^2 v/30
   -[R Delta v+<nabla R,nabla v>+v Delta R]/60
   -R^2 v/120.                                             (2)

On the closed manifold, integration by parts gives

 integral u [R Delta v+<nabla R,nabla v>]
   = -integral R <nabla u,nabla v>,
 integral u Delta^2 v = integral (Delta u)(Delta v).

Thus the contact coefficient is exactly

 I2=(-R^2/120-Delta R/60)uv
     +R <nabla u,nabla v>/60 +(Delta u)(Delta v)/30,        (3)

integrated against (4pi)^-1 dvol. This agrees with the frozen source's
coefficient and is symmetric in u,v. The flat fourth-derivative term was
already obtained directly with an all-frequency bound in
`flat-product-contact.md`; equation (3) additionally checks the smooth
interior curvature terms using the independent local coefficient formula.

The argument is local in the interior, but the integration-by-parts form (3)
is asserted here on a closed manifold; for a boundary, seam or localized
partition, the omitted flux terms must be retained and assessed separately.
The magnetic twist, actual paired physical domains, source normalization,
common-regulator limit and parameter-uniform rough remainder are not proved.
No numerical computation or Lean certification is claimed.

Remaining to-do list: prove the relevant uniform parametrix and boundary/seam
terms, match the physical source and regulator, resolve novelty, prepare the
manuscript, and certify supported results in Lean on GCP.
# Cut dependence of the congruence gap estimate

This checks one hypothesis in `physical-product-mixed-upper-endpoint.md`
against the conformal factor in `physical-product-contact-operator-gap.md`.
It is a fixed-cut operator estimate, not a lower bound for a physical
admission margin or a statement that the actual gap vanishes.

Let D be a closed bijective operator with bounded inverse on a fixed cut,
and let E_r=exp(r b/2), 0<=r<=1, be bounded invertible multipliers which
preserve the required first-order domains. Set A_r=E_r D E_r with its actual
domain. Then

  A_r^(-1)=E_r^(-1) D^(-1) E_r^(-1),
  ||A_r^(-1)|| <= ||D^(-1)|| ||E_r^(-1)||^2.                 (1)

The identity follows by composing in order, using the domain preservation;
it is not an equality of square domains. Since a closed bijection has a
bounded inverse, A_r* is also bijective and its inverse is (A_r^-1)*.
Consequently both A_r* A_r and A_r A_r* have the form lower bound

  L_r, Lbar_r >= ||D^(-1)||^(-2) ||E_r^(-1)||^(-4).          (2)

For b real with m=ess inf b,
||E_r^-1||^2=exp(-r m), so (2) becomes

  L_r, Lbar_r >= gamma_D^2 exp(2 r m),
  gamma_D=||D^(-1)||^(-1).                                    (3)

For the source's conformal ratio U=b_sphere/RadialRadius, put b=log U.
On a finite outer cut at radius R, if U>=b_sphere/R everywhere in the
declared region, then

  L_r, Lbar_r >= gamma_D^2 (b_sphere/R)^(2r).                 (4)

For R>=b_sphere the bound uniform over 0<=r<=1 is at least
 gamma_D^2 (b_sphere/R)^2. This is merely a sufficient lower bound; its
failure to remain positive as R grows does not prove the actual spectral
gap closes. It also presumes the stated bijectivity and finite-cut domain
identifications, and gamma_D may itself depend on the cut.

The cut dependence matters in the upper-endpoint estimate: replacing its
uniform g by this lower bound permits a time choice at a fixed R, but does
not by itself justify taking R->infinity and T->infinity uniformly. A joint
limit would need a quantitative bound for gamma_D, the complex-parameter
polydisc and trace prefactor, and in particular control of the product with
||log U||_infinity. An independent physical thermal gap may improve (4), but
must be established on the actual transported domains. The M=0/LLL sector
requires its own analysis if D is not invertible. No small-time remainder,
physical regulator limit, or Lean certificate follows from (1)--(4).

Remaining to-do list: establish the physical and complex-family gap/trace
bounds or handle zero modes, prove the mixed ultraviolet remainder and
regulator, resolve novelty, complete the manuscript, and certify supported
claims in Lean on GCP.

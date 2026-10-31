# Flat complementary-boundary estimate for the odd-odd term

This proves a local flat collar estimate for the boundary-condition change
that appears in the odd-odd reduction of
[`full-weyl-opposite-sign-cross-cancellation.md`](full-weyl-opposite-sign-cross-cancellation.md).
It keeps the complete antiperiodic thermal image sum. It does not prove the
curved P1 estimate, the physical source normalization, or a Lean theorem.

## Model and kernel assumptions

Take the flat half-cylinder

    Omega = [0,infinity)_y x (R/TZ)_tau

with a finite-dimensional spin fiber. Let `Q` be the nonnegative product
Laplacian with local complementary mixed boundary conditions. In a basis
diagonalizing the boundary projector, assume its components are scalar
Dirichlet or Robin half-line heat kernels times the same antiperiodic thermal
kernel. Use the inward coordinate `y` and Robin convention
`partial_y phi(0)=S phi(0)`, with constant `0<=S<=S_0`; Neumann is
`S=0`. Let `Q_X` exchange the Dirichlet and Robin components, as occurs
under the tangential Clifford multiplier in the flat product model. The
argument applies componentwise and constants absorb the finite spin rank.

Write `A=t-r`, for `0<r<t`, and let `M_g` be multiplication by `g(y)`.
For the full thermal image kernels, set

    g_s(x)=(4 pi s)^(-1/2) exp(-x^2/(4s)),
    h_s^ap(theta)=sum_(k in Z)(-1)^k g_s(theta+kT).

The scalar Robin heat kernel is

    k_(R,S)(s;y,y')=g_s(y-y')+g_s(y+y')
                     -2S integral_0^infinity
                          exp(-S z) g_s(y+y'+z) dz.      (1)

For `|S|<=S_0`, `0<s<=t_0`, the inequalities
`(y+y'+z)^2 >= ((y+y')^2+z^2)/2` and completion of the square in `z`
bound the last term by
`C_(S_0,t_0) s^(-1/2) exp(-(y+y')^2/(8s))`. Thus the product heat
kernel and the Dirichlet/Robin difference have the same Gaussian image
majorants as below, uniformly for bounded `S`.

The direct/reflected half-line formula therefore gives

    |K_Q(A;z,z')| <= C [g_A(y-y')+g_A(y+y')] |h_A^ap(tau-tau')|,
    |K_QX(r;z,z')-K_Q(r;z,z')|
       <= C g_r(y+y') |h_r^ap(tau-tau')|.                (2)

These bounds retain every thermal image; for `t<=t0<T^2/16`, Gaussian
summation yields

    integral_0^T integral_0^T
      |h_A^ap(tau-tau') h_r^ap(tau'-tau)| d tau d tau'
        <= C_T t^(-1/2).                                 (3)

Assume the source directions are localized and satisfy the global weighted
jet bounds

    |u'(y)| <= U y^2,       |w'(y)| <= W y^2.            (4)

Smooth compactly supported cubic directions satisfy (4). Define the
boundary-condition defect trace

    B_uw(t,r)=Tr[exp(-A Q) M_(u')
                 (exp(-r Q_X)-exp(-r Q)) M_(w')].

Then for `0<t<=t0`,

    |B_uw(t,r)| <= C_(T,S_0,t_0) U W t^(3/2),  0<r<t.   (5)

## Proof of the bound

Use (2), (3), and `g_A(y+y')<=g_A(y-y')` for `y,y'>=0`. The remaining
normal integral is bounded by

    C U W A^(-1/2) r^(-1/2)
      integral_(y,y'>=0) y^2 y'^2
        exp(-(y-y')^2/(c A)) exp(-(y+y')^2/(c r)) dy dy'.

Set `p=y-y'`, `q=y+y'`. Then `q>=|p|`, the Jacobian is `1/2`, and
`y^2 y'^2 <= q^4/16`. The `p` integral is at most
`C min(q,sqrt(A))`; scaling `q=sqrt(r) v` therefore bounds the normal
integral by

    C U W A^(-1/2) r^(-1/2) r^3 min(1,sqrt(A/r))
      <= C U W t^2,

before multiplication by the thermal factor `C_T t^(-1/2)` from (3):
if `r<=A` the result is bounded by
`C U W r^(5/2)/sqrt(A t)`, and if `A<=r` it is bounded by
`C U W r^2/sqrt(t)`. Both are at most `C U W t^(3/2)` after the thermal
factor. This proves (5),
uniformly up to both Duhamel endpoints.

## Consequence for the massive angular tower

After the sign pairing, the two odd vertices contribute the positive
mass-square weight `mu_n^2 exp(-t mu_n^2)`. In the source convention the
two signs are already included in `d_n`, so

    sum_(n>=1) d_n mu_n^2 exp(-t mu_n^2) = -Theta'(t) <= C t^(-2)

for small `t`. In each ordered Duhamel simplex, cyclicity combines the two
outer orbit heat factors into `exp(-(t-r)Q)`; the remaining integration in
the other simplex coordinate has length `t-r`. Thus (4) implies for this
flat boundary-condition defect component

    |R_odd-odd,bdy(t)|
       <= C (-Theta'(t)) integral_0^t (t-r) t^(3/2) dr
       <= C_(T,S_0,t_0) U W t^(3/2).                    (6)

The proper-time action integral with weight `dt/t^2` is finite at zero for
this component. This is an estimate of the *difference* between the
complementary-boundary and same-boundary middle heat factors. The same-
boundary scalar-gradient pair remains part of the full tangent/local
subtraction analysis.

## Scope of the result

The proof uses exact flat half-line image kernels and the weighted cubic
derivative bounds. To transfer (5) to P1 requires uniform curved
mixed-boundary heat-kernel bounds of the form (2), including the physical
density, boundary map/transgression, thermal images, cut dependence and
admitted rough family, plus the complete common-regulator source
normalization. The source's finite-cut square may have matrix-valued, variable
and cut-dependent Robin coefficients; they are not covered by this scalar
constant-Robin extension. The estimate does not include the even-even
angular vertices, the scalar angular-mass path factor, density/contact
variations, or LLL/anomaly terms.

A possible analytic input is Li--Strohmaier's extension-independent
"not feeling the boundary" estimate for nonnegative self-adjoint extensions
of the vector-valued Euclidean Laplacian: its constants do not depend on the
chosen boundary condition. See [Theorem 1.1 and its hypotheses](https://ems.press/journals/jst/articles/14417).
This supports interior localization away from the boundary, but it does not
directly cover the source's variable-coefficient curved Laplace-type square,
its connection and potential, or uniformity over the moving/rough family.
The missing step is to prove a corresponding extension-independent kernel
estimate for that operator, then combine it with the cubic boundary-layer
weight in (4). The theorem is a candidate tool, not a verified import.

No numerical computation or Lean certification is claimed.

Remaining to-do list: prove curved uniform counterparts of (2), match the
boundary transgression and full source observable, include all other P1
vertices and sectors under the same regulator, finish novelty/manuscript
work, and certify supported claims on GCP.

# Conditional joint bridge-hit bound for the scalar tower

This extends the existing estimate where both derivatives land on
`Theta(t S_b)`. It includes the product-rule terms where derivatives land
on the zero-image Brownian weight. The needed seed pathwise jets follow
from the source's exact field-dependent coordinate formulas under its
admitted weighted phase assumptions, as shown below. This remains a
conditional scalar-subfamily estimate: it does not identify the term with
the source subtraction or bound the matrix commutator and physical endpoint.

## Setup

Use the collar notation and exact scalar-tower formula in
[`full-weyl-curved-scalar-tower-formula.md`](full-weyl-curved-scalar-tower-formula.md).
Let `Z=sup_s |xi_s|`, `r=y+sqrt(t) Z`, and let `Hit` mean the bridge reaches
the seam. The seed bridge satisfies

    P(Hit)=exp(-y^2/t),
    E[1_Hit r^k] <= C_k (y^k+t^(k/2)) exp(-y^2/(2t)),

for each fixed even `k`, by Cauchy--Schwarz, the finite moments of `Z`, and
`(y+sqrt(t)Z)^k <= C_k(y^k+t^(k/2)Z^k)`. Consequently

    integral_0^delta E[1_Hit r^k] dy <= C_k' t^((k+1)/2). (1)

Assume `0<t<=t0<=1`, `Theta(s)=C/s+rho(s)` with `rho,rho',rho''`
bounded on the relevant interval, and the cubic direction jets

    |S_u|<=U r^3,  |S_w|<=W r^3,  |S_uw|<=U W r^6.       (2)

These are the pathwise bounds from equation (7) of the scalar-tower note.
Write the zero-image orbit factor as

    W0=A_h^(-1/2) exp(t B_h^2/(4 A_h)).

Assume the following seed pathwise jets, uniformly on localized collar
paths, with `0<a0<=A_h<=a1`, `|B_h|<=C r`:

    |(A_h)_u|<=C U r^3,       |(A_h)_w|<=C W r^3,
    |(A_h)_uw|<=C U W r^6,
    |(B_h)_u|<=C U r^2,       |(B_h)_w|<=C W r^2,
    |(B_h)_uw|<=C U W r^4.                             (3)

All constants may depend on the fixed collar and coefficient bounds, not on
`t,y` or the bridge path. Paths exiting the localized collar must separately
obey the usual exponentially small localization estimate.

## Deriving the `A_h,B_h` jets from the source coordinate map

Use the source's exact map

    Y_b(x)=integral_0^x exp(b(s)) ds,
    x_b=Y_b^(-1),  F_b(x)=exp(-b(x)) f0(x),
    f_b(y)=F_b(x_b(y)),

and its first two fixed-`y` variations in equations (11)--(12) of the
frozen curved-heat-bridge note. Its admitted directions obey
`u=O(U |x|^3)`, `u'=O(U |x|^2)` and the corresponding bounds for `w`,
with fixed logarithmic weights absorbed by the remaining powers. The exact
inverse-coordinate variations obey
`xi_u=O(U |x|^4)` and `xi_uw=O(UW |x|^7)`. The seed coefficient is even
and regular, so `f0'=O(|x|)` and `f0,f0''` are bounded. Substitution into
the displayed variations of `f_b` gives, almost everywhere on the collar,

    f_u=O(U |x|^3),       f_u'=O(U |x|^2),
    f_uw=O(UW |x|^6),     f_uw'=O(UW |x|^5).             (4)

For example, the leading mixed terms are `uw` and `u' xi_w` (and their
`u,w` exchange), both `O(UW |x|^6)`; differentiating them gives
`O(UW |x|^5)`. Terms with `xi_u xi_w` or `xi_uw` carry at least eight
powers before differentiation. The weak third derivative of the seed
coefficient is bounded, which suffices for this a.e. estimate.

Differentiate the path integrals defining `A_h` and `B_h` under their
integrals. With `|z_s|<=r`, (4) gives

    (A_h)_u = integral 2 f0(z_s) f_u(z_s) ds = O(U r^3),
    (A_h)_uw = integral 2[f_u f_w+f0 f_uw](z_s) ds = O(UW r^6),
    (B_h)_u = integral f_u'(z_s) ds = O(U r^2),
    (B_h)_uw = integral f_uw'(z_s) ds = O(UW r^5).

On a fixed collar, the last bound implies the weaker `O(UW r^4)` in (3).
Also `|B_h|<=Cr` follows from `f0'(0)=0` and bounded `f0''`; the positive
upper and lower bounds on `A_h` are the source's ellipticity bounds. This
derives (3) in the seed weak sense needed in the bridge expectation. The
uniform `C2` map into `W3,infinity` proved in the source bridge supplies
the bounded-family constants and justifies differentiating the path
integrals; no smooth even extension of the rough directions is used.

## Brownian-weight jets

Set `ell=log W0=-1/2 log A_h+t B_h^2/(4A_h)`. The lower bound on `A_h`,
(3), and `|B_h|<=Cr` give

    |ell_u|<=C U r^3,       |ell_w|<=C W r^3,
    |ell_uw|<=C U W (r^6+t r^4).                        (4)

For the last line, the only term with fewer than six powers of `r` is
`t (B_h)_u (B_h)_w/(2 A_h)`, bounded by `C U W t r^4`; the term involving
`B_h (B_h)_uw` is bounded by `C U W t r^5` and absorbed into `t r^4` on
the fixed collar. Since `W0` is uniformly bounded,

    |(W0)_u|<=C U r^3,  |(W0)_w|<=C W r^3,
    |(W0)_uw|<=C U W (r^6+t r^4).                      (5)

This is a chain-rule consequence of the source-derived jets (3).

## Joint differentiated angular and orbit factors

Using `Theta(tS_b)=C/(tS_b)+rho(tS_b)` and (2),

    |Theta(tS_0)|<=C/t,
    |partial_u Theta(tS_b)|_0 <= C U r^3/t,
    |partial_uw Theta(tS_b)|_0 <= C U W r^6/t.           (6)

The bounded-`rho` contributions satisfy stronger bounds and are absorbed in
(6) for `t<=t0`. Apply the product rule to `W0 Theta(tS_b)`. Equations
(5)--(6) yield

    |partial_uw [W0 Theta(tS_b)]_0|
       <= C U W (r^6/t+r^4).                             (7)

The zero-image diagonal has the additional prefactor `1/(2 pi t)`. Thus,
using (1) for `k=4,6`,

    integral_0^delta | (1/(2 pi t))
          E[1_Hit partial_uw(W0 Theta(tS_b))_0] | dy
       <= C U W t^(-2) [t^(7/2)+t t^(5/2)]
       <= C_* U W t^(3/2).                              (8)

This includes the derivatives on the zero-image scalar Brownian factor,
provided the pathwise jets (3) hold. The fixed physical-half factor, when
justified for this scalar subfamily, only multiplies the constant by `1/2`.

For a nonzero antiperiodic image `k`, write

    E_k=exp[-k^2 T^2/(4t A_h)],
    phi_k=k T B_h/(2 A_h).

With `A_h` bounded above and below, the chain rule gives

    |(E_k)_u| <= C k^2 t^(-1) |(A_h)_u| E_k,
    |(E_k)_uw| <= C[(k^2/t)|(A_h)_uw|
                         +(k^4/t^2)|(A_h)_u(A_h)_w|] E_k,

and derivatives of `phi_k` are bounded by `C|k|` times the corresponding
`B_h` jets plus products with the `A_h` jets. Differentiating
`E_k cos(phi_k)` therefore gives `E_k` times a finite polynomial in
`|k|,t^(-1)` and the jets in (3). Since
`E_k<=exp[-k^2 T^2/(4t a1)]`, each polynomially weighted image sum is
`O(t^N)` for every fixed `N`, uniformly on the bounded collar family.
This remains true after multiplication by `Theta(tS_b)` and its first two
field derivatives, which grow at most polynomially in `t^(-1)`; the
Brownian polynomial factors have bounded moments there. Thus the
differentiated nonzero-image contribution is superpolynomially small and
does not change (8).

Equation (8) still does not include the matrix-valued `mu C_b` sector,
matrix Robin local-time weights, the full source tangent subtraction, LLL,
local restorations or the moving-cut endpoint.

## Curved-minus-tangent scalar hit component

Let `R_sc,g^hit(t)` denote the left side of (8) before taking its absolute
value, for the curved coefficient `f0`. Define `R_sc,tan^hit` by the same
formula, same cutoff directions and same bridge event, with the base inverse
radius replaced by its seam value `f0(0)` in the scalar tangent model.
The field-dependent map `Y_b` is retained in both. The constant tangent
coefficient has `f_tan'=0`; its field derivatives from
`f_tan,b=exp(-b(x_b))f0(0)` satisfy the same (4) and (3) bounds (in fact
the `B_h` terms simplify). Thus (8) applies separately to both terms, and

    integral_0^delta |R_sc,g^hit(t)-R_sc,tan^hit(t)| dy
       <= (C_g+C_tan) U W t^(3/2).                       (9)

If the common localization cutoff is one on `0<=y<=delta_0`, its transition
region has `P(Hit)<=exp(-delta_0^2/t)`; all bounded transition-direction
terms there are superpolynomially small. Equation (9) therefore gives the
`O(t^(3/2))` target for this specified curved-minus-flat scalar hit
component. It does not assign the estimate to the whole source
`r_curved`: that assignment requires proving the source's localized tangent
prescription is exactly this scalar tangent block plus the complementary
non-hit and other-vertex blocks under one common insertion and regulator.

## First unsupported implication

The first unsupported implication is identifying the source's full
localized tangent prescription with this exact scalar block decomposition,
while preserving the complementary non-hit response, actual contact,
density and cutoff terms. Equation (9) bounds one specified component; it
is not a bound for `r_curved` and not a physical admission margin.

Numerical role: none.

Remaining to-do list: match the scalar terms to the physical common
subtraction; bound the
commutator and boundary sectors; close the source-observable endpoint;
finish novelty and manuscript decisions; certify supported claims on GCP.

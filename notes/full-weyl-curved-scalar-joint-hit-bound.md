# Conditional joint bridge-hit bound for the scalar tower

This extends the existing estimate where both derivatives land on
`Theta(t S_b)`. It includes the product-rule terms where derivatives land
on the zero-image Brownian weight, under explicit pathwise jet bounds for
that weight. It remains a conditional scalar-subfamily estimate: the path
jet hypotheses, source subtraction match, matrix commutator and physical
endpoint are not established here.

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

This is a chain-rule consequence of the assumed jets (3); it does not
derive those jets from the field-dependent map `f_b,Y_b`.

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

The complete antiperiodic image terms may be added if their first and mixed
field derivatives retain the fixed-period `O(t^N)` bounds uniformly for
this moving-path family. That differentiated image bound is not proved in
this note. Nor does (8) include the matrix-valued `mu C_b` sector, matrix
Robin local-time weights, the full source tangent subtraction, LLL, local
restorations or the moving-cut endpoint.

## First unsupported implication

The next ordinary step is to derive (3), including the mixed jet of `B_h`,
from the exact field-dependent `f_b,Y_b` formulas on the admitted rough
mass/log family, and prove the differentiated thermal-image majorant. After
that, this component still must be identified with the same term in the
source's localized subtraction. Equation (8) is a conditional model bound,
not a bound for `r_curved` and not a physical admission margin.

Numerical role: none.

Remaining to-do list: derive the pathwise `A_h,B_h` jets and image bounds;
match the scalar terms to the physical common subtraction; bound the
commutator and boundary sectors; close the source-observable endpoint;
finish novelty and manuscript decisions; certify supported claims on GCP.

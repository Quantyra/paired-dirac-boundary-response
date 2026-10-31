# Curved scalar angular-factor bridge-hit term

This estimates one term in the full-Weyl mixed response: the part in which
both field derivatives fall on the path-dependent scalar angular tower
`Theta(t S_b)` in
[`full-weyl-curved-scalar-tower-formula.md`](full-weyl-curved-scalar-tower-formula.md).
It uses the exact Brownian bridge representation and retains the full thermal
image factor. It does not estimate derivatives falling on the orbit factors,
the `mu C_b` commutator, matrix/variable Robin local-time weights, or the
physical source conversion.

## Assumptions and term being estimated

Use the notation of equations (2)--(7) in the scalar-tower formula, at the
seed `b=0`, with `z_s=y+sqrt(t) xi_s` and
`Z=sup_(0<=s<=1)|xi_s|`. The bridge covariance is
`E[xi_s xi_r]=2(min(s,r)-sr)`. Assume `0<t<=t0<=1`, the thermal period is
fixed and positive, and the source angular tower has

    Theta(s)=C/s+rho(s),  |rho'(s)|+|rho''(s)|<=R,
    0<s<=s0,

with `S_b` bounded in `[a_min,a_max]` and `t0 a_max<=s0`.

Let `u,w` be the admitted cubic directions. On the seam collar, assume

    |u(x)|<=A |x|^3,  |u'(x)|<=A |x|^2,
    |w(x)|<=B |x|^3,  |w'(x)|<=B |x|^2.

The fixed logarithmic remainders in the source class satisfy these weaker
bounds after reducing the collar, since `x log^k(1/x)` is bounded for each
fixed `k`. The path-coordinate jets are the exact seed identities

    S_u=-2 integral_0^1 u(z_s) ds,
    S_uw=integral_0^1 [4u(z_s)w(z_s)
             -2u'(z_s)X_w(z_s)-2w'(z_s)X_u(z_s)] ds,
    X_u(x)=-integral_0^x u(v) dv.

Write `R_ang(t,y)` for the part of the mixed diagonal in which both
derivatives land on `Theta(t S_b)`, with all other factors left unvaried.
Thus, per unit thermal length, it is the expectation of

    (2 pi t)^(-1) W_t(y,xi) partial_u partial_w Theta(t S_b)|_(b=0),

where `W_t=A_h^(-1/2) exp(t B_h^2/(4 A_h)) I_T` is the unvaried orbit and
thermal-image factor from equation (5) of the scalar-tower formula.

The component estimated here restricts that bridge expectation to paths that
reach the seam `y+sqrt(t)xi_s=0` at some `s`; denote this event by `Hit`.
This path decomposition is a model localization of the boundary contribution,
not yet an identity for the source's fully subtracted observable. No boundary
condition or local-time factor is folded into `W_t`.
For the scalar bridge model, boundedness of `f,f'` and positivity of `A_h`
give `|W_t|<=C_W` uniformly for `t<=t0`; the complete antiperiodic image
sum is included in this bound. The reflection principle for this bridge
gives `P(Hit)=exp(-y^2/t)`. This event restriction defines the seam defect
estimated below; it does not stand in for the physical matrix-Robin boundary
problem.

## Estimate

There is a constant `C_*`, depending only on the fixed collar bounds,
`a_min,a_max,R`, thermal period, and bridge moments, such that

    integral_0^delta |R_ang,hit(t,y)| dy
       <= C_* A B t^(3/2),                 0<t<=t0.       (1)

The contribution from the bounded remainder `rho` alone is smaller:

    integral_0^delta |R_ang,hit,rho(t,y)| dy
       <= C_* A B t^(7/2).                                (2)

The constants are finite and may be multiplied by the source's physical-half
factor `1/2`; they are not evaluated numerically. The power in (1) is exactly
the target order for this single bridge-hit angular-factor term.

## Proof

Put `r=y+sqrt(t)Z`. Since `|z_s|<=r`, the cubic bounds imply

    |S_u|<=C A r^3,   |S_w|<=C B r^3.

Also `|X_u(x)|<=A|x|^4/4` and `|X_w(x)|<=B|x|^4/4`; hence

    |S_uw|<=C A B r^6.

Differentiate the exact singular/remainder decomposition
`Theta(t S_b)=C/(t S_b)+rho(t S_b)`. Equation (11) of the scalar-tower
formula gives

    partial_uw Theta(t S_b)|_0
       = C/t (2 S_u S_w-S_uw) + t rho'(t) S_uw
                                      + t^2 rho''(t) S_u S_w.

Since `S_0=1`, the lower bound on `S_b` and the bounds above yield

    |C/t (2 S_u S_w-S_uw)|<=C_1 A B t^(-1) r^6,
    |t rho'(t) S_uw+t^2 rho''(t) S_u S_w|
                                      <=C_2 A B t r^6.     (3)

The outer heat factor is `1/(2 pi t)`. For the stated covariance, the bridge
reflection formula gives `P(Hit)=exp(-y^2/t)`. By Cauchy--Schwarz and the finite moments of
`Z`,

    E[1_Hit Z^6] <= (E Z^12)^(1/2) exp(-y^2/(2t)).

Together with `(y+sqrt(t)Z)^6<=32(y^6+t^3 Z^6)`, this gives

    E[1_Hit r^6] <= C_3 (y^6+t^3) exp(-y^2/(2t)).           (4)

The integrals of both terms on the right of (4) over `y>=0` are `O(t^(7/2))`.
Multiplying by the singular coefficient `t^(-2)` from the first term of
(3) and the heat prefactor gives `O(t^(3/2))`, proving (1). For the `rho`
part, the coefficient after the heat prefactor is `O(1)`; the same Gaussian
moment integral gives `O(t^(7/2))`, proving (2). The argument does not
differentiate `W_t`, so it estimates only the stated angular-factor term.

## First unsupported implication

The bound (1) does not estimate the terms where one derivative lands on
`W_t`, and it does not include the variation of `A_h`, `B_h`, or the thermal
image factor. It also has no matrix-valued Robin local-time weight and has
not been identified with a term in the source's exact local subtraction.
Therefore it is one model bridge summand, not a proven summand of the
physical full-Weyl response remainder. The remaining ordinary work is to prove matching Gaussian bridge
and local-time majorants for the other scalar-tower terms, control the
`mu C_b` matrix/odd-odd sector, and identify the same subtraction and
normalization as the physical source observable under one moving-cut
regulator.

No numerical computation or Lean certification is claimed.

Remaining to-do list: bound every other differentiated bridge factor and
the matrix commutator sector under the physical subtraction; match the
physical density, contact, boundary transgression and LLL; complete the
common-regulator and novelty audits; then certify supported claims on GCP.

# Curved Brownian-bridge formula for the scalar angular-mass tower

This gives an exact curved collar formula for the scalar angular-mass part
of the full-Weyl mode family. It extends the parent orbit formula by putting
the massive sphere tower inside the Brownian expectation. It does not include
the odd commutator vertex, the odd-odd response, the LLL, or the complete
physical normalization, so it is not the P1 mixed response theorem.

## Model and assumptions

Use the separated product-mode realization and proper-collar coordinate of
the pinned curved heat bridge. For a real stationary radial Weyl field `b`,
let `L_b` be the orbit square in the canonical half-density frame and write
the full mode square as

    Q_(mu,b)=L_b + mu^2 exp(-2b) + mu C_b,

where `C_b` is the first-order angular commutator multiplier. For this note
retain the scalar subfamily

    Q_sc,(mu,b)=L_b + mu^2 exp(-2b),                    (1)

and omit `mu C_b`. This is an explicit split of the mode square, not a claim
that the omitted term is zero. Treat the LLL in its separate source block.
Assume the real coefficient, product, reflection, and collar hypotheses
under which the parent exact Brownian formula and its antiperiodic image
formula hold. Assume `b` is bounded on the collar, so
`0<a_min<=exp(-2b)<=a_max<infinity`.

In the field-dependent proper coordinate `y=Y_b(x)` of the parent map, let
`f_b(y)` be the transformed inverse thermal radius. For the parent unit
Brownian bridge `xi` with covariance

    E[xi_s xi_r]=2(min(s,r)-sr),

and `h=sqrt(t)`, define the path averages

    A_h(y)=integral_0^1 f_b(y+h xi_s)^2 ds,
    B_h(y)=integral_0^1 f_b'(y+h xi_s) ds,
    S_b(y)=integral_0^1 exp[-2b(x_b(y+h xi_s))] ds.       (2)

Here `x_b=Y_b^(-1)`. In particular, `S_b` is bounded between `a_min`
and `a_max`.

## Exact massive-tower identity

For one thermal frequency `p` and one orbit spin sector, the
Feynman--Kac weight of (1) contains

    exp[-t p^2 A_h +/- t p B_h] exp[-t mu^2 S_b].         (3)

The angular factor is scalar, so it is unaffected by the spin-sector
diagonalization and factors from the `p`-dependent Brownian weight. Let

    Theta(s)=sum_(n>=1) d_n exp(-s mu_n^2),
    mu_n^2=n(n+q)/b_0^2,  d_n=2(q+2n),

be the source's massive sphere tower, with both signs already included in
`d_n`. Since `S_b>=a_min>0`, the series converges absolutely at every
`t>0`. Summing (3) over all massive angular modes therefore replaces
`exp(-t mu^2 S_b)` by `Theta(t S_b)` inside the bridge expectation.

After integrating the continuous thermal frequency, the exact doubled
collar diagonal, per unit thermal length, is

    k_sc,dbl(t;y,y)=1/(2 pi t) E[ A_h^(-1/2)
                      exp(t B_h^2/(4 A_h)) Theta(t S_b) ]. (4)

For the source's actual antiperiodic thermal period `T`, the exact image
version is

    k_sc,T,dbl(t;y,y)=1/(2 pi t) E[ A_h^(-1/2)
      exp(t B_h^2/(4 A_h)) Theta(t S_b) I_T(t;A_h,B_h) ], (5)

    I_T=sum_(k in Z) (-1)^k exp[-k^2 T^2/(4t A_h)]
                         cos[k T B_h/(2 A_h)].

Equation (5) retains the complete thermal image sum. The bounds from the
parent note justify its absolute convergence on the stated real collar
family. If the source reflection identity is applied to this scalar
subfamily, the physical half-trace is one half of the doubled trace, just as
in the parent convention; this note does not independently establish the
full P1 density or partner allocation.

At `b=0`, `S_b=1`, so `Theta(t S_b)=Theta(t)` factors out and (4)--(5)
reduce exactly to the parent orbit kernel with an external massive angular
weight. For nonconstant `b`, the angular tower is instead evaluated at the
path-dependent proper time `t S_b`.

## Mixed derivatives and relation to the moment reduction

For a two-parameter field `b+s u+r w`, differentiating the new angular
factor gives

    partial_u Theta(t S_b)=t Theta'(t S_b) partial_u S_b,

    partial_u partial_w Theta(t S_b)
       =t Theta'(t S_b) partial_u partial_w S_b
          +t^2 Theta''(t S_b)(partial_u S_b)(partial_w S_b). (6)

The seed jets of `S_b` can be written explicitly. At `b=0`, `x_0(y)=y` and
the inverse-coordinate derivative from the parent relation
`Y_b(x)=integral_0^x exp(b(s)) ds` is

    X_u(x):=partial_u x_b(x)|_(b=0)=-integral_0^x u(s) ds.

For each bridge path `z_s=y+sqrt(t) xi_s`, the chain rule gives

    S_u(y)= -2 integral_0^1 u(z_s) ds,

    S_uw(y)= integral_0^1 [4u(z_s)w(z_s)
                -2u'(z_s)X_w(z_s)-2w'(z_s)X_u(z_s)] ds.   (7)

The terms with `X_u` and `X_w` are required because the canonical radial
coordinate moves with the field. For the source's cubic directions,
`u,w=O(x^3)` and `u',w'=O(x^2)`, so `X_u,X_w=O(x^4)` and the pathwise
integrands in (7) vanish as `O(x^3)` and `O(x^6)` at the seam. Fixed log
weights in the higher jets can be retained in these estimates. This verifies
the local direction factors in the angular weight; it does not bound the
mixed derivative of the complete heat kernel.

These are ordinary chain-rule identities; the path map `x_b`, `f_b`,
`A_h`, `B_h`, and the thermal images also vary and must be differentiated.
At the seed `S_0=1`, their angular weights are precisely `Theta'(t)` and
`Theta''(t)` from
[`full-weyl-opposite-sign-cross-cancellation.md`](full-weyl-opposite-sign-cross-cancellation.md).
Thus (4)--(6) give a curved probabilistic representation of the scalar
angular-potential insertion sector and retain its full massive tower.

## Uniform heat-moment remainder and combined differentiation

For the source tower, put `C=2 b_0^2` and, for `k=0,1,2`, define

    f_(k,t)(x)=2(q+2x)[x(x+q)/b_0^2]^k
                    exp[-t x(x+q)/b_0^2].

Then `(-1)^k Theta^(k)(t)=sum_(n>=1) f_(k,t)(n)` and a direct change of
variable `v=t x(x+q)/b_0^2` gives

    integral_0^infinity f_(k,t)(x) dx
        = C k! t^(-k-1).                                (8)

Euler--Maclaurin through order `2(k+1)` gives

    sum_(n>=1) f_(k,t)(n) - integral_0^infinity f_(k,t)(x) dx
       = -f_(k,t)(0)/2
         - sum_(j=1)^(k+1) B_(2j)/(2j)! f_(k,t)^(2j-1)(0)
         + R_(k,t),

where, with the periodic Bernoulli function in the remainder,

    |R_(k,t)| <= ||B_(2k+2)||_infinity/(2k+2)!
                  integral_0^infinity |f_(k,t)^(2k+2)(x)| dx.  (9)

For fixed `q,b_0,t_0`, each endpoint derivative displayed here is bounded
uniformly on `0<t<=t_0`: differentiating the polynomial-exponential form
leaves a finite sum of nonnegative powers of `t` times fixed polynomials in
`q` and `b_0^(-2)`. For the remainder set `x=t^(-1/2)y`. The function has
the scaled form
`f_(k,t)(t^(-1/2)y)=t^(-k-1/2) F_k(y,q sqrt(t),b_0)`, where `F_k` is a
polynomial times `exp[-(y^2+q sqrt(t)y)/b_0^2]`. Applying `2k+2`
`x`-derivatives and including `dx=t^(-1/2)dy` cancels all powers of `t`.
The resulting integral is bounded uniformly because `q sqrt(t)` stays in
a compact interval and the Gaussian has a uniform integrable majorant (with
constants depending on `q,b_0,t_0`). Thus the sum-minus-integral difference
is `O(1)` uniformly on this interval. Hence

    Theta(t)=C/t+O(1),
    Theta'(t)=-C/t^2+O(1),
    Theta''(t)=2C/t^3+O(1).                            (10)

In particular `rho(s)=Theta(s)-C/s` and its first two derivatives are
bounded on `0<s<=s_0`. Since `S_b` stays in a fixed positive compact
interval, write

    Theta(t S_b)=C/(t S_b)+rho(t S_b).

The two field derivatives can therefore be combined exactly as

    partial_u Theta(t S_b)
       =-C S_u/(t S_b^2) + t rho'(t S_b) S_u,

    partial_u partial_w Theta(t S_b)
       = C/t [2 S_u S_w/S_b^3-S_uw/S_b^2]
         + t rho'(t S_b) S_uw
         + t^2 rho''(t S_b) S_u S_w.                    (11)

This cancellation is stronger than estimating `t Theta'` and
`t^2 Theta''` separately: the singular part is only `C/t` times derivatives
of `S_b^(-1)`. At the seed, the explicit jets (7) make its first and mixed
direction factors vanish as `x^3` and `x^6` for cubic profiles. Equation
(11) is an exact angular-factor statement. It does not yet bound the
remaining Brownian factors, the differentiated thermal images, the local
counterterms, or the integrated mixed heat remainder. Those still require
the parent finite-jet and source-normalization arguments for this inserted
factor.

There is a useful bound on the nonsingular angular-factor remainder alone.
Let `M_1,M_2` bound `|rho'|,|rho''|` on `(0,s_0]`, and restrict
`0<t<=min(1,s_0/a_max)`, so `t S_b<=s_0` and `t<=1`. If the path jets obey
`|S_u|<=J_u` and `|S_uw|<=J_uw` uniformly in the base point and bridge,
then (11) implies

    |partial_u rho(t S_b)| <= t M_1 J_u,
    |partial_u partial_w rho(t S_b)|
        <= t M_1 J_uw + t^2 M_2 J_u J_w.               (12)

At the seed, sufficient pathwise constants follow directly from (7):

    J_u <= 2 ||u||_infinity,
    J_uw <= 4 ||u||_infinity ||w||_infinity
             +2 ||u'||_infinity ||X_w||_infinity
             +2 ||w'||_infinity ||X_u||_infinity.

Thus the differentiated `rho` factor is nonsingular and its first two field
jets are uniformly `O(t)` for bounded path jets. This isolates the only
`1/t` singularity in the angular-factor derivatives in `C/(t S_b)`.
Equation (12) does not bound the mixed derivative of the full product in
(5): derivatives of `A_h`, `B_h`, the thermal images and their products
with the unvaried `rho` remain, as do the local subtraction and physical
source terms.

The representation makes the next estimate concrete: after the source's
full local subtraction, differentiate (5) along the admitted mass/log
directions and bound its bridge expectation uniformly. A model bridge-hit
component with both derivatives on `Theta(t S_b)` is bounded in
[`full-weyl-curved-angular-factor-defect.md`](full-weyl-curved-angular-factor-defect.md):
under the stated Gaussian localization it is `O(t^(3/2))`, and its bounded
`rho` remainder is `O(t^(7/2))`. This model path restriction has not been
identified with a term in the source's exact local subtraction. It does not
estimate derivatives on `A_h`, `B_h`, or the thermal images, and has no
matrix-Robin local-time weight.
The moment-order bookkeeping in the sign-cancellation note gives termwise
sufficient targets for the remaining seed derivatives, but neither this
identity nor the parent orbit remainder proves those bounds. The `mu C_b`
commutator sector, including its even odd-odd contribution, still needs a
separate matrix-valued bridge estimate under the same subtraction.

No numerical computation or Lean certification is claimed.

Continuation recorded 2026-10-31: the source angular tower satisfies the
uniform differentiated asymptotics (10), so differentiating `Theta(t S_b)`
combines the apparent `Theta'`/`Theta''` singularities into the `C/t`
derivatives of `S_b^(-1)` plus bounded-remainder terms (11). This gives the
local cubic-direction vanishing orders for the angular factor alone. It does
not close the complete subtracted bridge estimate or the commutator sector.

Remaining to-do list: justify (4)--(5) for the source's exact mode and
boundary realization; derive the subtracted derivative bounds; bound the
commutator/odd-odd sector; match density, contact, LLL and boundary terms;
complete the physical regulator, novelty, manuscript and GCP Lean work.

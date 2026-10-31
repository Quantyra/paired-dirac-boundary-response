# Interior leading coefficient for the scalar angular-mass correction

This computes the leading interior coefficient of the scalar-tower heat
diagonal minus its fixed-angular-mass orbit diagonal. It includes variations
of both the angular factor and the zero-image Brownian orbit weight. It is a
component calculation in the scalar bridge representation, not the full
Weyl response, the source's `r_curved`, or a physical counterterm.

## Setup and fixed-base-point limit

Use the exact positive-time scalar bridge formula and notation in
[`full-weyl-curved-scalar-tower-formula.md`](full-weyl-curved-scalar-tower-formula.md):

    Delta_sc(t;y) = 1/(2 pi t) E[ W_T(b) (Theta(t S_b)-Theta(t)) ].

Take smooth admitted directions `u,w` supported in a compact interior collar,
and a smooth positive seed coefficient `f_0`. The zero thermal image has

    W_0=A_h^(-1/2) exp(t B_h^2/(4 A_h)),
    A_h=int_0^1 f_b(z_s)^2 ds,   B_h=int_0^1 f_b'(z_s) ds,
    z_s=y+sqrt(t) xi_s.

For fixed interior `y`, the bridge converges to the constant path at `y` as
`t` decreases to zero. Thus `A_h -> f_0(y)^2`, `W_0 -> 1/f_0(y)`, and the
first field derivative of the fixed-y coefficient is

    (f_b)_u|_0(y) = -u(y) f_0(y) + f_0'(y) X_u(y),
    X_u(y) = -int_0^y u(x) dx,

with the analogous formula for `w`. Consequently

    (W_0)_u|_0 -> -(f_0)_u/f_0^2,
    (W_0)_w|_0 -> -(f_0)_w/f_0^2.

These are limits of the bridge factors, not pathwise small-time expansions.

## Mixed angular and orbit-weight jets

Write `C` for the leading tower coefficient, `Theta(s)=C/s+O(1)`, and
`F_b=Theta(t S_b)-Theta(t)`. At the seed, `S_0=1`, so `F_0=0`. From the
coordinate jets in equation (7) of the scalar-tower note,

    S_u=-2u,  S_w=-2w,
    S_uw=4uw-2u'X_w-2w'X_u

in the constant-path limit. Therefore

    t F_w -> -C S_w = 2Cw,
    t F_u -> 2Cu,
    t F_uw -> C(2 S_u S_w-S_uw)
             = C(4uw+2u'X_w+2w'X_u).

Since `F_0=0`, the mixed derivative of `W_0 F_b` has only
`(W_0)_u F_w+(W_0)_w F_u+W_0 F_uw`. Substituting the limits above gives

    partial_uw Delta_sc(t;y)
      = C/(2 pi t^2) Q_{u,w}(y) + O(t^(-1)),

where

    Q_{u,w}
      = 8uw/f_0
        +2(u'X_w+w'X_u)/f_0
        -2 f_0'(uX_w+wX_u)/f_0^2.                 (1)

The first `4uw/f_0` in (1) comes from the angular-factor Hessian. The other
`4uw/f_0` and the `f_0' X` terms come from differentiating the Brownian orbit
weight. Thus the frozen angular-factor coefficient alone is not the complete
leading coefficient even within this scalar component.

For the stated `O(t^(-1))` remainder, assume `f_0,u,w` have bounded derivatives
through order three on a fixed collar containing the direction supports,
`f_0>=c>0` there, and the bridge coefficients and their first two field jets
are bounded on that collar. The fixed-`y` leading expectation is

    G_t(y)=E[-(W_0)_u S_w-(W_0)_w S_u
                       +W_0(2 S_u S_w-S_uw)]_0.

It converges to `Q_{u,w}(y)`. Taylor-expand its path integrand at the
constant path `z_s=y`. The order-`sqrt(t)` term is linear in the centered
Gaussian bridge and has zero expectation; the second-order Taylor remainder
is bounded by `C t E[sup_s |xi_s|^2]`. Thus `G_t=Q+O(t)` uniformly on compact
interior subsets. The bounded `rho',rho''` terms in the tower expansion
contribute `O(1)` after the heat prefactor, and differentiated nonzero
thermal images are exponentially small for fixed positive period. This
proves the displayed `O(t^(-1))` remainder after expectation. No pathwise
`O(t)` expansion is used. With compactly supported directions, the bridge
tails away from the collar are exponentially small; integration gives the
same `O(t^(-1))` remainder. The scalar difference and its first two field
jets vanish near the moving collar endpoints to algebraic order because the
directions vanish there, so movement of the `y=Y_b(x)` endpoint contributes
no term at this order for this scalar difference. This does not dispose of
endpoint terms in the complete response. The tower normalization here is exactly the one in
`Delta_sc`; an additional physical-half or partner factor must only be
applied if established by the source-to-observable transfer.

## Integrated form and scope

Because `X_u'=-u` and `X_w'=-w`,

    d/dy [(u X_w+w X_u)/f_0]
      =(u'X_w+w'X_u-2uw)/f_0
        -f_0'(uX_w+wX_u)/f_0^2.

Hence (1) can be rewritten as

    Q_{u,w}=12uw/f_0
             +2 d/dy [(u X_w+w X_u)/f_0].

For compactly supported `u,w` the total derivative integrates to zero, so

    integral Q_{u,w}(y) dy = 12 integral u(y)w(y)/f_0(y) dy.

Consequently the integrated coefficient of `Delta_sc` is
`(6C/pi) t^(-2) integral uw/f_0`. In the flat seed `f_0=1`, this agrees
with the full-plane leading scalar Duhamel correction in the existing flat
ledger: the pure angular term contributes `2C/pi` and the two ordered
orbit-angular terms contribute `4C/pi`. Under the conditional physical-half
normalization this is `(3C/pi)t^(-2) integral_R uw`. In the matched source
flat full-line pairing, `I_t=(1/(4pi)) integral_R uw+O(t)`, so
`C_src=-(C/(2pi))t^(-2) integral_R uw`. The scalar/contact component is
therefore `D_sc-C_src=(7C/(2pi))t^(-2) integral_R uw`; the remaining
`C/(2pi)` needed to reach the full-Weyl coefficient `4C/pi` is the orbit
bracket, derived from the corrected source identity in
[`p1d-response-versus-conversion.md`](p1d-response-versus-conversion.md).
This checks the allocation under the restricted flat common normalization
only.

There is also a conditional curved zeroth-jet contact check. In the source's
recorded common-cut normalization,

    C_src(t)=2 Theta'(t) I_t(u,w),
    I_t(u,w)=(1/(4 pi)) integral_R u w/f_0 + O(t),
    Theta'(t)=-C/t^2+O(1).

Thus `C_src=-(C/(2pi))t^(-2) integral_R uw/f_0+O(t^(-1))`. Applying the source's
conditional physical-half factor to the doubled scalar result gives
`D_sc=(3C/pi)t^(-2) integral_R uw/f_0+O(t^(-1))`. This gives the conditional
scalar/contact component `D_sc-C_src=(7C/(2pi))t^(-2) integral_R uw/f_0+
O(t^(-1))`; it is not the complete `D-C_src`, because the matrix sector is
still absent. The smooth-interior leading coefficient of `H_orb-G_src` is
derived in the finite-cut comparison note using the corrected differential
identity; seam-reaching directions and the observable-level trace
identification remain open. This comparison assumes the source
physical-half normalization and matching measure. It does
not match density/Jacobian and boundary terms in the complete curved
response, prove cancellation with local restorations, or establish a
common-regulator endpoint; see the full finite-cut ledger in
[`p1d-response-versus-conversion.md`](p1d-response-versus-conversion.md).

This is a new consistency target for the complete local matching: the orbit
weight changes the integrated scalar coefficient. It does not prove that
the separate orbit Hessian, matrix `mu C_b` sector, density/Jacobian
variations, local restorations, LLL, or boundary transgression combine with
it in the full response. The leading scalar/contact terms add inside
`D_sc-C_src`, as shown above. It is not a bound on the non-hit defect or on
`r_curved`; those pieces must be combined under the common regulator before
the S001 physical response claim can be assessed.

Remaining to-do list: match (1) against the complete source local subtraction
and all orbit, matrix, density, contact, LLL and boundary terms; prove the
non-hit defect and common-regulator endpoint; finish novelty and manuscript
decisions; certify supported claims on GCP.

## Extension to the admitted rough seam profiles

The leading coefficient above also extends to the admitted even-folded
cubic/log directions; smoothness through the seam is not needed. Assume the
source map `b -> f_b` is twice differentiable into `W^(3,infinity)` on the
fixed collar, as in the source bridge hypotheses used by
[`full-weyl-curved-scalar-joint-hit-bound.md`](full-weyl-curved-scalar-joint-hit-bound.md).
Assume the seed coefficient is positive and even, and the admitted directions
and their first two field jets have uniform `W^(3,infinity)` bounds after
folding. The profiles `|y|^3` and `|y|^4 log|y|`, with fixed smooth cutoffs,
satisfy these bounds; the third derivative of the cubic profile may jump.

In the proof above the singular part of the zero-image mixed response is
`C/(2 pi t^2) E[G(y+sqrt(t) xi)]`, where `G` is the path functional whose
constant-path value is `Q_(u,w)(y)`. It is built from path averages of
`f_0,f_u,f_w,f_uw` and their first spatial derivatives, with denominators
powers of `A_h`, which is bounded below. The `W^(3,infinity)` bounds make
this functional continuously differentiable in the path supremum norm with
a uniformly Lipschitz derivative. Taylor's formula therefore gives

    G(y+sqrt(t) xi) = G(y) + sqrt(t) D G_y[xi] + R_t,
    |R_t| <= C t sup_s |xi_s|^2.

The linear term has zero bridge expectation because `E[xi_s]=0` for every
`s`; the bridge supremum has finite second moment. Hence
`E[G(y+sqrt(t)xi)]=Q_(u,w)(y)+O(t)` uniformly for `y` across the seam collar.
For paths leaving the larger localization chart, use the source bridge's
exponentially small collar-exit bound with the bounded extensions of the
coefficients. The differentiated nonzero thermal images are
superpolynomially small, and
the bounded tower remainder contributes `O(1)` after the heat prefactor.
It follows that

    partial_uw Delta_sc(t;y)
       = C/(2 pi t^2) Q_(u,w)(y) + O(t^(-1))

uniformly on that collar for the rough admitted profiles. The weak integration-
by-parts identity in the preceding section remains valid for these profiles;
the cubic vanishing and compact localization remove its endpoint term, giving
`integral Q_(u,w)=12 integral uw/f_0`.

This extends the leading scalar coefficient from smooth interior directions
to the rough seam family without a uniform `C^4` assumption. The `O(t^(-1))`
error is still not integrable against `dt/t^2`. This result does not identify
the coefficient with the source's prescribed local subtraction, include
physical density/Jacobian or boundary terms, or prove the common-regulator
limit. First unsupported implication: match this rough-family coefficient
and the next local terms to the complete source subtraction before claiming
a renormalized scalar response. Numerical role: none.

Remaining to-do list: match the rough scalar expansion, including its
`O(t^(-1))` remainder, to the source subtraction; then combine the orbit,
matrix, density, contact, boundary and LLL terms under one regulator and
close the endpoint; finish novelty/manuscript review and GCP certification.

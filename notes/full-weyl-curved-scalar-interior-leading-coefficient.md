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
normalization this is `3C/pi`. The source contact remains separate:
`C_src=-(C/pi)t^(-2)` in that normalization, so `D-C_src` has coefficient
`4C/pi`; no cancellation is inferred. This check validates the scalar
coefficient and the retained orbit-angular cross terms in the restricted
flat leading ledger only.

There is also a conditional curved zeroth-jet contact check. In the source's
recorded common-cut normalization,

    C_src(t)=2 Theta'(t) I_t(u,w),
    I_t(u,w)=(1/(2 pi)) integral u w/f_0 + O(t),
    Theta'(t)=-C/t^2+O(1).

Thus `C_src=-(C/pi)t^(-2) integral uw/f_0+O(t^(-1))`. Applying the source's
conditional physical-half factor to the doubled scalar result gives
`D_sc=(3C/pi)t^(-2) integral uw/f_0+O(t^(-1))`. Hence the scalar/contact
part of the finite-cut bracket has leading coefficient
`D_sc-C_src=(4C/pi)t^(-2) integral uw/f_0+O(t^(-1))`, the same coefficient
as the flat check with its natural `1/f_0` local weight. This uses only the
zeroth spatial jet and the source's insertion/contact normalization. It does
not match `H_orb-G_src`, density/Jacobian and boundary terms in the complete
curved response, prove cancellation with local restorations, or establish a
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

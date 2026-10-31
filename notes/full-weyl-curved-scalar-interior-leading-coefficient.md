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

## Next local coefficient for smooth interior directions

For this paragraph only, assume the compactly supported directions stay a
positive distance from the seam and the exact singular path functional
`H_0` below has four uniformly bounded Frechet derivatives in the path
supremum norm. At a fixed path, put `W=A_h^(-1/2)`, `R=S_b^(-1)-1`, and
`Z=B_h^2/(4A_h)`. The leading mixed path integrand and its first explicit
`t` correction from the orbit exponential are

    H_0 = D_uw[W R]|_(b=0),
    H_1 = D_uw[W Z R]|_(b=0).

Because `R|_(b=0)=0`, these are respectively

    H_0=W_u R_w+W_w R_u+W R_uw,
    H_1=Z H_0+W(Z_u R_w+Z_w R_u),

with all jets evaluated at the same path. The constant-path value of `H_0`
is `Q_(u,w)(y)`. Assume also the path regularity needed for a second-order
Taylor bound on `H_1`. Bridge symmetry gives zero expectation for the odd
linear and cubic terms in `H_0`. Taylor's formula then yields

    E[H_0(sqrt(t) xi)+t H_1(sqrt(t) xi)]
      = Q_(u,w)(y)
        + t[(1/2) E[D^2 H_0(0)[xi,xi]]+H_1(0)] + O(t^2),

uniformly on the interior support. Thus the singular tower contribution has
the next coefficient

    partial_uw Delta_sc(t;y)
      = C Q_(u,w)(y)/(2 pi t^2)
        + C[(1/2) E[D^2 H_0(0)[xi,xi]]+H_1(0)]/(2 pi t)
        + O(1).                                             (2)

In particular, the `H_1` term is required: it comes from the explicit factor
`exp(t B_h^2/(4A_h))` in the exact bridge weight and is of the same order as
the path-Hessian contraction. The bounded remainder in (2) also uses the
full-product `O(1)` estimate for the nonsingular tower part in
[`full-weyl-curved-scalar-tower-formula.md`](full-weyl-curved-scalar-tower-formula.md)
and the exponentially small image bounds. Formula (2) leaves the path
Hessian unexpanded; its covariance is `2(min(s,r)-sr)`.

This is a smooth-interior coefficient only. The uniform `W^(3,infinity)`
seam hypotheses used for the leading term give only a Lipschitz first path
derivative and do not justify this Taylor expansion; see
[`bridge-lipschitz-next-coefficient-obstruction.md`](bridge-lipschitz-next-coefficient-obstruction.md).
To use (2) in P1, one must express its Hessian coefficient as the source's
prescribed local tangent/contact/density subtraction and then prove a
uniform rough-seam remainder. No such identification follows from (2), and
it does not include the matrix commutator, boundary transgression or LLL.
Correction to the initial `418235c` version: that version included the path-
Hessian term but omitted `H_1` from the explicit `t B_h^2/(4A_h)` exponent.
This commit supplies the corrected coefficient. Numerical role: none.

### The explicit-exponential term at the rough seam

The constant-path value of `H_1` can be written in source jets. Put
`f=f_0(y)`, `f_u=-u f+f'X_u`, and `f_w=-w f+f'X_w`. At the constant path,
`W=1/f`, `R_u=2u`, `R_w=2w`, and `R_uw=4uw+2u'X_w+2w'X_u`. Also

    Z=f'^2/(4f^2),
    Z_u=f'f_u'/(2f^2)-f'^2 f_u/(2f^3),
    Z_w=f'f_w'/(2f^2)-f'^2 f_w/(2f^3).

Thus the exponential contribution to the coefficient in (2) is

    H_1(y)= f'^2 Q_(u,w)/(4f^2) + 2(w Z_u+u Z_w)/f.       (3)

For the even seed and admitted cubic/log directions,
`f'=O(y)`, `u,w=O(y^3)`, `u',w'=O(y^2)`, `X_u,X_w=O(y^4)`,
`f_u,f_w=O(y^3)`, and `f_u',f_w'=O(y^2)`, with the fixed logarithmic
weights retained. Hence `Q=O(y^6)` and `Z_u,Z_w=O(y^3)`, so
`H_1(y)=O(y^6)` (up to the prescribed finite log powers) and its
constant-path value extends continuously to zero at the seam.

The path version of `H_1` is built from path averages of these same fields
and first spatial derivatives. Under the source's uniform `W^(3,infinity)`
path-jet bounds, it has a uniformly Lipschitz first path derivative: one
additional path derivative uses at most second spatial derivatives of the
field jets. Bridge centering then gives

    E[H_1(y,sqrt(t)xi)] = H_1(y,0)+O(t)

uniformly through the seam collar. Therefore the explicit-exponential part
itself has the corrected `t^(-1)` coefficient (3) with an `O(1)` remainder
after multiplication by `C/(2 pi t)`. This closes the rough-seam passage for
`H_1` under the stated path-jet hypotheses. It does not control the
bridge-Hessian term `E[D^2 H_0(0)[xi,xi]]`, the local subtraction, or the
other physical sectors; those remain the first unsupported parts of the
next-coefficient argument.

### Seam behavior of the path-Hessian coefficient

Although its uniform remainder is not yet controlled, the coefficient
`K_2(y)=(1/2) E[D^2 H_0(0)[xi,xi]]` itself has a continuous seam extension.
At a constant path, `H_0=W_u R_w+W_w R_u+W R_uw`, with
`W_u=-A^(-3/2) integral(f f_u)` and

    R_uw=8(integral u)(integral w)-4 integral(uw)
          +2 integral(u'X_w+w'X_u).

For the source jets, `W_u` and `R_u` vanish as `O(y^3)`; their first and
second path derivatives are respectively `O(y^2)` and `O(y)`. The same
holds with `u,w` exchanged. The second path derivatives of `R_uw` are
`O(y^4)`: this follows by differentiating the products of averages and from

    (u'X_w)''=u'''X_w+2u''X_w'+u'X_w'',

where `u'''=O(1)`, `X_w=O(y^4)`, `X_w'=-w=O(y^3)`, and
`X_w''=-w'=O(y^2)`. The fixed logarithmic jets add only the prescribed
finite log powers. The path derivatives of `W` through order two are
bounded. The product rule therefore gives

    |K_2(y)| <= C y^4 (1+|log y|)^p -> 0

for some fixed finite `p` on the admitted family. Thus the smooth-interior
Hessian coefficient extends to the seam with value zero. This is a statement
about the coefficient only. It does not provide a uniform `o(t)` expansion
of `E H_0(y,sqrt(t)xi)` across the seam; controlling that remainder still
requires a seam-split estimate for the weighted physical jets.

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

The regularity input used here does not itself determine a uniform next
coefficient: a bounded `C^(1,1)` path functional can have an order-`t`
bridge-averaging error with zero quadratic Taylor jet at the base point.
[`bridge-lipschitz-next-coefficient-obstruction.md`](bridge-lipschitz-next-coefficient-obstruction.md)
gives an explicit smooth family. This is not a counterexample to the
source-specific functional; it means its weighted physical-side hypotheses
or algebraic structure must be used to prove any stronger uniform expansion.

Remaining to-do list: match the rough scalar expansion, including its
`O(t^(-1))` remainder, to the source subtraction; then combine the orbit,
matrix, density, contact, boundary and LLL terms under one regulator and
close the endpoint; finish novelty/manuscript review and GCP certification.

### Integrated weighted expansion of the path functional H_0

The pointwise path-Hessian coefficient above is not itself a uniform seam
expansion. The source's stronger physical-side weights do, however, support an
integrated expansion for compactly localized directions. Assume the recorded
bounds `b,u,w = c y^3 + r` with
`|r^(j)(y)| <= C y^(4-j)(1+|log y|)` for `0<=j<=5`, positive bounded `f_0`
and its induced coefficient jets, and the source's smooth physical-side
approximants with uniform `W^(3,infinity)` bounds. Keep the bridge path inside
a fixed localization chart; the stated collar-exit estimate handles its
complement.

Write angle brackets for the bridge-time average. At a fixed path,

    H_0 = W_u R_w + W_w R_u + W R_uw,
    W_u = -A^(-3/2) <f f_u>,   R_u=2<u>,
    f_u=-u f+f' X_u,
    R_uw=8<u><w>-4<uw>+2<u'X_w+w'X_u>.

After expanding `f_u,f_w` and differentiating the spatial integral of `H_0`
four times with respect to the common bridge scale `h`, every term is an
integral of products of shifted one-dimensional factors with total spatial
derivative count at most five: four from the `h` derivatives and at most one
already present in `f'`, `u'`, or `w'`. The factors include at least one
localized direction. In the `u'X_w` and `w'X_u` terms, first integrate the
explicit derivative off `u'` or `w'`; the full folded product has zero seam
trace because `u,w=O(|y|^3)` and `X_u,X_w=O(|y|^4)`. The resulting terms still
have total derivative count at most five and retain a localized direction
factor. The six-derivative transfer lemma therefore moves derivatives until
no factor has order above three, with no inverse power of `h`. Its constants
are uniform in all bridge-time shifts. Derivatives through order three of
`f_0,u,w,X_u,X_w` are controlled by their uniform physical `W^(3,infinity)`
bounds; the weighted `C^5` assumptions supply the stated approximations and
uniform bounds. This gives, for each bridge path,

    |d^4/dh^4 integral H_0(y+h xi) dy|
       <= C ||xi||_infinity^4.

Taylor's formula through cubic order, followed by bridge symmetry, now yields

    integral E[H_0(y+sqrt(t)xi)] dy
      = integral Q_(u,w)(y) dy
        + t integral K_2(y) dy + O(t^2),

uniformly over the admitted approximants. The terms of odd degree vanish
because `xi` and `-xi` have the same law. The fourth bridge-supremum moment
is finite. The uniform bound after derivative transfer and convergence of the
lower-order integrated expressions pass this identity to the reflected rough
profiles. Multiplying by the singular heat prefactor `C/(2 pi t^2)` leaves an
`O(1)` integrated scalar remainder after both the leading and path-Hessian
coefficients are retained. The `H_1` term has its separate seam estimate
above.

This is an integrated scalar bridge statement. It does not identify
`integral (K_2+H_1)` with the prescribed source local subtraction, does not
include the full physical density/contact conversion or the orbit, matrix,
boundary and LLL sectors, and does not by itself prove the common-regulator
response. Its ordinary proof uses the source's weighted smooth approximants;
the seam integration-by-parts trace and convergence must be checked for the
exact source approximation before importing it into the physical observable.
Numerical role: none.

Concrete claim: for the localized scalar singular bridge term, the integrated
remainder after the `Q` and `K_2` coefficients is `O(1)` after the heat
prefactor, conditional on the source approximation and cutoff hypotheses
stated above. Ordinary argument: expand the exact path formula, count at most
five spatial derivatives in its fourth bridge-scale derivative, transfer
those derivatives to factors with uniform `W^(3,infinity)` bounds, use bridge
symmetry, and pass the integrated coefficient formulas to the rough limit.
First unsupported implication: verify these seam-transfer hypotheses against
the exact source physical cutoff and match the resulting local coefficients to
the source subtraction, then control the remaining full-Weyl sectors.
Numerical role: none.

Remaining to-do list: verify the source cutoff passage for this integrated
expansion; match all scalar coefficients to the source subtraction; close
orbit, matrix, density/contact, boundary, LLL and common-regulator terms; then
complete novelty review and GCP Lean certification.

For the rough limit, the source's physical-side smooth remainder approximants
are combined with an auxiliary even mollification of the folded cubic jet.
The latter has uniform `W^(3,infinity)` bounds and converges in `W^(2,infinity)`
and local `H^3`; the transfer is uniform in both smoothing scales. The
chain-rule count can be audited by the following term classes before expanding
`A^(-alpha)` derivatives:

| `H_0` factor class | Intrinsic derivative offset | Four bridge derivatives | Handling |
| --- | ---: | ---: | --- |
| `<f^2 u><w>` and its swap | 0 | total at most 4 | Direct transfer |
| `<f f' X_u><w>` and its swap | 1 from `f'` | total at most 5 | Transfer to the localized `w` factor if needed |
| `<u><w>` and `<uw>` | 0 | total at most 4 | Direct transfer |
| `<u' X_w>` and `<w' X_u>` | 1 from the displayed direction derivative | total at most 5 | First integrate that derivative by parts; then transfer |

Differentiating `A^(-alpha)` adds shifted `f` factors and distributes, but
does not increase the total bridge derivative count. Every resulting product
has a compactly supported direction factor whose first three derivatives are
integrable, as required by the transfer lemma. Total order five also ensures
that after transfer at most one factor has order three, so the stated local
`H^3` convergence suffices to pass the integrated expressions to the limit.

### Correction to the integrated derivative count

This subsection supersedes the preceding five-total-derivative count and the
claim that one must first integrate `u'` or `w'` by parts. Treating `f'` as
an independent factor would ask for an unweighted fourth derivative of `f`,
which the admitted family does not provide. Instead group the exact source
jets before applying the transfer lemma:

    g_u=f f_u=-f^2 u+f f' X_u,
    j_uw=u' X_w,     j_wu=w' X_u.

The weighted `C^5` source bounds imply uniform `W^(3,infinity)` bounds for
`g_u,g_w,j_uw,j_wu`. For `g_u`, the only potentially unbounded term in its
third derivative is a multiple of `f_0^(4) X_u`; the weights give
`f_0^(4)=O(1+|log y|)` and `X_u=O(y^4)`, so their product is bounded and tends
to zero at the seam. For `j_uw`, the corresponding term is
`u^(4) X_w=O(y^4(1+|log y|))`; the exchanged term is identical. All other
third-derivative terms use only bounded third jets or lower. The localized
`j` factors are compactly supported through the localized direction derivative.

Now write the terms in `H_0` using the grouped factors:

    W_u R_w = -2 A^(-3/2) <g_u><w>,
    W_w R_u = -2 A^(-3/2) <g_w><u>,
    W R_uw = A^(-1/2)[8<u><w>-4<uw>+2<j_uw+j_wu>].

Every term has a compactly supported direction factor (one of `u`, `w`,
`uw`, or `j`) with three integrable derivatives. Four derivatives in the
common bridge scale distribute a total of four spatial derivatives among
these factors and the shifted `f_0` factors generated by differentiating
`A^(-alpha)`. The transfer lemma moves any fourth derivative onto the
localized factor; all resulting factors then require at most three bounded
derivatives. Its constants are independent of the bridge-time shifts, and
the coefficients from path differentiation are bounded by
`||xi||_infinity^4`. Thus the claimed bound on the integrated fourth bridge-
scale derivative follows using only the grouped weighted jets and uniform
`W^(3,infinity)` bounds. The auxiliary even mollification and rough limit
passage remain as stated above.

This correction fixes the derivative-count justification; it does not remove
the separate need to verify the source approximants' uniform grouped-jet
bounds, compact support/localization, and the exact bridge chart extension.

### Verification of the grouped jets for the source cutoff

The physical-side remainder approximants are explicit in
`weighted-remainder-cutoff.md` and `smooth-physical-cutoff-joint-path.md`.
For each of `b,u,w`, cut off only its weighted remainder `r` at scale `eta`,
then use the constructed C5 mollification of that remainder. This preserves
the physical cubic coefficient, gives uniform enlarged weighted bounds
through order five, and converges to the original profile in
`W^(3,infinity)` on the physical half-collar. The full-line bridge uses the
even fold. To justify classical differentiation, smooth this fold with an
even approximate identity at scale `kappa`; this auxiliary cubic smoothing is
removed in the limit and need not itself remain in the physical weighted
remainder class.

For the physical-side approximants before the auxiliary cubic smoothing,
near the seam,

    |u^(j)|+|w^(j)|+|b^(j)| <= C y^(3-j), 0<=j<=3,
    |u^(4)|+|w^(4)|+|b^(4)| <= C(1+|log y|),
    |X_u|+|X_w| <= C y^4.

For the auxiliary mollification `p_kappa=rho_kappa*|y|^3`, in the layer
`|y|<=2 kappa` one instead has
`|p_kappa^(j)|<=C kappa^(3-j)` for `j<=4`, and
`|X_{p_kappa}(y)|<=C kappa^4`. Outside that layer its fourth derivative
vanishes, while `|X_{p_kappa}(y)|<=C |y|^4` for `|y|>=2 kappa`. Thus the
auxiliary layer also satisfies

    |p_kappa^(4) X_{p_kappa}| <= C kappa^3,

uniformly. The remainder approximants retain the logarithmic fourth-jet
bounds independently of `eta`; these separate estimates cover the joint
`(eta,kappa)` family without falsely assigning a logarithmic fourth-jet
bound to the smoothed cubic.

Let `f_0=exp(-2b)`. It is uniformly positive; its derivatives through order
three are bounded, and its fourth derivative is logarithmically bounded for
the physical remainders. In the auxiliary cubic layer its fourth derivative
is `O(kappa^(-1))`, multiplied in the grouped jet below by
`X=O(kappa^4)`. From

    g_u=f_0 f_u=-f_0^2 u+f_0 f_0' X_u,
    j_uw=u' X_w,

and the exchanged formulas, Leibniz gives uniform `W^(3,infinity)` bounds
for `g_u,g_w,j_uw,j_wu`: the only potentially large fourth-jet products are
`f_0^(4) X_u`, `f_0^(4) X_w`, `u^(4) X_w`, and `w^(4) X_u`, all uniformly
bounded by the preceding weighted or auxiliary-layer estimates. The
localized `j` factors are compactly supported through the localized
direction derivative. The products `u,w,uw` also have uniform W3 bounds.

Using these groups, the exact path terms are

    W_u R_w = -2 A^(-3/2) <g_u><w>,
    W_w R_u = -2 A^(-3/2) <g_w><u>,
    W R_uw = A^(-1/2)[8<u><w>-4<uw>+2<j_uw+j_wu>].

Every term has a compactly supported direction factor with three integrable
derivatives. Four common bridge-scale derivatives distribute total spatial
order four among these factors and the shifted `f_0` factors produced by
differentiating `A^(-alpha)`. The shift-uniform transfer lemma moves any
fourth derivative onto the localized factor; all factors then require at
most three bounded derivatives. Its coefficients are bounded by
`||xi||_infinity^4`, giving the required integrated fourth-derivative bound.

For fixed `y!=0`, the physical cutoff approximants and auxiliary cubic
mollifications converge with their derivatives through order four to the
unsmoothed profiles. The grouped third derivatives have uniform bounds and
converge almost everywhere; after transfer, at most one factor has order
three. Local `H^3` convergence for the cubic fold and dominated convergence
for the weighted remainder therefore pass the integrated expressions to the
rough limit. The denominator `A_h` stays uniformly positive. This verifies
the source-cutoff and rough-limit passage for each fixed admitted radial
profile and compact localization. It does not assert uniformity over a
noncompact family lacking a common approximation modulus.

Finally choose the direction localization strictly inside the exact collar
chart and use its bounded positive extension for paths exiting the chart.
The recorded Gaussian collar-exit estimate makes that contribution
exponentially small in `1/t`, including the finite field jets. This completes
the source-cutoff and chart passage for the localized integrated scalar
`Q+t K_2+O(t^2)` expansion. The scalar coefficients still need matching to
the source subtraction; the full physical response remains open.

Concrete claim: the grouped-jet and rough-approximation hypotheses of the
localized integrated scalar expansion follow for each fixed admitted radial
profile and compact localization. Ordinary argument: use the explicit
weighted remainder cutoff, smooth the folded cubic with its separate
`O(kappa^(-1))` fourth-jet layer, bound the grouped products using
`X=O(y^4)`, transfer derivatives, and pass by dominated convergence. First
unsupported implication: identify the integrated scalar coefficients with
the prescribed source subtraction and combine the remaining physical
sectors under the common regulator. Numerical role: none.

Remaining to-do list: match the scalar coefficients to the source
subtraction; close the full-Weyl orbit, matrix, density/contact, boundary and
LLL terms and common-regulator endpoint; finish novelty/manuscript review and
GCP Lean certification.

### Explicit source-contact target for the next scalar coefficient

The source conversion note records

    I_t(u,w)=(1/(4 pi)){ integral 2uw dmu
       +t integral[-Ruw/6-grad(u).grad(w)/3] dmu}+O(t^2),
    2 Theta'(t) I_t(u,w),

where `dmu=dy/f_0` is the time-reduced measure and
`Theta'(t)=-C/t^2+O(1)`. The smooth periodic bridge calculation in
`bridge-contact-low-order.md` independently checks the displayed `I_t`
coefficients under its smooth periodic hypotheses; the source's rough curved
remainder and boundary passage remain separate assumptions. Multiplication
therefore gives the explicit source-contact coefficients

    2 Theta'(t) I_t
       = -C/(pi t^2) integral uw dmu
         +C/(2 pi t) integral[Ruw/6
                              +grad(u).grad(w)/3] dmu+O(1).       (4)

Consequently, in a ledger term `D_scalar-C_src`, the source-contact
`t^(-1)` contribution enters with the negative of the second coefficient in
(4). This fixes the comparison target for the integrated scalar coefficient
`C/(4 pi) integral(K_2+H_1)` after the conditional physical-half factor.
No equality between these expressions is claimed: the response bracket,
source observable map, physical normalization, and other sectors must first
be identified under the same regulator. The leading term of (4) is consistent
with the previously recorded flat and curved zeroth-jet contact check.

Concrete claim: equation (4) is the coefficient target implied by the
source's displayed `I_t` expansion and angular-tower asymptotic. Ordinary
argument: multiply the two expansions and retain powers `t^(-2)` and
`t^(-1)`. First unsupported implication: derive the integrated `K_2+H_1`
coefficient in matching source variables and prove its equality, with the
required sign and half factor, to the source-contact term inside the complete
P1 ledger. Numerical role: none.

Remaining to-do list: calculate `integral(K_2+H_1)` in source variables;
verify the rough curved source contact expansion and matching measure; combine
all remaining P1 sectors under the common regulator; finish novelty and GCP
certification.

### Flat tangent value of the integrated scalar next coefficient

The next coefficient can be evaluated exactly in the flat seed, which is a
useful check before attempting the curved source match. Set `f_0=1`, take
smooth compactly supported full-line directions `u,w`, and use
`f_u=-u`, `f_w=-w`. Then `B_h=0`, so `H_1=0`. The exact path formula reduces
to

    H_0=12 <u><w>-4<uw>+2<u'X_w+w'X_u>,

where every factor is evaluated at `y+sqrt(t)xi_s`. After integration in `y`,
the last two terms are translation invariant: their contributions are
`-4 integral uw +2 integral(u'X_w+w'X_u)` with no `t` coefficient. For the
first term, expand the two bridge averages using
`G(s,r)=E[xi_s xi_r]=2(min(s,r)-sr)` and integrate by parts in `y`. Its
coefficient of `t` is

    12 [ integral_0^1 integral_0^1
         (G(s,r)-(G(s,s)+G(r,r))/2) ds dr ] integral u'w'
       = -2 integral u'w',

since the two covariance integrals are `1/6` and `1/3`, respectively. Hence

    integral K_2 = -2 integral u'w',    integral H_1=0.

The doubled scalar heat coefficient at order `t^(-1)` is therefore
`-C/pi integral u'w'`; after the conditional physical-half factor it is
`-C/(2 pi) integral u'w'`. By contrast, the source's flat contact target
from Eq. (4) above is `+C/(6 pi) integral u'w'`. Thus the scalar next
coefficient is not equal to the source contact coefficient by itself. In the
ledger `D_scalar-C_src`, their conditional physical-half difference is
`-2C/(3 pi) integral u'w'`. This is a component diagnostic only; the orbit,
full-Weyl commutator, density, boundary and LLL terms are not included, and
no full-response coefficient is inferred from it.

Concrete claim: in the flat tangent seed, the integrated scalar path-Hessian
coefficient is exactly `-2 integral u'w'` and the explicit-exponential term
vanishes. Ordinary argument: insert `f_0=1` into the exact path formula, use
bridge covariance, and integrate by parts. First unsupported implication:
combine this scalar value with the complete source geometric and remaining
P1 sectors under the common regulator. Numerical role: none.

Remaining to-do list: derive the curved integrated coefficient; assemble all
sectors against the source subtraction; prove the common-regulator endpoint;
finish novelty/manuscript review and GCP Lean certification.

### Finite-dimensional formula for the curved path-Hessian coefficient

For smooth interior profiles, the exact `H_0` path expression is a function of
seven path averages. Put

    phi=(a,g_u,u,g_w,w,v,j),
    a=f^2,  g_u=f f_u,  g_w=f f_w,
    v=uw,   j=u'X_w+w'X_u,

and define the ordinary finite-dimensional function

    Phi(A,G,U,H,W,V,J)
      = -2 A^(-3/2)(G W+H U)
        + A^(-1/2)(8 U W-4 V+2 J).

Then `H_0(z)=Phi(<phi_1(z)>,...,<phi_7(z)>)`. The bridge-average moments
are

    E[<xi^2>]=1/3,       E[<xi>^2]=1/6.

Taylor expansion of this seven-variable function therefore gives the exact
local coefficient

    K_2(y) = (1/6) sum_i Phi_i(phi(y)) phi_i''(y)
             +(1/12) sum_(i,j) Phi_ij(phi(y)) phi_i'(y) phi_j'(y). (5)

All partial derivatives in (5) are ordinary derivatives of the displayed
explicit `Phi`, evaluated at
`phi(y)=(f^2, f f_u, u, f f_w, w, uw, u'X_w+w'X_u)`. The source jets are
`f_u=-u f+f'X_u` and `f_w=-w f+f'X_w`. Adding the already derived

    H_1 = f'^2 Q_(u,w)/(4f^2) + 2(w Z_u+u Z_w)/f,
    Z_u=f'f_u'/(2f^2)-f'^2 f_u/(2f^3),

and its `w` counterpart gives a fully explicit finite-dimensional formula
for `K_2+H_1` in the curved source variables. Its integrated rough value is
the one justified by the grouped-jet expansion and cutoff passage above.

Formula (5) follows by writing each bridge average as
`<phi_i(y+h xi)>=phi_i+h phi_i'<xi>+(h^2/2)phi_i''<xi^2>+...`, taking
expectations, and using the two displayed moments in the second-order Taylor
formula for `Phi`. It reproduces the flat value `integral K_2=-2 integral
u'w'` when `f=1`. The expression has not yet been reduced by integration by
parts to `Ruw/6+grad(u).grad(w)/3`; the flat diagnostic shows that an equality
with the source contact alone is already false. The curved formula is thus a
precise source-variable comparison target, not a full-response identity.

Concrete claim: equation (5) is the exact smooth-interior coefficient of the
path-Hessian term, and together with `H_1` expresses the next scalar
coefficient using source jets. Ordinary argument: finite-dimensional Taylor
expansion of the exact seven-average path functional. First unsupported
implication: evaluate its integrated curvature form and combine it with the
geometric orbit and remaining physical sectors against the source ledger.
Numerical role: none.

Remaining to-do list: reduce the curved formula and compare the full scalar
plus source-contact bracket; add the orbit, matrix, density/contact, boundary
and LLL terms under one regulator; complete novelty and GCP Lean certification.

For direct substitution in (5), let
`S=G W+H U` and `T=8 U W-4V+2J`. The nonzero first derivatives are

    Phi_A = 3 A^(-5/2) S - (1/2) A^(-3/2) T,
    Phi_G = -2 A^(-3/2) W,
    Phi_U = -2 A^(-3/2) H + 8 A^(-1/2) W,
    Phi_H = -2 A^(-3/2) U,
    Phi_W = -2 A^(-3/2) G + 8 A^(-1/2) U,
    Phi_V = -4 A^(-1/2),
    Phi_J = 2 A^(-1/2).

The nonzero second derivatives, with symmetry understood, are

    Phi_AA = -(15/2) A^(-7/2) S +(3/4) A^(-5/2) T,
    Phi_AG = 3 A^(-5/2) W,
    Phi_AU = 3 A^(-5/2) H -4 A^(-3/2) W,
    Phi_AH = 3 A^(-5/2) U,
    Phi_AW = 3 A^(-5/2) G -4 A^(-3/2) U,
    Phi_AV = 2 A^(-3/2),
    Phi_AJ = -A^(-3/2),
    Phi_GW = -2 A^(-3/2),
    Phi_HU = -2 A^(-3/2),
    Phi_UW = 8 A^(-1/2).

All other second partials vanish. Substitution of these derivatives and
`phi=(f^2,ff_u,u,ff_w,w,uw,j)` into (5) is now a finite algebraic
expression in the source field jets, with no implicit functional derivative
left. In particular, the flat result follows by setting `f=1`, `g_u=-u`,
`g_w=-w`, and using `X_u'=-u`, `X_w'=-w` after integration.

### Integrated Hessian coefficient after integration by parts

For compactly localized directions on the full-line fold, the integration by
parts in (5) gives a shorter curved formula. Since
`d(Phi_i(phi(y)))/dy=sum_j Phi_ij(phi) phi_j'`,

    integral Phi_i(phi) phi_i''
       = -integral sum_(i,j) Phi_ij(phi) phi_i' phi_j',

provided the localized boundary flux vanishes. It does here: every term in
the flux is paired with a cubic-vanishing direction factor at the seam and
with a compactly supported direction at the outer edge. Therefore

    integral K_2 = -(1/12) integral phi'^T D^2 Phi(phi) phi' dy.  (6)

This identity extends to the admitted rough profiles by the grouped-jet
approximation above. To make (6) directly usable, set
`A=f^2`, `G=g_u`, `U=u`, `H=g_w`, `W=w`, `V=uw`, `J=j`,
`S=GW+HU`, and `T=8UW-4V+2J`. Expanding with the derivative table gives

    phi'^T D^2 Phi(phi) phi'
      =[-(15/2)A^(-7/2)S +(3/4)A^(-5/2)T](A')^2
       +6A^(-5/2)A'W G'
       +2[3A^(-5/2)H-4A^(-3/2)W]A'U'
       +6A^(-5/2)A'U H'
       +2[3A^(-5/2)G-4A^(-3/2)U]A'W'
       +4A^(-3/2)A'V' -2A^(-3/2)A'J'
       -4A^(-3/2)G'W' -4A^(-3/2)H'U'
       +16A^(-1/2)U'W'.                                  (7)

Here `G=f f_u`, `H=f f_w`, and `J=u'X_w+w'X_u`; every term in (7) is
specified by the source profiles and their ordinary spatial derivatives.
The next scalar coefficient to compare is now

    C/(4 pi) integral[-(1/12) phi'^T D^2 Phi(phi) phi' + H_1]dy,

under the conditional physical-half normalization. Equation (7) is not yet
reduced to curvature invariants and is not the complete source ledger. The
flat substitution reduces (6) to `-2 integral u'w'`, as before.

Concrete claim: (6) and (7) give the integrated curved path-Hessian
coefficient with no second derivatives of the seven source averages left.
Ordinary argument: integrate (5) by parts, use the localized seam/outer
boundary vanishing, and substitute the explicit Hessian of `Phi`. First
unsupported implication: simplify this expression against the source contact
and geometric orbit coefficients and then include the remaining full-Weyl
sectors under one regulator. Numerical role: none.

Remaining to-do list: reduce (7)+`H_1` to the source curvature form; match
the complete orbit/contact/commutator/density/boundary/LLL ledger; close the
common-regulator endpoint and certify supported claims in Lean on GCP.

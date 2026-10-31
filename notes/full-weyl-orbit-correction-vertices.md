# Exact full-Weyl correction vertices relative to the orbit-only square

Status: ordinary fixed-mode operator identity on the common smooth core, under the multiplier and paired-domain hypotheses below. This isolates the extra vertices needed to compare full-Weyl and orbit-only responses. It is not a bound for their heat traces, an endpoint theorem, or a physical source identification.

## Setup

Let `D` be a Dirac-type first-order operator on the two-dimensional orbit factor, `G` a bounded chirality involution commuting with scalar multipliers, and `mu` a fixed real angular mass. Assume the paired mode domains allow the square identity from `full-weyl-angular-mode-correction.md`. For a real scalar field `b`, set

    m_b = exp(-b/2),       D_b = m_b D m_b,       M_b = m_b^2 = exp(-b).

The full-Weyl mode square and the comparison orbit-only square are

    Q_full,mu(b) = D_b* D_b + mu^2 M_b^2 + i mu G [D_b,M_b],
    Q_orbit,mu(b) = D_b* D_b + mu^2 I.

The latter freezes the angular mass while varying the orbit operator. Their difference is

    Delta_mu(b) = mu^2 (exp(-2b)-1) + i mu G [D_b,exp(-b)].      (1)

All identities below concern this difference; they do not assert that the two complete response traces are interchangeable.

## Exact finite-cut heat difference at arbitrary field

On a fixed compact smooth cut, assume the two mode squares have the same
composition domain and positive trace-class heat semigroups, as in the
common-domain hypotheses above. The correction is a bounded multiplication
operator for each fixed angular mass when `b` is in `W^(1,infinity)`:

    Delta_mu(b) = mu^2 (exp(-2b)-1)
                  - i mu exp(-2b) G c(db).                 (1a)

The product rule gives this form from
`[D_b,exp(-b)]=-exp(-2b)c(db)`. The bounded-perturbation Duhamel identity
therefore yields, for `t>0` and a fixed bounded smearing `F`,

    Tr(F (exp(-t Q_full,mu(b))-exp(-t Q_orbit,mu(b))))
      = - integral_0^t Tr(F exp(-(t-s)Q_full,mu(b))
                           Delta_mu(b) exp(-s Q_orbit,mu(b))) ds. (1b)

This is an exact finite-cut, positive-time identity for each fixed `mu`;
it keeps the same proper-time parameter in the two semigroups. At `b=0`,
`Delta_mu(0)=0`, and differentiating twice recovers the correction-vertex
Hessian decomposition (4), when the form derivatives and traces are
justified. Equation (1b) does not by itself justify summing over `mu`,
removing the spatial cutoff or the proper-time regulator, matching the
physical trace density/contact, or including the separate LLL source term.

## First and mixed second vertices at the seed

For real directions `u,w`, differentiate at `b=0` (equivalently, at `b=su+tw`, taking the indicated derivatives). On the common smooth core,

    (Delta_mu)'[u] = -2 mu^2 u - i mu G [D,u]
                    = -2 mu^2 u - i mu G c(du),                 (2)

and

    (Delta_mu)''[u,w] = 4 mu^2 u w + 2 i mu G [D,uw]
                       = 4 mu^2 u w + 2 i mu G c(d(uw)).         (3)

Here `[D,f]=c(df)` is the Dirac product rule. To see the commutator terms directly, write

    D_b = D + s A_u + t A_w + st A_uw + higher terms,
    A_u = -(uD+Du)/2,
    M_b = 1-su-tw+st uw + higher terms.

Since `Du=uD+c(du)` and scalar multiplication commutes with the Clifford
multipliers, the first Dirac jet can also be written
`A_u=-uD-c(du)/2`. Thus

    [A_u,w] = -u c(dw),       [A_w,u] = -w c(du).

The mixed coefficient of `[D_b,M_b]` is therefore

    -[A_u,w]-[A_w,u]+[D,uw] = 2[D,uw].

Indeed, the first two terms sum to `u c(dw)+w c(du)=[D,uw]` by the scalar
product rule, so the full expression is twice that commutator.

Equivalently, the exact product rule gives `[D_b,M_b]=-exp(-2b)c(db)`, whose first and mixed derivatives yield (2) and (3). The mixed derivative is the genuine `partial_s partial_t` vertex; no extra factor of two is implicit.

## Positive-time response decomposition

At the seed `Delta_mu(0)=0`, so both families have the same unvaried square `Q_0=D*D+mu^2`. Write `V_u=Q_orbit'[u]` and `W_uw=Q_orbit''[u,w]`. Differentiating the heat semigroup by Duhamel on a common invariant core gives the following exact Hessian difference for a fixed smearing `F` (assuming the traces and differentiations exist):

    Tr(F (exp(-t Q_full))''[u,w] - F (exp(-t Q_orbit))''[u,w])
      = - integral_0^t Tr(F e^{-(t-s)Q_0} Delta_mu''[u,w] e^{-sQ_0}) ds
        + integral_{0<=s2<=s1<=t} Tr(F e^{-(t-s1)Q_0}
            [Delta_u e^{-(s1-s2)Q_0} V_w
             + V_u e^{-(s1-s2)Q_0} Delta_w
             + Delta_u e^{-(s1-s2)Q_0} Delta_w]
             e^{-s2 Q_0}) ds2 ds1
        + integral_{0<=s2<=s1<=t} Tr(F e^{-(t-s1)Q_0}
            [Delta_w e^{-(s1-s2)Q_0} V_u
             + V_w e^{-(s1-s2)Q_0} Delta_u
             + Delta_w e^{-(s1-s2)Q_0} Delta_u]
             e^{-s2 Q_0}) ds2 ds1.                              (4)

Here `Delta_u=(Delta_mu)'[u]`, `Delta_w=(Delta_mu)'[w]`, and `Delta_mu''` is (3). The two ordered simplices arise from the two parameter orderings in the mixed derivative. In particular, the difference includes the `Delta_u`/`Delta_w` pair as well as the cross terms with the orbit vertices; omitting that pair would not give the Hessian difference. The formula holds for a fixed smearing only; variation of the physical density or insertion must be included separately. The fixed-product formulas in `flat-tangent-angular-mode.md` evaluate the complete response in a special flat model, but do not prove the curved uniform estimates required here.

## Scope and first remaining estimate

Equations (2)-(4) sharpen the first missing implication recorded in `parent-curved-heat-bridge-p1-crosswalk.md`: beyond the parent orbit-sector remainder, the full-Weyl correction contains a zeroth-order angular-mass vertex and a first-order gradient vertex, their mixed second vertex, their mutual ordered products, and cross terms with the orbit vertices. The purely angular part (the mixed angular vertex and the two ordered angular-angular products) already has an absolute tower majorant at each positive time on the fixed product seed; see [`angular-vertex-heat-majorant.md`](angular-vertex-heat-majorant.md), especially equations (2)-(4). Under its compact two-dimensional orbit heat bound, that estimate is only `O(t^(-2))` before subtraction. The remaining estimate for transfer of a `t^(3/2)` subtracted bound is the orbit-angular cross terms in (4), together with their curved localized subtraction and uniformity in the admitted physical family under the same regulator. Density/contact variations, boundary transgression, thermal images, and the separate LLL/anomaly block must also be matched. The fixed-seed angular majorant does not control these terms or the small-time finite part.

## Mode-uniform relative-form bounds for the correction vertices

There is a simple positive-time input available before estimating the
subtracted trace. Suppose, on a common smooth mode core, that

    q_(0,mu)[psi] = ||D psi||^2 + mu^2 ||psi||^2

is the seed orbit-square form, `||G||=1`, and Clifford multiplication obeys
`||c(dv)|| <= ||dv||_infinity`. For real smooth scalar directions, the
explicit correction vertices satisfy

    |<psi, Delta_mu'[u] psi>|
      <= (2||u||_infinity + ||du||_infinity/2)
         (q_(0,mu)[psi] + ||psi||^2),                       (5)

and

    |<psi, Delta_mu''[u,w] psi>|
      <= (4||uw||_infinity + ||d(uw)||_infinity)
         (q_(0,mu)[psi] + ||psi||^2).                       (6)

The constants are independent of the angular mass `mu`. For (5), apply
`|<psi,u psi>| <= ||u||_infinity ||psi||^2`, the Clifford bound, and
`|mu| <= (1+mu^2)/2`; then use
`q_(0,mu)+||psi||^2 >= (1+mu^2)||psi||^2`. For (6), use the same inequality
on `4 mu^2 uw` and `2 |mu| ||d(uw)||_infinity`. These are ordinary
relative-form estimates for the zeroth and mixed-second correction vertices,
not an angular trace estimate. The constants are finite when the displayed
direction norms are finite; their finiteness does not follow from the
original rough-field class without checking its multiplier hypotheses.

The first correction vertex also appears in the orbit-angular cross terms in
the Duhamel Hessian difference (4). The purely angular second-vertex and
angular-angular ordered contributions are already summed by
`angular-vertex-heat-majorant.md`; bounds (5)--(6) instead provide a
mode-uniform form input for estimating the still-open orbit-angular terms.
They do not prove the cross-term trace-ideal hypotheses, small-time
subtraction, or the physical density/contact/LLL and boundary-transgression
transfer. In particular they do not establish the required `t^(3/2)` curved
subtracted remainder.

## Exact orbit-angular cross term in the flat product tangent model

The cross terms can be isolated explicitly in the existing rank-two flat
model. Use `flat-tangent-angular-mode.md`'s `A(x)` and `I(x)`, with
`x=tk^2`, `z=t mu^2`, and `X=G gamma_y`. The first angular vertex is
`-2 mu^2 u-i mu X u'`; its mixed second vertex is
`4 mu^2 uw+2i mu X(uw)'`. The rank-two trace of `X` vanishes and
`X^2=-1`. Applying the mixed Duhamel formula gives the purely angular
contribution

    H_ang(t,k) = exp(-z)/pi
      [-2 mu^2 + 2 mu^4 t A(x) + (mu^2 x/2) A(x)].          (7)

Here `-2 mu^2/pi` is the mixed-second-vertex term; the other two terms are
the scalar and gradient-gradient ordered angular pairs. Mixed scalar-gradient
pairs vanish by `tr X=0`. The full-minus-orbit addition from
`flat-tangent-angular-mode.md`, Eq. (3), is

    H_full(t,k)-exp(-z) H_orbit(t,k)
      = 2 exp(-z)/pi [mu^2 I(x)+mu^4 t A(x)-mu^2 x A'(x)].  (8)

Since `I(x)=A(x)+x A(x)/4+x A'(x)`, subtracting (7) from (8) isolates
the sum of the two orbit-angular ordered terms:

    H_cross(t,k) = 2 mu^2 exp(-z)/pi [1+A(x)].              (9)

This agrees at `k=0` with the constant-Weyl benchmark: the cross contribution
is `4 mu^2 exp(-z)/pi` in the declared rank-two density convention. Summing
(9) over the massive sphere tower at each positive time is exact:

    H_cross,tower(t,k) = 2[-Theta'(t)]/pi [1+A(tk^2)].     (10)

Thus the fixed-product orbit-angular cross term is now explicit and absolutely
summable for every `t>0`; the mode-uniform estimate (3) in
`angular-vertex-heat-majorant.md` supplies a separate crude absolute bound.
Equation (10) is not the curved physical response and contains no density,
contact, LLL, boundary-transgression, or source-conversion contribution.

For the conditional physical-half normalization used in
`full-weyl-angular-seam-coefficients.md`, put `alpha0=2b^2`. The leading
small-time cross multiplier is `alpha0/(pi t^2) [1+A(tk^2)]`. Under that
note's cubic/log Fourier-tail assumptions, the cubic local subtraction is
`2-x/6+x^2/60-x^3/840`; the remainder is `A-A3`, whose Mellin integral is
`J_A=pi^(3/2)/12288`. Therefore the isolated orbit-angular cross contribution
to the conditional half-normalized flat diagnostic is

    +3 b^2/(128 sqrt(pi)) c_u c_w t^(3/2)
      +2 b^2/(105 pi) (c_u d_w+d_u c_w) t^2 log(t)
      +o(t^2 |log(t)|).                                    (11)

The logarithmic coefficient uses the `x^4/15120` coefficient of `A`; the
subleading terms in `-Theta'` contribute at smaller order. This is a
fixed-product tangent decomposition under the cited tail and half-folding
hypotheses, not a physical coefficient or a curved-family estimate.

As an internal coefficient check, the full-minus-orbit leading tower kernel
is `3A+xA/4`, whose `x^4` coefficient is `-1/10080` and whose conditional
half-normalized logarithmic seam difference is `-b^2/(35 pi) C`. The
pure-angular remainder is `2A-1+xA/4`; its `x^4` coefficient is
`-1/6048`, giving `-b^2/(21 pi) C`. Adding the cross coefficient in (11),
`+2b^2/(105 pi) C`, recovers `-b^2/(35 pi) C`. This identifies why the old
claimed equality of the full-Weyl and orbit-only logarithmic coefficients was
inconsistent with the explicit fixed-mode decomposition; see the corrected
Taylor audit in `full-weyl-angular-seam-coefficients.md`.

No numerical result or Lean claim is made. These ordinary identities are candidates for a narrowly scoped GCP formalization only after the operator and domain representation is fixed; formalizing them would not certify the heat-kernel bound.

Remaining to-do list: extend the fixed-flat orbit-angular cross kernel to the curved localized family with its common-regulator subtraction and physical source/contact terms; finish novelty and manuscript; certify supported claims on GCP.

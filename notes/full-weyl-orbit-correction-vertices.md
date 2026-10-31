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

No numerical result or Lean claim is made. These ordinary identities are candidates for a narrowly scoped GCP formalization only after the operator and domain representation is fixed; formalizing them would not certify the heat-kernel bound.

Remaining to-do list: bound the orbit-angular Duhamel cross terms after local subtraction, prove curved source matching under the common regulator, finish novelty and manuscript, and certify supported claims on GCP.

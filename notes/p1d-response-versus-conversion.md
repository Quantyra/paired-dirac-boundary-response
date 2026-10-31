# P1-D heat remainder is distinct from the endpoint conversion

The frozen [rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md), section 5, describes `r_curved` verbally as the localized exact weak mixed response on the original paired square after extracting the localized tangent contribution with its cutoff terms. It states the sufficient bound `|r_curved(t)|<=A(K)||u||_A||w||_A t^(3/2)`, to be integrated against `dt/t^2`, and says density/second vertices, contacts, angular weights, thermal images and local restorations stay in the physical action.

### Operational-definition gap in the frozen target

The pinned source gives no explicit formula for the localized tangent operator,
the cutoff maps and their transition terms, or the exact allocation of density,
contact, LLL and finite local-restoration terms in `r_curved`. A search of
that frozen source finds `r_curved` only in the target paragraph; its tangent
model is calculated separately in Section 4. This is not evidence that the
intended subtraction is inconsistent, but it means the proposed estimate is
not yet a fully operational theorem statement. Before proving a kernel bound,
freeze one common Hilbert space and regulator, the physical and tangent
families, the localization maps, the complete subtracted integrand, and its
normalization. The identities below compare declared positive-time
diagnostics but do not supply that missing definition.
The [candidate operational-definition contract](p1d-operational-definition-proposal.md)
spells out distinct orbit-only and full-Weyl tangent choices and the remaining
source/action inputs; it is a proposal pending confirmation, not an adopted
definition.

By contrast, [the conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md), equations (2)–(3), defines J_e as the endpoint difference between two regulated actions. Its second variation includes a geometric heat variation and 2 Theta'(e) I_e. That endpoint is not itself the r_curved integrand specified above. A formula relating the two, including all subtractions, measure factors and endpoint terms, would need to be derived before their power bounds can be compared.

Accordingly, the O(e) result in [the flat conversion diagnostic](flat-conversion-leading-remainder.md) is a result for its stated endpoint observable and exact-angular-factor subtraction. It neither disproves nor demonstrates the sharpness of P1-D. In the flat seed the source's r_curved subtracts the localized tangent contribution, so that subtraction must be accounted for before using any flat response as a test. The earlier [power audit](curved-contact-power-audit.md) conflated the two observables by describing the P1-D target as the complete conversion remainder; its componentwise endpoint calculation remains useful only within the explicit conversion scope.

This correction does not establish either the endpoint identity for the physical domain or the missing curved heat estimate. The next mathematical obligation is to write the exact mixed response and localized tangent subtraction on the same fixed Hilbert space and regulator, including all vertices and cutoff terms, then estimate their difference. Do not transfer an endpoint power or a flat coefficient to that difference without such an identity.

## Exact fixed-cut identity for the heat Hessian

There is an exact positive-time identity between the full-Weyl and
fixed-angular-mass orbit heat Hessians on the common finite-cut mode form
domain. For each nonzero angular mass `mu`, let `H_FW,mu(t)` and
`H_orb,mu(t)` be the mixed parameter derivatives at `b=0` of the respective
heat traces. Assume the families have the same unvaried square
`Q_0=D^*D+mu^2`, their quadratic forms are twice differentiable on the
common first-order form domain, and the Duhamel differentiations and trace
ideals in equation (4) of the cited note are justified at fixed `t>0`.
Then

    H_FW,mu(t) = H_orb,mu(t) + D_mu(t),

where `D_mu(t)` is exactly the right-hand side of equation (4) in
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md):
the mixed correction vertex, both ordered orbit/correction cross terms, and
both ordered correction/correction terms. The formula includes the full
`mu^2` and commutator vertices. It is not merely a first-vertex insertion.

Choose flat tangent subtraction terms `T_FW,mu(t)` and `T_orb,mu(t)` for
those same two heat families, with the same cut, trace density and Fourier
normalization, and put

    r_FW,mu(t)=H_FW,mu(t)-T_FW,mu(t),
    r_orb,mu(t)=H_orb,mu(t)-T_orb,mu(t),
    delta_T_mu(t)=T_FW,mu(t)-T_orb,mu(t).

Subtraction of the heat-Hessian identity gives the exact algebraic relation

    r_FW,mu(t)=r_orb,mu(t)+D_mu(t)-delta_T_mu(t).          (3)

For a fixed finite cut and `epsilon<=t<=T`, the product-mode form and
holomorphy argument in
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md)
permits summing this identity over the massive tower, provided the chosen
localized smearing is fixed and the mode-uniform trace bounds there hold.
The LLL remains a separate term. Equation (3) is a same-regulator identity
for heat Hessians; it does not exchange the proper-time endpoint, spatial
cut, or physical source limit.

The source's `r_curved` is not yet identified with `r_orb` in (3). The
frozen conversion formula includes `2 Theta'(t) I_t` in addition to its
geometric response, while the full-Weyl heat Hessian contains the `D_mu`
terms. Their flat local subtractions also differ as shown above. To use
equation (3) for P1-D, one must still show that the source's localized
tangent subtraction equals the selected orbit tangent plus the appropriate
`delta_T`, and account for the source contact, physical density, boundary
transgression, LLL and local restorations on that same Hilbert space and
regulator. No such source-level identity follows from Duhamel alone.

## Flat local subtraction audit

The available flat formulas confirm that the full-Weyl tangent subtraction
and the source geometric-plus-contact conversion are distinct. For the
massive `n>=1` tower, the full-plane rank-two full-Weyl tangent Hessian has
the local part

    16 b0^2/(pi t^2) U0
      + 2 C0/(pi t) U0 - b0^2/(pi t) U1,

where `Uj=integral u^(j) w^(j)`, `C0=-q-1/3`, and `b0` is the angular
scale. Applying the conditional physical-half factor `1/2` gives

    8 b0^2/(pi t^2) U0
      + C0/(pi t) U0 - b0^2/(2 pi t) U1.                 (1)

These coefficients are the full-Weyl angular-weighted tangent expansion in
[`full-weyl-angular-local-subtraction.md`](full-weyl-angular-local-subtraction.md),
not a curved source subtraction. By comparison, the source's specified
flat endpoint-conversion bilinear has

    C0/(2 pi t) U0 + b0^2/(12 pi t) U1
      + 1/(2 pi)[-C0 U1/12 - b0^2 U2/60
                         + 2 C1 U0/b0^2] + O(t),         (2)

from [`flat-conversion-angular-local-terms.md`](flat-conversion-angular-local-terms.md),
where `C1=q^2/6-1/30`. The `t^-2 U0` term in (1) is absent in (2), and the
`t^-1` coefficients differ. The two formulas name different observables;
this is not evidence of a physical disagreement. The conversion contact
term, the full-Weyl angular/commutator vertices, LLL allocation, and action
restorations must be combined on one fixed Hilbert space and regulator
before a physical subtraction identity can be asserted.

### Formal difference of the two displayed flat diagnostics

Subtracting (2) from (1) coefficient by coefficient gives the unambiguous
algebraic diagnostic

    8 b0^2/(pi t^2) U0 + C0/(2 pi t) U0
      - 7 b0^2/(12 pi t) U1
      + C0/(24 pi) U1 + b0^2/(120 pi) U2
      - C1/(pi b0^2) U0 + O(t).                         (2a)

This is only the difference between the declared full-Weyl tangent Hessian
and the declared source endpoint-conversion bilinear. It is not a physical
identity for `H_FW-J_src''` on the curved paired realization and is not an
assignment of these terms to `delta_T`, an LLL block, or a local action
restoration. Any such assignment must be derived from the common Hilbert
space and regulator rather than inferred from (2a).

### Flat leading-coefficient ledger check

The flat leading-coefficient ledger can be resolved under the declared
conditional physical-half convention, using the differential smearing
identity rather than the withdrawn `h_2'` reduction. Write `C=2 b0^2` and
`U0=integral_R u w`. The full-Weyl tangent Hessian has leading coefficient
`4C/pi` by `full-weyl-angular-local-subtraction.md`. The source flat contact
formula gives `I_t=(1/(4pi))U0+O(t)`, hence
`C_src=-(C/(2pi))t^(-2)U0`. In the same per-exterior convention the
rank-two flat mixed orbit Hessian is `h_2=H_2/2=(1/(pi t))U0+O(t)`; from
`h_2=-2t F_j'` it follows that `F_j=D_v T_t(u)=1/(2pi t)U0+O(1)` at leading
order. Thus `G_src=(C/(2pi))t^(-2)U0`, while
`H_orb=(C/pi)t^(-2)U0`, and `H_orb-G_src=(C/(2pi))t^(-2)U0`. The source
geometric and contact terms cancel at this order. The independent
full-Weyl/orbit Duhamel split gives `D_flat=(3C/pi)t^(-2)U0`, so
`D_flat-C_src=(7C/(2pi))t^(-2)U0`. Adding the two ledger brackets gives
`(8C/(2pi))t^(-2)U0=(4C/pi)t^(-2)U0`, matching `H_FW-J_src''`.

This is a restricted flat consistency check under the stated common
normalization. It does not establish the curved source subtraction,
commutator/boundary/LLL allocation, or any common-regulator endpoint. The
older allocation `D_flat-C_src=4C/pi` with a vanishing orbit bracket used an
incorrect contact factor and is superseded.

Consequently, the bridge-hit estimate in
[`full-weyl-curved-angular-factor-defect.md`](full-weyl-curved-angular-factor-defect.md)
cannot yet be assigned to the source's `r_curved`: it bounds one model
component before the physical source subtraction is identified. A correct
comparison must subtract the full-Weyl tangent local terms when decomposing
that family, while separately retaining the source contact/conversion and
LLL terms according to the actual action definition.

## Finite-cut comparison ledger for the two Hessians

Fix `t>0`, the same finite cut, common product-mode form domain, trace
density, and smearing. Sum only over the massive `n>=1` tower, with the
positive-time trace and Duhamel interchanges justified as in
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md).
Write

    H_FW(t) = sum_n d_n H_FW,mu_n(t),
    H_orb(t) = sum_n d_n H_orb,mu_n(t),
    D(t) = sum_n d_n D_mu_n(t),

where `D_mu` is the complete correction from equation (4) of that note.
Write the source's finite-cut conversion identity as

    J_src''(t) = G_src(t) + C_src(t),
    G_src(t) = Theta(t)/2 [D_w T_t(u)+D_u T_t(w)],
    C_src(t) = 2 Theta'(t) I_t(u,w).

The two existing identities then give the exact ledger

    H_FW(t) - J_src''(t)
      = [H_orb(t) - G_src(t)] + [D(t) - C_src(t)].       (4)

Equation (4) is algebraic under the common-cut assumptions; it does not
assert that either bracket vanishes. In particular, the first bracket is
not known to vanish: `G_src` is the source geometric variation of the
smeared trace, whereas `H_orb` is the mixed orbit heat-trace Hessian. The
second bracket also has distinct ingredients: `D` contains mass and
commutator vertices, whereas `C_src` is the conversion contact. Any
cancellation between these brackets needs its own operator and trace
derivation.

The source's fixed-Hilbert-space smearing identity gives a differential
relation, not an algebraic expression for `G_src` in terms of `h_2'`. Let
`h_2(t)` be the mixed Hessian of the unweighted two-dimensional orbit heat
trace `Tr_bar(exp(-t L))`, before adding the angular masses, and set
`F_1(t)=D_w T_t(u)`, `F_2(t)=D_u T_t(w)`. The source identity is

    h_2(t) = -2t F_1'(t) = -2t F_2'(t).

Consequently, for any reference time `t_*>0` in the same differentiability
interval,

    F_j(t)=F_j(t_*)+(1/2) integral_t^t_* h_2(s)/s ds,  j=1,2. (4a)

The integration constants at `t_*` are part of the data. In particular,
the differential identity does **not** imply
`G_src=-Theta(t)/(2t) partial_t h_2(t)`; that earlier reduction was
unsupported and is withdrawn. The valid finite-cut ledger remains (4), with
`G_src=Theta(t)[F_1(t)+F_2(t)]/2` retained explicitly. The orbit family
still has `H_orb(t)=Theta(t)h_2(t)` when the common mode-domain and angular-sum
hypotheses hold. No small-time or endpoint claim follows from integrating
the differential identity without controlling its reference values and
integral.

### Source conversion finite part now available at the actual seed

A later tracked parent-source calculation, [commit
`fa84a1bf0e033825a7a76a7d03b48317bb9c5756`](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/fa84a1bf0e033825a7a76a7d03b48317bb9c5756/notes/current-variable-contact-conversion.md#L148-L205),
derives the common-cutoff removal for the source conversion's first two jets
at the actual paired seed and for its bounded admitted mass/log directions.
It gives the finite mixed conversion (its Eq. (9)) with the angular tower
represented by `Theta` and the thermal sum retained, and the corresponding
local conversion operator (Eq. (10)). This supplies the source-conversion
side of the ledger more strongly than the positive-time algebra (4) alone;
the calculation is an imported parent result, not independently re-proved
in this crosswalk.

In the flat product specialization, the finite term of the parent Eq. (9)
also matches the constant term of Eq. (2) above after converting its
physical-side integral to the even full-line convention. Let
`U_j^+=integral_(y>0) u^(j)w^(j)dy` in the parent note and
`U_j=integral_R u^(j)w^(j)dy=2 U_j^+` for the balanced even profiles here.
The parent angular notation has `C=b_0^2`, `H_0=C_0`, and
`H_1=C_1/b_0^2`. Setting `R=0` and `Delta=partial_y^2` in Eq. (9) gives

    C_1/(pi b_0^2) U_0 - C_0/(24 pi) U_1
                         - b_0^2/(120 pi) U_2,

which is exactly the `t^0` term of the flat source bilinear (2). This checks
the finite-conversion normalization for the massive tower in this flat
specialization. It does not match the divergent `t^-2` and `t^-1` terms,
the full-Weyl Hessian, or the source's physical `r_curved`.

The scope boundary remains material. The parent source explicitly leaves
the full variable-background strong-graph conversion and nonlinear-ball
admission open; its separately allocated LLL/local blocks must remain in the
same accounting. In P1 notation, this result evaluates `J_src''` at the
seed, but does not evaluate the other bracket terms in (4), prove a
cancellation with `H_FW`, identify the source's `r_curved` with
`r_src^conv`, or justify moving-cut transfer of the full response. Thus the
open source bridge is now the matched full-Weyl/orbit/contact/tangent ledger
and physical-sector transfer, not the source conversion finite part by
itself.

### Smooth interior leading coefficient of the orbit bracket

For smooth directions supported a positive distance from the finite-cut
boundary, the leading orbit bracket can be derived from the ordinary `a_0`
heat coefficient and the corrected differential identity. Assume the pinned
rank-two source physical-half trace, the smooth strongly elliptic finite-cut
domain, the common mode domain, and the same trace measure as above. The
two-dimensional Laplace-type heat expansion starts with
`(4 pi t)^(-1) integral sqrt(g_b) tr(I)`; see
[Vassilevich, Secs. 2.2 and 4.1](https://arxiv.org/abs/hep-th/0306138).
For a Weyl change `g_b=e^(2b)g`, the mixed volume jet is
`partial_u partial_w sqrt(g_b)|_0=4uw sqrt(g)`. Rank two and the source's
conditional physical-half factor therefore give

    h_2(t)= A(u,w)/t + O(1),
    A(u,w)=(1/pi) integral_R u w/f_0.

The integral is the full-line pairing of the reflected interior profiles;
the factor `1/2` relative to the full doubled trace is already included in
`A`. Integrating `F_j'=-h_2/(2t)` from a fixed positive reference time gives

    F_j(t)=A(u,w)/(2t)+O(|log t|),

where the reference-time value is included in the `O(1)` part. Using
`Theta(t)=C/t+O(1)`,

    H_orb(t)-G_src(t)
      = (C/(2pi)) t^(-2) integral_R u w/f_0
        + O(t^(-1) |log t|).                            (4b)

This gives the smooth-interior zeroth-jet coefficient under the declared
source trace normalization and explains the nonzero flat orbit bracket.
It does not cover directions reaching the seam, rough coefficients,
boundary heat terms, density variation outside this smooth local model, or
the moving-cut/common-regulator endpoint. The source coefficient and
reference-time integration remain in the exact ledger; no global `h_2'`
substitution is made.

### Conditional cancellation of the smooth boundary heat coefficient

There is a useful extension when directions reach a smooth finite-cut
boundary, provided the common-domain family has a differentiated heat trace
expansion and its shape/domain variations are already included in `h_2`.
For a smooth strongly elliptic two-dimensional Laplace-type problem with
smooth local boundary conditions, the ordinary heat expansion has powers
`t^(-1), t^(-1/2), t^0, ...`; see
[Vassilevich, Secs. 2.2 and 2.3](https://arxiv.org/abs/hep-th/0306138).
Assume the mixed Hessian inherits, after any fixed-domain identification,

    h_2(t)=A/t+B/t^(1/2)+O(1),

with `A` and `B` independent of `t`, and that both smeared derivatives
`F_j` obey the exact identity `F_j'=-h_2/(2t)` on the same domain. Then
integration from a fixed `t_*>0` gives

    F_j(t)=A/(2t)+B/t^(1/2)+O(|log t|),

where the reference-time value is retained in the bounded part. With
`Theta(t)=C/t+O(1)`,

    H_orb-G_src
      = (C A/2)t^(-2) + O(t^(-1)|log t|).

The entire `B t^(-3/2)` contribution cancels: it appears with coefficient
`C B` in both `Theta h_2` and `Theta(F_1+F_2)/2`. Thus a smooth boundary
heat coefficient does not alter the leading `t^(-2)` orbit-bracket term.
This is a conditional heat-expansion calculation, not a proof that the
source's rough/seam-reaching directions satisfy these hypotheses. It does
not control nonsmooth boundary data, a moving cut without a common-domain
identification, physical density or transgression terms, or the
common-regulator endpoint. A stronger differentiated remainder expansion
would be needed for a sharper error than the displayed logarithmic bound.

### Why this smooth expansion does not cover the admitted rough seam

The pinned rough-family assumptions are weaker than those used above. The
source's weighted bounds imply a uniform `C^(2,1)` bound for the reflected
coefficients but no uniform fourth-derivative bound; its leading logarithmic
jet can have an unbounded fourth derivative at the seam. Thus the classical
smooth-boundary heat expansion cannot be applied uniformly to the admitted
family merely by smooth approximation. The source's exact flat rough-seam
diagnostic instead has cubic-cubic `t^(5/2)` and cubic-log `t^3 log(t)`
terms after its specified local subtraction. These are integrable against
`dt/t^2`, but the diagnostic is for the tangent full-Weyl response, not
`h_2` or `H_orb-G_src`. Transferring those powers requires a localization
estimate for the exact rough family and common-domain variation. This is
the first unsupported implication here; the conditional smooth-boundary
coefficient cancellation does not fill it. See the frozen source
[`current-rough-paired-variation.md` at `f0eab590`](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md),
Secs. 3-5, for the admitted weighted class and the tangent diagnostic.

For local tangent subtractions `T_FW,T_src` at that same cut, set
`delta_T=T_FW-T_src`, and define

    r_FW=H_FW-T_FW,    r_src^conv=J_src''-T_src.

The superscript marks `r_src^conv` as the conversion-endpoint remainder;
it is not the frozen source's `r_curved`, whose exact weak response and
localized tangent subtraction still need to be matched. The corresponding
remainder ledger is

    r_FW(t) - r_src^conv(t)
      = [H_orb(t)-G_src(t)] + [D(t)-C_src(t)] - delta_T(t). (5)

The source's separate LLL block, physical boundary transgression, local
action restorations and prescribed normalizations are not included in
(4)--(5); they must be added on both sides before taking a physical
endpoint. These positive-time identities do not justify the small-time
limit, spatial-cut removal, or an interchange of those limits. Equations
(4)--(5) sharpen the finite-cut comparison target but do not close the
source-observable bridge.

### New necessary matching condition from the interior defect

The fixed-product interior calculation in
[`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md)
now gives, for a smooth interior cutoff, the endpoint-uniform odd-odd defect
component

    R_defect,int(t;z)
      = -(b_S^2/(6 pi)) h(z)^2 u'(z)w'(z) + O(t)

in the raw rank-two orbit normalization, after the massive tower is summed.
The coefficient follows from `-Theta'(t)~2b_S^2/t^2`; no orbit measure
integration, per-exterior physical-half factor or moving-cut transfer has
been applied. This component is distinct from the same-boundary word and
from the source contact `2 Theta'(t) I_t`.

The P1-D target is a remainder after its localized tangent subtraction and
cutoff terms, not the unsubtracted odd-odd word. Therefore, to use a
`t^(3/2)` remainder bound, the same-regulator ledger must show either that
this `t^0` interior defect coefficient is included in the specified tangent
subtraction or that it cancels against explicitly computed full-Weyl/source
vertices. If neither occurs, this component alone is too large to satisfy
P1-D's `t^(3/2)` target. This is a necessary condition inferred from the
component expansion, not a conclusion that P1-D fails: the other response
sectors and subtraction identity have not been assembled.

The frozen source fixes one precise part of the subtraction. Its Section 4
flat tangent multiplier is `H_t(k)=2 F(tk^2)/(pi t)`; the local terms through
the stated `x^3` order are removed before its cubic/cubic-log seam terms, and
the resulting tangent remainder begins at `t^(5/2)` / `t^3 log(t)`. That
flat tangent contains no curved frame coefficient `h`. Section 5 defines
`r_curved` as the exact weak curved response minus the localized tangent
contribution with its cutoff terms, but does not expand those cutoff terms
into the `h^2u'w'` coefficient. Therefore the current frozen source does not
identify the new interior term as already subtracted. The necessary next
step is an exact decomposition of those cutoff/local-restoration terms on
the same physical Hilbert space and regulator. This comparison uses the
immutable [rough paired-variation source at `f0eab590`](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md),
Sections 4--5; it remains a scope audit, not evidence that cancellation
fails.

The defect-only `h^2` condition above is refined by the same-boundary heat
coefficient in
[`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md).
For constant insertion jets, the rank-two interior coefficient
`a_1=R/6-R/4=(h^2-h')/6` contributes `+b_S^2 a_1 u'w'/pi` to the same-
boundary word after the tower sum. Adding the defect coefficient cancels
the `h^2` part and leaves `-b_S^2 h' u'w'/(6 pi)` in raw normalization.
Thus the complete odd-odd pair has a residual `h'` zero-jet term in this
fixed smooth interior calculation; the exact source cutoff/restoration
ledger must account for it. This refines the necessary match and does not
prove that the full response fails the `t^(3/2)` bound: derivative-insertion
terms, other sectors, and the source subtraction may alter the total.

Concrete claim: the fixed-interior defect creates the displayed raw
rank-two `t^0` coefficient, so P1-D requires its subtraction or a proved
cancellation. First unsupported implication: identify this component in
the source's exact weak-response/tangent ledger and prove the matching
physical normalization. Numerical role: none.

Remaining to-do list: derive the exact same-regulator identity between the
full-Weyl response, source conversion, contact and LLL; then prove the
uniform curved remainder, finish the physical-domain and novelty audits,
prepare the manuscript and certify supported claims in Lean on GCP.

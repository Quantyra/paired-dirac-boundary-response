# Paired reflection for the two-insertion contact trace

Status: conditional operator argument for the source's auxiliary even
collar, not a proof of the physical global bridge or a Lean certificate. It
extends [the flat folding argument](flat-paired-folding.md) to the curved
radial square and the two-insertion heat product used in
[the regulator conversion](tangent-regulator-normalization.md).

## Claim

On a reflected compact cylinder, take the source's half-density radial
square

    L=−∂_y²−f(y)²∂_τ²−Γ f'(y)∂_τ,   Γ=γ_yγ_τ,

with real positive even f, a fixed smooth thermal circle and constant
Clifford matrices. Let χ=tau₃γ_y and U=χR, where R reflects y. Assume the
closed quadratic-form realization, scalar even bounded insertions u,v,
and the compatible first-order folded boundary domain described in
[the source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-curved-paired-heat-bridge.md),
sections 2–3. Assume the full heat operator is trace class for positive
time and the half realization is unitarily identified with the U-even
restriction, including all fixed boundary components of this compact model.
Then, for 0≤s≤t and t>0,

    Tr_half[u e^(−(t−s)L) v e^(−sL)]
       = (1/2) Tr_full[u e^(−(t−s)L) v e^(−sL)].       (1)

Both traces use the same fiber rank and thermal normalization. Integrating
s from 0 to t preserves the equality. This is the actual two-insertion
product, not a statement inferred from the diagonal one-insertion kernel.

## Proof

Reflection changes the sign of f' while χ anticommutes with Γ, so U
commutes with the displayed bulk expression. Γ commutes with that
expression because its remaining coefficients are scalar. On the assumed
closed form domains these symmetries extend to the self-adjoint realization
and its heat semigroup. The algebra also gives UΓ=−ΓU. Even scalar u,v
commute with both symmetries, so the product
S_s=u e^(−(t−s)L) v e^(−sL) commutes with U and Γ.

S_s is trace class uniformly in s∈[0,t]. At least one heat time is at
least t/2; place that trace-class heat factor at the appropriate side and
use boundedness of the other factors. Thus

    ||S_s||₁ ≤ ||u||∞ ||v||∞ Tr(e^(−tL/2)).

The endpoints are included, and the bound justifies integrating the trace.
Conjugating the trace-class operator U S_s by the fixed unitary Γ changes
its sign, while preserving its trace; hence Tr(U S_s)=0. With
P_+=(1+U)/2, the assumed unitary domain identification yields
Tr_half(S_s)=Tr_full(P_+S_s)=Tr_full(S_s)/2, proving (1).

The fixed fiber dimension in (1) matters. The source's rank-two orbit and
per-exterior convention, including both nonzero sphere signs in d_n, must be
matched as in [the fiber audit](flat-orbit-fiber-normalization.md); (1)
does not itself divide the angular multiplicity or the two-copy action.

## Limits

The compact reflected cylinder is an auxiliary model. If it introduces a
second fixed boundary, (1) includes that boundary as well; it does not by
itself prove that its contribution is negligible in the true collar. The
physical bolt, finite-cut/global bundle, thermal image sum, local
parametrix error and rough-limit form-domain identification must still be
verified. Formula (1) gives the operator-level half/full relation for a
curved coefficient once these hypotheses hold; it does not derive the
Brownian formula or prove the common-regulator limit. No numerical test
substitutes for the trace and domain argument.

Remaining to-do list: identify the actual physical domain and local bridge,
control the auxiliary-boundary and thermal defects, close the regulator
limit, complete prior-art review, and certify supported results on GCP.

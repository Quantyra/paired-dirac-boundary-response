# Flat orbit-fiber trace normalization audit

Status: ordinary finite-dimensional fiber and flat-folding audit, subject
to independent review and not Lean-certified. It identifies a normalization
that must be resolved before transferring the conditional tangent coefficient
to the actual paired trace. It does not identify a curved heat trace or claim
an error in the historical source.

## Concrete comparison

Use the [pinned paired-phase representation](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md)
for the orbit fiber, suppressing the independently counted sphere factor:

    gamma_n = 1 ⊗ sigma_1,
    gamma_tau = −tau_3 ⊗ sigma_3,
    chi = tau_3 ⊗ sigma_1.

This orbit representation has rank four. The
[flat multiplier calculation](flat-tangent-multiplier.md) instead uses an
irreducible rank-two Clifford trace, explicitly tr(gamma_i gamma_j)=2 delta_ij.
Let H_2 denote its full-plane mixed heat-trace multiplier, before any
half-domain or action normalization. For the same scalar even profiles and
matched trace-class operations, the following multiplicities hold:

| Trace object | Multiplier in terms of H_2 |
| --- | --- |
| Full line, one rank-two orbit sector | H_2 |
| Full line, both rank-four orbit sectors | 2 H_2 |
| Paired half-line, full rank-four orbit fiber | H_2 |
| One half of the paired half-line trace | H_2/2 |

The first row is the convention used to derive H_2=2F(tk²)/(pi t).
The third row uses the half-trace identity at the same fiber rank. Thus
H_2/2 is not identified with the unnormalized rank-four paired half-trace
by folding alone. It would follow from an additional factor one half, such
as a precisely defined average over the two orbit sectors or an action
normalization, provided that factor is applied to the same observable.

## Sector calculation

The operator tau_3 commutes with the flat orbit expression and every common
scalar multiplier. In its eigenvalue s=±1, the Clifford pair is

    gamma_n,s = sigma_1,    gamma_tau,s = −s sigma_3.

Conjugation by sigma_1 identifies the two full-line Dirac expressions:
it fixes sigma_1 and sends sigma_3 to −sigma_3. It also commutes with
each scalar E, so their squares and full-line heat variations have equal
traces under the stated trace and domain assumptions. Therefore the full
rank-four trace is twice the rank-two trace. The two sector boundary
projectors differ, but each has the reflection/Clifford symmetry in the
[folding argument](flat-paired-folding.md); equivalently apply that argument
to the whole rank-four fiber. The paired half-trace is half of the full
rank-four trace. This gives the table without assuming a fixed square domain.

The sphere-spin factor and angular degeneracies have not been included in
these orbit counts. They must be accounted for exactly once when matching
the actual four-dimensional mode decomposition; their omission here is not
a further factor of one half.

## First unsupported implication

The historical tangent note says the balanced folded trace contributes one
half of a full-line trace. The present calculation shows that the statement
must specify whether that full-line trace already includes both tau sectors.
The separate [paired-phase source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md)
writes the modulus action as −(1/2) log det(L_+), and derives an average
of the two partner-square variations. That action factor and partner
average are not automatically a normalization of an unweighted heat
trace K(t): the observable, sector multiplicities, partner equality,
zero modes and angular degeneracies must be traced in the same convention.

Consequently the coefficients quoted with H_2/2 remain conditional. If the
target is the unweighted full paired orbit heat trace under the assumptions
above, the multiplier is H_2 and those coefficients double. If the intended
observable is normalized by one half, the earlier values may be consistent.
No numerical calculation or physical admission conclusion is needed here.


## Source convention: per-exterior orbit trace

The pinned [stationary massive boundary-layer note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md)
states that its formulas are per exterior, that d_n=2(q+2n) includes
both nonzero signs of the sphere Dirac eigenvalue, and that the remaining
orbit spinor has rank two. It states that the folded mouth space duplicates
those degrees of freedom and is divided by two for the per-exterior
normalization. The [curved TT note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-curved-quantum-tt.md)
likewise describes a physical-half functional obtained from the evenly
varied double and says that its orbit formulas use rank two with both sphere
signs already in d_n.

Under the flat-domain and trace-class assumptions of the folding calculation,
this supplies a concrete convention compatible with the conditional H_2/2:

    unnormalized paired half-trace = H_2,
    per-exterior paired half-trace = (1/2) H_2.

Equivalently, the per-exterior quantity is one quarter of the full-line
rank-four trace, or one half of the full-line rank-two trace. The two
one-half operations have distinct roles in that comparison: the spatial
folding selects one reflection sector, and the per-exterior normalization
divides the two-copy trace. This is a bookkeeping statement for that
observable, not an additional halving of the already normalized orbit
formulas. In particular, d_n must not be divided again to remove its
sphere-eigenvalue signs.

The same source states a pointwise diagonal identity without an extra
one-half. This is compatible with the integrated half-line identity:
the image trace vanishes pointwise, while integrating an even double over
both sides doubles the integral. The pointwise and integrated statements
therefore must not be interchanged without the spatial integration.

This source tracing resolves the algebraic factor for the declared
per-exterior flat orbit convention, conditional on the folding and
trace-class hypotheses. It does not independently prove that the physical
rough common-regulator functional, its determinant normalization, contact
terms and all angular limits coincide with this flat model. The historical
note does not explicitly label the rank of every K(t) in its tangent
formula, so its final observable-to-model identification remains an audit
item rather than a silently assumed equality.
Remaining to-do list: identify the historical tangent K(t) with the stated per-exterior observable,
counting and zero-mode conventions to one physical observable; reconcile
the tangent coefficients in that convention; complete the physical domain,
response and prior-art audit; and certify supported statements in Lean.
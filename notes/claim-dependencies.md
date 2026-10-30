# Paper 1 claim and dependency ledger

Status: working extraction for S001.1, not a completed proof audit, research
decision, manuscript, or Lean certificate. The pinned historical source is
[rough paired variations at f0eab590](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).
The normalization and theorem claims below do not include a wormhole
existence or stability assertion.

## Common geometric input

The recorded seed is a paired finite-cut Euclidean exterior with regular
thermal disk bolt, pulled-back spin and monopole bundle identifications,
fixed clock, and zero constant source angle; see the pinned
[paired phase note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md),
sections 1–2. The intended first-order domains are H¹ sections with
Pi_- trace ψ=0 for D and Pi_+ trace φ=0 for D*, with
chi=tau_3 gamma_n and Pi_±=(1±chi)/2. The positive square is D*D on its
composition domain. Finite-cut compactness and the smooth-bolt statement are
source setup assumptions, not independently reconstructed physical geometry.
The global magnetic pullback and spin map, projector compatibility and
closed-domain realization remain application-specific checks. An explicit
[collar transport test](finite-cut-boundary-transport.md) shows that the
infinity projector does not generally remain the same local projector at
a finite cut; physical matching must be proved or assumed. See
[magnetic matching](global-magnetic-partner-matching.md) and the
[elliptic bridge](finite-cut-elliptic-domain-bridge.md).

The collar has physical-side proper distance y, b=c_b y³+r_b, |c_b|≤K,
and |r_b^(j)|≤K j!100^j y^(4−j)(1+log(1/y)) through j=5 for
0<y≤0.1; directions obey analogous bounds. A fixed finite log power
can be treated separately. The source also assumes regular interior and disk
charts. A family statement requires uniform atlas, ellipticity and field
bounds; a collar estimate alone does not provide them.

## P1-A: first-order domains, adjoint and square

**Target.** On the fixed seed L² Hilbert space, for a real identical-copy
W^{1,∞} multiplier b, E=e^(−b/2), prove that D_b=EDE has the same
first-order domain and D_b*=ED*E on the complementary domain. Establish
closedness and the graph comparisons with B=||b||∞, G=||db||∞:

    ||D_b ψ||≤e^B(||Dψ||+G||ψ||/2),
    ||Dψ||≤e^B||D_bψ||+G||ψ||/2.

The actual square is D_b*D_b. If additionally b is W^{2,∞} and has zero
boundary normal derivative, the conditional
[square-domain criterion](square-domain-boundary-criterion.md) identifies
its domain with that of D*D. This extra conclusion is not asserted for the
whole W^{1,∞} class.

**Dependencies and status.** The ordinary conditional multiplier argument is
[here](paired-multiplier-domains.md); its trace and H¹-domain inputs are not
proved from the physical geometry. The collar supplies the normal jet and
bounded normal second derivative; global W^{2,∞} requires the stated atlas.
The abstract projected-trace/congruence and natural-square result has a GCP
Lean check described in [the Lean campaign](lean-campaign.md), conditional
on abstract trace/domain hypotheses. This does not certify those geometric
hypotheses or the stronger equal-square-domain criterion.

## P1-B: resolvent variation

**Target.** If additionally a bounded unitary involution J obeys
D*=−JDJ as a closed-operator identity and commutes with E, let Q_b=JD_b.
For M>0, L_b=−Q_b² and the actual square resolvent factors through
(M±Q_b)⁻¹. For the recorded coefficient ball B≤0.001, the source proposes
first and second resolvent bounds after division by M as recorded in
[the constants audit](resolvent-variation-constants.md). Input directions
are measured in L∞ for the bounded holomorphic continuation; actual
unbounded perturbed realizations additionally need multiplier-domain
preservation.

**Dependencies and status.** The ordinary factorization and domain ordering
are in [paired-square-resolvent](paired-square-resolvent.md). The parallel
J and physical pulled-back bundle matching remain hypotheses. Fixed-input
operator bounds do not justify an angular trace sum or a family-uniform
curved determinant. No Lean certification of the complete factorization and
variation bounds is claimed.

## P1-C: tangent response

**Target.** In the rank-two flat orbit model with real even localized normal
directions and Fourier measure dk/(2pi), the conditional per-exterior
physical-half mixed geometric heat multiplier is F(tk²)/(pi t), with

    F(x)=1/2+(1/2)∫₀¹(1+a x)e^(−a x)dα,  a=α(1−α).

For the localized cubic and logarithmic jets, the proposed boundary terms are
−15 c_u c_w t^(5/2)/(1024 sqrt(pi)) and
−(c_u d_w+d_u c_w)t³ log(t)/(70pi), subject to the precise hypotheses in
[the coefficient calculation](flat-boundary-coefficients.md). The source
conversion also includes 2 Theta'(t) I_t, with the angular tower and local
counterterms retained; see [the regulator audit](tangent-regulator-normalization.md)
and [the flat contact argument](flat-product-contact.md).

**Dependencies and status.** An ordinary full-plane multiplier derivation and
all-frequency remainder calculations exist; the physical folding, trace
normalization and actual curved-to-tangent identification remain conditional.
The closest scalar derivative-jump comparison has an unresolved source
normalization discrepancy and cannot alone establish novelty. The positive-time
compact result in [paired trace derivatives](paired-positive-time-trace-derivatives.md)
does not justify the short-time limit or the common regulator. The tangent
response has not been Lean-certified.

## P1-D: proposed curved trace extension

**Target.** For the fully specified paired curved operator, common regulator,
complete thermal/angular sectors and subtracted mixed response, establish the
source's sufficient estimate |r_curved(g;u,w;t)|≤A(K)||u||_A||w||_A t^(3/2)
for 0<t≤0.001, uniformly over the declared rough family and physical-side
regulators, plus the required positive-time convergence and continuity.
A(K) is unknown. This is a proposed extension, not a proved paper theorem.

**First unsupported implication.** The fixed-domain or norm-resolvent
arguments and the flat all-frequency calculation do not provide this uniform
subtracted curved trace bound, nor do they justify the regulator interchanges.
The first proof obligation is an actual mixed-boundary kernel estimate with
all geometric, density and contact vertices and a stated uniform atlas.
The full signed quantum response G_t is not a prerequisite for the narrower
operator/tangent package, but neither package proves P1-D.

## Numerical and decision roles

The rational/whole-frequency and smoothing checks support specific displayed
constants or bounds; none replaces the operator, trace or domain argument.
Lean checks currently cover only explicit abstract operator consequences and
must run on GCP. Before a manuscript claim or research disposition, complete
the physical hypothesis audit and closest prior-art comparison, including the
scalar normalization question. No publication or novelty verdict follows
from this ledger.

Remaining to-do list: disposition every P1-A through P1-D dependency, decide
the supported paper scope against prior art, complete the proofs and GCP Lean
certification, and prepare the manuscript if the research decision supports it.

# Mixed-boundary H5 regularity: a literature bridge and derivative gap

This identifies an applicable uniform mixed-system regularity theorem for
the finite-cut heat diagonal route. It proves a strengthened-hypothesis
version of the local H5 input, not the H5 assertion for the recorded C5
family, physical source matching, or a Lean certificate.

Grosse and Nistor, [Uniform Shapiro-Lopatinski conditions and boundary value
problems on manifolds with bounded geometry](https://arxiv.org/html/1703.07228),
Corollary 7.6, give uniform H^(ell+1) local regularity on smaller half-charts
for a bounded family of mixed Dirichlet/Robin systems. Their hypotheses
include uniform strong Legendre coercivity, a bounded coefficient family in
their D^(ell+1,0) class, and Q+Q* of order zero for the Robin boundary
operator. Their Notation 4.10 defines the coefficient class using
W^(ell+1,infinity) bounds on all displayed differential- and boundary-operator
coefficients. The estimate is a boundary regularity result; it is not a
heat-kernel or trace theorem.

For the square L_(delta,e)=D_(delta,e)*D_(delta,e) in
`physical-finite-cut-uniform-heat-diagonal.md`, assume the following inputs
uniformly in cut, field approximation and chart:

1. Fixed-radius nested physical half-charts and uniformly controlled unitary
   frames make the Dirichlet and Robin projector subbundles constant, with
   all transition and metric/connection coefficients controlled through
   the required order.
2. In those frames the actual composition-domain boundary condition is
   exactly mixed Dirichlet/Robin, with zero-order Robin Q; the divergence-form
   principal coefficient is uniformly strongly coercive. The scalar
   principal square E^4 |xi|^2 and the complementing calculation in
   `finite-cut-mixed-complementing-symbol.md` support the principal part,
   but do not by themselves establish this complete boundary identification.
3. Every coefficient of the resulting differential and boundary operators
   belongs to a uniformly bounded W^(5,infinity) family on the larger chart.
   Uniform smooth physical-chart derivatives of b_e through order seven,
   together with sufficient smooth metric, gauge and frame bounds, are one
   conservative sufficient way to obtain this: expansion of D_b*D_b uses
   derivatives of b through order two, and five further coefficient
   derivatives use up to order seven. The precise invariant regularity may
   require fewer derivatives; this count is a sufficient condition only.

Then Corollary 7.6 with ell=4 supplies the common local H5 regularity
constant on the smaller chart, including for weak solutions whose data have
the required regularity. The zero-order Robin Q has Q+Q* of order zero.
For homogeneous composition boundary data the boundary norms vanish. After
including the nested cutoffs and their commutators, the standard spectral
bounds on powers of L produce the fixed-positive-time local heat smoothing
needed by the cited heat-diagonal route. This is an implication under the
three listed inputs, not an independent verification of the physical domains
or a uniform short-time subtraction estimate.

The recorded weighted source bounds only derivatives through order five in
physical charts, and its interior approximants are only assumed uniformly C5
(`physical-rough-family-heat-diagonal.md`). That does not establish item 3
for the zero-order coefficient of the expanded square: a generic fifth
coefficient derivative can involve a seventh derivative of b. Consequently
Corollary 7.6 cannot be invoked directly at ell=4 from that C5 input alone.
This is a gap in that proposed citation path, not a proof that uniform H5
regularity fails. It may be closed by a theorem with differentiated principal,
first- and zero-order hypotheses matched to C5, by a different argument for
the heat diagonal, or by proving compatible higher-order approximant bounds
without changing the admitted field class. Each option needs its own proof.
The H3-only alternative in `physical-contact-diagonal-h3-suffices.md` should
also be compared with its actual trace and derivative needs.

No numerical or Lean verification is claimed. The imported theorem must not
be used to dispense with checking the global bundle, projector, cut-uniform
charts, physical source and common-regulator hypotheses.

Remaining to-do list: close the C5-to-H5 or alternative heat-diagonal gap,
verify physical source and boundary matching, prove the full response and
regulator, complete the prior-art decision and manuscript, and certify
supported claims in Lean on GCP.
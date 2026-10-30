# Local-cut limit to the compactified zero-angle infinity problem

This applies the moving-domain comparison to a specified compactified
zero-angle Euclidean realization. It gives a limit of local-cut problems,
not equality of their finite-cut boundary projectors with the transported
infinity condition. It does not establish the full physical response,
common regulator or Lean certification.

The pinned [coupled-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md)
places the canonical boundary data at conformal infinity and explicitly
warns that arbitrary finite cuts need matching. At zero source angle its two
conditions give chi=tau_3 gamma_n and the Pi_- trace condition in the stated
folded convention, as checked in `zero-angle-boundary-map.md`.

Assume the fixed product-frame compactification extends smoothly to a compact
outer boundary representing that infinity, and that the source's fixed
spin/copy and magnetic maps identify the infinity realization with the H1
projector realization on that boundary. For the fixed RN product seed the
collar metric is B(u)d tau^2+b^2 du^2/B(u), with smooth B and B(0)>0;
this supplies a nondegenerate compactified collar, but the bundle and actual
physical realization remain assumptions. Impose the corresponding local
projector on each inner cut u=delta. Do not assume that it is the infinity
condition transported through the removed collar.

Let F_delta map the compactified infinity domain to the cut domain as in
`product-frame-moving-cut-uniformity.md`, and use its unitary density and
bundle pullback. The infinity problem is the delta=0 member of this fixed
Hilbert-space family; the local-cut problem is its delta>0 member. Under the
uniform H1 graph, fixed-domain and smooth coefficient assumptions proved
conditionally there, and the matched W2,infinity multiplier assumptions in
`weighted-fields-moving-cut-transport.md`, the form difference is O(delta).
The complete mixed heat derivatives satisfy, for 0<t<=1,

    ||partial_u partial_w(T_delta(t)-T_0(t))||_1
       <= C delta^(1/6) t^(-35/12),                     (1)

by `product-frame-moving-cut-response-rate.md`. This comparison includes all
modes present in the full compact product trace. It needs no modewise
identification of a transported finite-cut projector.

For a positive lower proper-time cutoff epsilon, define the particular
regulated model comparison by integrating the trace of the complete mixed
heat derivative with weight dt/t^2 over [epsilon,1]. The scalar trace is
unitarily invariant, including the fixed per-exterior normalization if that
normalization is the same for both problems. Equation (1) gives

    |G_delta(epsilon)-G_0(epsilon)|
       <= C delta^(1/6) epsilon^(-47/12).              (2)

Thus delta(epsilon)=exp(-4L/epsilon), for any fixed L>0, gives a vanishing
comparison. The same statement is uniform for matched physical-side field
approximants under `weighted-fields-moving-cut-transport.md`; the separate
joint rough-field path is treated in `weighted-rough-joint-heat-limit.md`.
For a bounded insertion the pullback is the corresponding composed scalar
multiplier and a moving-insertion difference must be included when it is
not held fixed on the reference space.

The subsequent `conformal-infinity-l2-domain-obstruction.md` shows that
nonzero H1 conformal boundary data are not physical Euclidean L2 data
under the singular conformal weight. This makes the physical-domain
matching assumption below substantive rather than automatic.

Equation (2) compares two explicitly regulated compactified-model terms.
It does not show either term has an unregulated limit, establish the source's
complete action or endpoint-conversion formula, or prove that the physical
uncompactified determinant uses these unitary identifications. In
particular, boundary spin/copy and monopole maps, physical normal and time
normalization, cutoff-dependent local terms, and the subtracted curved
remainder are not supplied by (2). The exact finite-cut spectral transport
and its collar source remain relevant to any alternative identification on
fixed subdomains; no equivalence of those boundary problems at finite delta
is claimed. No numerical calculation is used.

Remaining to-do list: verify the physical compactification and bundle maps,
match all response and counterterms, prove the common regulator, resolve
prior art, prepare the manuscript, and certify supported claims in Lean on
GCP.
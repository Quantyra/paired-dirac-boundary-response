# Regularity input audit for physical cut locality

This verifies the scalar-coefficient, localization-cutoff, and finite-chart
parts of the hypotheses used by
`physical-cut-localized-schatten.md` for the recorded smooth physical-side
cubic/log approximants on a fixed nonextremal RN-AdS seed. It does not verify
the actual source boundary realization, the weighted Davies/domain mapping,
or a physical-to-source trace identity.

## Radial cutoff derivatives

Write the fixed physical metric on its outer collar as

    g=F(r)dτ²+F(r)^(-1)dr²+r²g_(S²),    u=b/r,

with the differentiated RN-AdS asymptotics recorded in
`rn-physical-cut-uniform-geometry.md`. Let s be proper radial distance,
`ds=dr/sqrt(F)`, and set z=log u. Then

    dz/ds=-sqrt(F(r))/r.

The exact fixed RN-AdS coefficient makes `sqrt(F)/r` a smooth function of u
near u=0, bounded above and below by positive constants, with bounded
derivatives through any fixed finite order. Since `du/ds=u dz/ds`, induction
shows that the derivatives of z through order six are uniformly bounded on
the collar. In particular `|dz/ds|` has a positive lower bound there.

For a fixed smooth step profile φ and a cut level u=δ^c, define

    χ_δ(x)=φ(log u(x)-c log δ).

Every radial derivative through order five is a finite sum of products of
derivatives of φ and derivatives of z. The shift `c log δ` disappears under
differentiation, so these derivatives are uniformly bounded, independently
of δ. The function is radial; covariant derivatives in the uniformly
controlled physical charts remain bounded by the same chain rule and the
bounded chart/frame coefficients. This construction covers both the cutoff
that switches across u~δ^b in the Davies commutator and the output
localization whose transition is near u~δ^a. Their transition locations and
supports differ, but both have the required order-five bounds. The lower
bound on `|dz/ds|` also gives the logarithmic physical separation used in
`physical-cut-interior-operator-locality.md`.

## Field and coefficient regularity

The prescribed approximants in `smooth-physical-cutoff-joint-path.md` have
uniform weighted derivatives through order five. Its rescaled-chart argument
gives uniform physical chart C5 bounds for the cubic plus smooth logarithmic
remainder family. `rn-physical-cut-uniform-geometry.md` and
`rn-cut-monopole-local-gauges.md` supply uniform fixed-radius geometric and
magnetic-chart bounds for the fixed standard seed, subject to the matched
bundle identification stipulated in `source-paired-bundle-transition-check.md`.

With the stipulated complementary H1 projector domains and uniform frame
bounds, the squared operator's scalar principal coefficient is `E_η^4 g^-1`;
the remaining coefficients use at most two derivatives of the field before
the derivatives needed for W3. Five controlled field/frame derivatives
therefore bound the expanded square coefficients in W3 uniformly. The
composition Robin coefficient is
`S_η=(K-∂_n b_η)/2`; the RN cut geometry bounds K, while the radial C5 field
bounds and the same frame/gauge controls give the required Robin W3 bounds.
This is the coefficient count used by
`physical-h5-from-mixed-h3.md`, which derives the local H5 heat-output estimate
from its mixed-boundary H3 route under those domain and graph assumptions.

## Finite-cover factor

On the localized exterior region `u>=c δ^a`, the fixed seed's physical
volume is `O(δ^(-3a))`, since its collar density is `O(u^-4)du`. Uniform
bounded-geometry fixed-radius charts have a positive lower volume and
uniformly bounded overlap. They therefore give at most a polynomial number
of charts in `δ^-1`, as required for the singular-value patching step in
`physical-cut-localized-schatten.md`. No global heat-trace assumption is
used.

## What remains assumed

These checks supply the order-five localization derivatives, approximant
regularity, coefficient bounds, and polynomial chart count for this fixed
seed path. Consequently, they remove those items as independent gaps in the
conditional H5/Schatten route. They do not establish:

- that the source's physical spin/copy bundles and local projector are the
  stipulated matched RN data on every cut;
- the uniform complementary H1 domains, Green/partner identities and graph
  estimates for the actual physical finite-cut family;
- the domain-preserving weighted Davies estimate and Duhamel cutoff identity
  for that family;
- the source's endpoint Hilbert space/state, physical density and contact
  normalization, or common-regulator equality.

Thus the physical mixed cut-to-complete estimate in
`physical-cut-interior-response-locality.md` is conditionally assembled once
the first three groups hold. This note does not identify its limit with the
source's product-frame/time-reduced observable.

Remaining to-do list: independently instantiate the uniform physical
bundle/domain and weighted-form hypotheses; prove the source observable and
common-regulator bridge; complete the prior-art decision and certify the
final supported scope on GCP.

# Source zero-mode allocation for the angular conversion

This records a source-level identification, not a new proof of the physical
response or its regulator. The comparison uses the immutable historical
snapshot f0eab59063422c80ccc7c8e281170c75cc3afc71.

For the source's monopole sphere with positive integer flux q and one
four-dimensional Dirac species, the pinned [angular reduction](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/casimir-cylinder-twist-response.md)
states q zero modes and nonzero eigenvalues +/-sqrt(n(n+q))/b, each sign
having multiplicity q+2n. It cites the corresponding sphere spectrum in
[Greiter and Thomale](https://arxiv.org/abs/1807.05816v2), Eqs. (13)-(25).
Thus the nonzero squared-eigenvalue heat trace is exactly

  Theta_+(t)=sum_(n>=1) 2(q+2n) exp[-t n(n+q)/b^2],

and the full sphere heat trace for this stated spectrum is Theta_+(t)+q.
The q zero modes are not two copies q: their chiral sector has dimension q,
while the two signs are already included in each nonzero multiplicity.
Additional species or other trace conventions must be specified separately.

The pinned [conversion identity](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md)
uses the massive tower and its mass gap in its endpoint argument, and identifies
LLL and Weyl contributions as separately retained blocks. The pinned
[frequency-core note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/canonical-frequency-core-bound.md)
likewise records a separate LLL Polyakov cocycle even though the LLL mass
vertex vanishes. Consequently, replacing Theta_+ by Theta_++q in the massive
conversion is a different formal observable; the result does not establish
that this replacement reproduces the source's complete LLL block. In
particular, the massive-gap cancellation at the upper proper-time endpoint
cannot simply be carried over to zero mass.

As a consistency calculation only, inserting z=q into Eq. (7) of
[the flat local expansion](flat-conversion-angular-local-terms.md) adds
q U0/(2 pi t)-q U1/(24 pi)+O(t)||u||_H2||v||_H2 under that note's declared
model and normalization. This is not a derivation of the source LLL action
or a license to add it to the separately defined cocycle. The source's full
trace convention, upper endpoint, zero-mode state and common subtraction
still require observable-level matching. No numerical calculation or Lean
certificate is asserted here.

Remaining to-do list: match the physical LLL and massive blocks with their
common regulator and boundary realization, prove the required curved trace
estimates, settle novelty and scope, complete the manuscript, and certify its
supported claims in Lean on GCP.

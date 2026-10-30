# Uniform form inputs for the corrected compact orbit model

This extends `product-frame-moving-cut-uniformity.md` to the corrected
collar of `corrected-moving-cut-common-collar.md`. It concerns the declared
compact product-orbit model; it does not prove that its cut domain is the
physical boundary-source realization.

Use the fixed reference Hilbert space and H1 projector domain V obtained by
the smooth moving-cut unitary pullbacks in the cited moving-cut note. Assume
its seed first-order graph estimate and complementary H1 adjoint-domain
identities, and the smooth fixed bolt and bundle hypotheses. For the
uncorrected transported Dirac operators D_delta, the cited note proves

  ||(D_delta-D_0)h|| <= C delta ||h||_H1,
  ||h||_H1 <= C (||D_delta h||+||h||), h in V,         (1)

with common constants for small delta.

Let D_delta^c use the corrected radial metric coefficient in the outer
half-density collar and agree with D_delta outside that collar. The
correction is supported away from the bolt and, by
`moving-cut-rn-metric-seam-correction.md`, has L-infinity size
O(delta^(5/4)). In the common half-density frame the coefficient perturbation
is gamma_tau (f_corrected-f_translated) partial_tau. Uniform boundedness of
the fixed collar pullback and its inverse therefore gives

  ||(D_delta^c-D_delta)h|| <= C delta^(5/4)||h||_H1.  (2)

Absorb the right side of (2) into (1) for small delta. This yields a uniform
H1 graph estimate for D_delta^c, as well as the uniform reverse H1->L2
bound. It uses the exact same first-order projector domain and fixed collar
identification; a different density or frame map must be included in (2).

For the corrected scalar base fields and directions, the seam construction
and the weighted cutoff estimates give common physical-side W1,infinity
bounds. Multiplication by their scalar exponentials and inverses preserves V.
The bounded-congruence graph comparison therefore yields a uniform graph
estimate for each real corrected Dirac operator. The holomorphic form family
in a small common complex parameter disk is a uniformly small form-norm
perturbation of these real forms, and hence has a common coercive shift and
sectorial angle. First-order product rules supply uniform weighted scalar
commutator bounds. The common fixed two-dimensional H1 embedding is in S4,
so the complex Schatten estimates in
`complex-offdiagonal-hilbert-schmidt.md` apply to this stipulated family.

The proof depends on the uncorrected moving-cut graph and domain hypotheses,
the half-density collar identification and smooth fixed bolt/bundle model.
It does not establish that the physical source transports its infinity
condition to this local projector at each cut. Nor does it prove the
counterterm, complete response, or common-regulator limit. No numerical run
or Lean certificate is claimed.

Remaining to-do list: verify the physical boundary and copy maps, apply the
locality comparison to the complete source and subtractions, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
# Source reconciliation for the finite-cut paired graph estimate

This applies the conditional graph argument to the zero-angle paired
finite-cut data recorded in the pinned source. It distinguishes that recorded
finite-cut model from an independently established physical infinity
boundary condition and from a canonical-source regulator.

The frozen source `stationary-paired-dirac-phase.md` at scientific commit
f0eab59063422c80ccc7c8e281170c75cc3afc71 explicitly records, on a smooth
spherical finite cut with matched pulled-back spin and magnetic bundles,

  chi=tau_3 gamma_n, P=(1+chi)/2,
  Dom D: (1-P)gamma f=0, Dom D*: P gamma f=0,          (1)

and the square's complementary composition condition. It also states the
formally skew Dirac expression, a regular Euclidean bolt, and the relevant
Green and Gauss conventions. The separate pinned
`coupled-fermion-domain.md` fixes a spin-frame and magnetic-bundle map and
warns that arbitrary finite cuts need their own matching; it does not derive
a physical source boundary condition at each such cut.

For the fixed RN cut family, suppose the recorded finite-cut data (1), their
smooth bundle identification and Gauss/Green/Weitzenbock identities hold on
every cut, with the same physical seed and matched smooth bolt extension.
Then the following ingredients combine:

- `finite-cut-dirac-boundary-energy-identity.md` gives the energy identity
  and annihilation of its tangential boundary term for either P or 1-P.
- `rn-moving-cut-uniform-trace.md` gives the uniform boundary trace and
  mean-curvature bounds in the small-cut collar.
- `rn-weitzenbock-curvature-bound.md` gives the collar curvature bound; the
  smooth compact interior and bolt supply the remaining bound under the
  stated global extension hypothesis.
- `finite-cut-projector-h1-core.md` gives the smooth H1 core on each cut.
- `finite-cut-graph-weitzenbock-route.md` then yields the uniform graph
  estimate for D and, using uniformly bounded physical W1 scalar
  congruences, for D_b and its complementary first-order realization.

Thus the uniform graph estimate follows for this explicitly stipulated
fixed-seed family; its constants depend on the fixed geometry, twisting,
collar and multiplier bounds. The argument does not prove that the pinned
source's pulled-back bundle map actually extends through every chart, nor
that a physical finite-cut regularization uses exactly (1). It also does not
prove an H3 estimate for the square or the noncompact source/determinant
matching. At nonzero boundary angle the projector is rotated; transferring
this estimate requires verifying the relevant unitary conjugacy and connection
conditions rather than assuming them from the zero-angle calculation.

No new numerical calculation or Lean certificate is claimed. The source's
recorded domain is provenance, not an independently verified physical
boundary prescription.

Remaining to-do list: verify the global bundle and physical cut matching,
prove the mixed H3 estimate, complete source and regulator matching and prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
# Paired mixed square versus transfer and transmittal conditions

Status: focused comparison of boundary trace spaces, not a novelty verdict or
a Lean certificate. Sources are Gilkey, Kirsten and Vassilevich,
[transfer conditions](https://arxiv.org/html/hep-th/0208130), v1 Eq. (1.1)
and Theorem 1.2, and the same authors'
[transmittal study](https://arxiv.org/html/hep-th/0101105), v1. The paper's
finite-cut mixed condition is conditional on the hypotheses in
[the square-domain argument](multiplier-square-boundary.md).

For the paired square the boundary values satisfy Pi_- psi=0, while the
Pi_+ normal derivative satisfies a Robin equation. In the transfer source,
Eq. (1.1) instead imposes a finite matrix Robin equation on the entire pair
of boundary values: its principal normal-derivative coefficient is the
identity on both fibers, and the impedance matrices are finite zeroth-order
maps. At the level of unrestricted smooth boundary jets, any value can be
chosen in that transfer problem and its normal derivative then chosen to
satisfy the equation. In the paired mixed problem the Pi_- value must be
zero. Thus a pointwise invertible change of fiber basis alone cannot turn a
nontrivial mixed Dirichlet/Robin condition into that finite transfer Robin
condition: it preserves the dimension of the allowed value space. This is a
comparison of boundary conditions, not a claim that their spectra or local
invariants cannot agree in special cases.

The transfer source explicitly describes transmittal as a formal infinite
impedance limit, with equality of the two interface values and a condition on
the sum of inward normal derivatives. For two identified equal-rank fibers,
the value equality becomes a Dirichlet condition on the antisymmetric
combination after a unitary change to symmetric/antisymmetric variables.
The derivative-sum condition becomes a Robin-type condition on the symmetric
combination, with the coefficient depending on the source's normal and
coupling conventions. This is the same mixed *structure* as the paired
square, and means a broad distinction from all transmittal problems cannot
be claimed. Exact equivalence additionally requires matching projectors,
fiber identification, normal orientations, connection, Robin coefficient,
and both bulk operators. Those checks are not supplied by this algebra alone.

The transfer paper's Theorem 1.2 supplies smooth Laplace-type heat
coefficients through a4; its introduction allows unequal normal metric jets
between smooth sides. The transmittal paper also treats singular interfaces
and jumps in normal metric derivatives. Neither fact automatically proves
the paper's rough cubic/log metric-variation coefficient or the actual
first-order paired realization. Conversely, a result at those features is
not automatically novel: the relevant specializations and later literature
must still be compared, including all density vertices and normalization.

Remaining to-do list: construct or rule out the exact identification for the
declared paired bundle and connection, audit the applicable heat coefficients
and later literature, resolve the scalar normalization, and certify supported
claims on GCP.

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

More explicitly, in the transfer source's formal transmittal convention let
phi^+=phi^- and let the sum of inward derivatives equal v phi^+ after
identifying the boundary fibers. Set

    u=(phi^++phi^-)/sqrt(2),  w=(phi^+-phi^-)/sqrt(2),
    N_u=(nabla_nu+ phi^+ + nabla_nu- phi^-)/sqrt(2).

Then the boundary equations are w=0 and N_u-(v/2)u=0. This is an exact
linear equivalence of boundary jets, with the factor 1/2 fixed by the
source's normalization. Conversely these two equations recover the value
equality and derivative sum. The antisymmetric normal derivative and the
symmetric boundary value are unrestricted. To identify N_u with the normal
derivative of the symmetric folded field, one must also choose the collar
identification and verify that its pulled-back connections and inward-normal
conventions agree; with unequal connections this can introduce additional
zeroth-order boundary terms. The paired projector and Robin coefficient must
then match the transformed subspaces and v/2. These conditions are concrete
tests, not an assertion that the physical paired operator is transmittal.

For the recorded projector chi=tau_3 gamma_n there is a specific pointwise
unitary mapping of its value subspaces to the symmetric/antisymmetric copy
subspaces. In the common folded fiber representation, set T=tau_1 and

    U=(1+T chi)/sqrt(2).

Here T and chi are Hermitian involutions with T chi=-chi T, so T chi is
skew-adjoint and squares to -1. Hence U is unitary and a direct multiplication
gives U chi U^(-1)=T. Therefore U Pi_+ U^(-1)=(1+tau_1)/2, the projector
onto symmetric copy values, and U Pi_- U^(-1) is the antisymmetric projector.
The abstract value-space match is consequently explicit, not merely a rank
count. The sign of U matters for this identity.

This is only a boundary-fiber calculation. The map U must extend as a
globally defined bundle unitary compatible with the actual spin and magnetic
identifications. Its derivatives and conjugation of the bulk operator must
be accounted for; even a smooth extension can generate connection terms.
The transformed Robin operator and the two bulk blocks must also match the
transmittal model. None of these follows solely from U chi U^(-1)=tau_1.

With a smooth extension of U to a collar, write psi'=U psi and define the
transformed connection by nabla'_X=U nabla_X U^(-1). The paired mixed
condition transforms exactly to

    P_- psi'=0,    P_+ (nabla'_n+s) psi'=0,
    P_+=(1+T)/2, P_-=1-P_+,

where s=K/2-(partial_n b)/2 in the square note's normal convention. No
additional term is lost: derivatives of U are contained in nabla'. For
comparison to two uncoupled bulk copy bundles, however, the transformed
connection must preserve the relevant splitting. Its failure to preserve the
symmetric/antisymmetric splitting is measured exactly by

    nabla'_X T = U (nabla_X chi) U^(-1).

If tau_3 is parallel and chi=tau_3 c(n), Clifford compatibility gives
nabla_X chi=tau_3 c(nabla_X n). Thus a normal-parallel extension of n makes
the normal commutator vanish, while tangential derivatives can contain the
second fundamental form. This calculation uses the full bulk connection;
the intrinsic boundary connection in the square-domain calculation is a
different connection and can preserve chi. A nonzero tangential commutator
shows that the symmetric/antisymmetric decomposition is not parallel for
the transformed connection, but does not by itself rule out another
identification or all transmittal formulations. The actual copy-block
condition, zeroth-order terms, and normal orientation remain to be matched.

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

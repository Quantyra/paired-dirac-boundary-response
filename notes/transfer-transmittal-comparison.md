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

The symmetric/antisymmetric splitting is not itself the original side
splitting. Let Z=tau_3 be the original copy involution and K=U Z U^(-1).
Since [Z,chi]=0, one has [K,T]=0. If Z is parallel for the original
connection, K is parallel for nabla'. By contrast the side involution Z_std
in the standard symmetric/antisymmetric transmittal coordinates satisfies
{Z_std,T}=0: swapping the side sign exchanges the two value combinations.
Thus K cannot simultaneously be that standard side involution and preserve
the given copy identification. In particular, the preceding calculation of
nabla' T is not a test of whether nabla' preserves the *original* copies;
it tests a different splitting. Establishing a transmittal interpretation
requires a suitable alternative side splitting and its connection and bulk
compatibility, or a more general identification. This observation does not
exclude such an alternative.

The source's partner involution J supplies a candidate for that alternative.
Assume the global hypotheses of the
[finite-cut bridge](finite-cut-elliptic-domain-bridge.md): J is parallel,
commutes with the Dirac Clifford action, and anticommutes with chi at the
boundary. Let S=U J U^(-1). Then S is a unitary involution parallel for
nabla', and {S,T}=0 at the boundary. Consequently its two eigensubbundles
are exchanged by T, as required for a transmittal side splitting. Moreover,
if the scalar multiplier commutes with J, J commutes with the *bulk
differential expression* D_b and its formal square, so S commutes with the
corresponding conjugated bulk expression. Thus, under those assumptions,
there is an algebraic and connection-level candidate for two decoupled bulk
sides; the earlier original-copy mismatch does not exclude it.

This does not say J preserves the paired first-order boundary domain. It
exchanges that domain with its adjoint domain, and likewise exchanges the
partner squares as closed operators. The claim above concerns bulk
expressions and a splitting before the transmittal boundary condition is
imposed. To obtain an operator equivalence one must globally identify the
two S-eigenbundles, match their normal connections, verify the transformed
Robin coefficient and source sign convention, and compare the actual
closed realizations. The required global parallel J itself remains an
application-specific hypothesis.

At the boundary, the side identification can be made explicit under these
assumptions. Put E_side^+ and E_side^- for the S eigensubbundles and write
psi'=psi_+ + psi_-. Since T is unitary and anticommutes with S, its
restriction I=T|_(E_side^+) is a unitary map E_side^+ -> E_side^-.
The equation P_- psi'=0 is equivalent to

    psi_- = I psi_+.

Assume in addition that the collar extension has nabla'_n T=0 and that n
is the common inward normal after folding. In this paragraph s denotes the
Robin coefficient for that inward normal, namely minus the coefficient in
the square note's outward-normal convention. Since S is parallel, the normal
derivative preserves each side bundle; differentiating the identification
is not being assumed. Rather, the Robin boundary equation itself yields

    nabla'_n psi_+ + I^(-1) nabla'_n psi_-
        = -2s psi_+.

Indeed, applying the E_side^+ projection to P_+(nabla'_n+s)psi'=0
gives one half of the displayed sum plus s psi_+, using the value equation.
Conversely these two side equations imply the original mixed conditions.
Thus the transmittal source's v is -2s with this common inward normal and
its stated convention. If the original outward normal is used, the sign of
the derivative and the Robin coefficient must be converted together.

This gives an exact boundary-jet correspondence for the candidate side
bundles; it does not prove that those bundles are globally identified over
the whole boundary, that the bulk operators match the source's hypotheses,
or that their closed realizations agree. In particular, the first-order
paired operator still has its separately specified domain.

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

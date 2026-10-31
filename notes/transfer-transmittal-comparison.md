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
closed realizations. For the pinned identical-copy finite-cut model, the
separate [transition check](source-paired-bundle-transition-check.md)
verifies that its stipulated `J` patches and is parallel across the source's
common spin and pulled-back magnetic transitions, including the regular bolt
chart. Thus the parallel-`J` hypothesis is closed at that declared fixed-cut
scope; this is not an independent reconstruction of a different bundle or
nonidentical copies. The remaining comparison is the identification of the
resulting S-eigenbundles with interface side bundles, their normal and
tangential connections (including `B_j`), the transformed Robin coefficient
and sign, and the actual closed realizations.

In the source's displayed normal-frame matrices gamma_n=sigma_1 and
J=tau_1 gamma_n, the candidate splitting simplifies further. The same U
obeys the exact pointwise identities

    U tau_3 U^(-1) = J,      U J U^(-1) = -tau_3.

For example T chi=tau_1 tau_3 gamma_n=-i tau_2 gamma_n, and the identities
follow from the Pauli relations and gamma_n^2=1. Thus in that frame the
candidate S=U J U^(-1) is simply -tau_3, the standard copy-sign involution
with the side labels exchanged. This strengthens the boundary algebraic
match: it is not necessary to invent a new pointwise matrix for the side
splitting. It does not by itself extend that frame through the bolt or
verify the full transformed bulk coefficients and domain globally.

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

The connection matching can be stated without assuming I is tangentially
parallel. For X tangent to the boundary and a section v of E_side^+,
the induced connection on Hom(E_side^+,E_side^-) gives

    (nabla_X I)v = (nabla'_X T)v
                 = U tau_3 c(nabla_X n) U^(-1) v.

Here S is parallel, so its eigensubbundle projections commute with the
connection; the right-hand side lies in E_side^- because differentiating
{S,T}=0 gives {S,nabla'_X T}=0. Thus I is normal-parallel for the chosen
collar but can have a tangential connection defect controlled by the shape
operator. In a smooth finite-cut comparison this defect is explicit data
to be matched to the two side connections, rather than an unexplained
extra vertex or a reason by itself to reject transmittal conditions. The
source's hypotheses and local formulas must still be checked for the actual
induced connections and endomorphism; the identity gives no uniform bound
as the cut or metric varies.

For the pinned source normal-frame matrices this tangential term can be
compared explicitly with the spin-interface `B_j`. Use
`gamma_n=1 tensor sigma_1`,
`gamma_A=-tau_3 tensor sigma_2 tensor gamma_(A,S)`,
`chi=tau_3 gamma_n`, and the folding unitary
`F=(1+tau_1 chi)/sqrt(2)`. Then `T=F chi F^(-1)=tau_1`,
`S=F J F^(-1)=-tau_3`, and `I=T|_(E_side^+)`. For the second fundamental
form `H_(jA)=<nabla_j n,e_A>`, Clifford multiplication gives the exact
fiber identity

    I^(-1) (nabla'_j I) = H_(jA) gamma_n gamma_A.

Indeed, `tau_3 gamma_A=-sigma_2 tensor gamma_(A,S)` and conjugation by `F`
maps this to `-i tau_1 tau_3 sigma_3 tensor gamma_(A,S)`; left
multiplication by `I^(-1)=tau_1` gives
`-i tau_3 sigma_3 tensor gamma_(A,S)=gamma_n gamma_A`.
Herzog--Huang--Vassilevich Eq. (15) gives
`B_j=(K^+_(jA)+K^-_(jA))/2 gamma_n gamma_A`. In the reflection-symmetric
case `K^+=K^-=H`, these expressions agree after aligning the inward/outward
normal sign convention. This closes the tangential spin-connection
coefficient match for the pinned symmetric finite-cut seed. It does not
establish the full closed-operator equivalence for a varying metric family,
the source's magnetic twisting terms in the interface formula, or any
uniform moving-cut estimate.

## First-order domain distinction and square-level target

The matched boundary jets and tangential coefficient do not identify the
first-order realizations. In the P1 realization,
`Pi_+ gamma_n Pi_+=gamma_n Pi_+` and `gamma_n` is invertible on the allowed
trace space. Therefore the Green form does not vanish on `Dom(D)`, and the
closed P1 first-order operator is not symmetric; its adjoint has the
complementary projector domain. In the interface Dirac realization, the
spinor traces agree on the two sides and the outward normals are opposite,
so the two first-order Green boundary terms cancel. No unitary map can
identify these first-order closed operators.

The relevant possible heat-trace comparison is instead between the folded
interface square and the pair of P1 composition squares `D^*D` and `DD^*`.
The source's parallel partner `J` unitarily conjugates those two squares at
the fixed cut, so their heat traces agree whenever trace class. What remains
to prove is the exact operator/domain decomposition of the interface square
into these two P1 realizations, including its multiplicity and the matched
twisting connection. The interface paper's statement that spinor interface
coefficients are twice those of the folded boundary problem is consistent
with this target but is not itself that P1-specific domain identity.

The transfer paper's Theorem 1.2 supplies smooth Laplace-type heat
coefficients through a4; its introduction allows unequal normal metric jets
between smooth sides. The transmittal paper also treats singular interfaces
and jumps in normal metric derivatives. Neither fact automatically proves
the paper's rough cubic/log metric-variation coefficient or the actual
first-order paired realization. Conversely, a result at those features is
not automatically novel: the relevant specializations and later literature
must still be compared, including all density vertices and normalization.

Remaining to-do list: complete the transformed connection and closed-operator
comparison with the transmittal model at the pinned finite cut, then audit
its coefficient specialization, physical endpoint transfer, scalar
normalization, and certify supported claims on GCP.

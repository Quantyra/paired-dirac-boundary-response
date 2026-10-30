# Finite-cut H1 projector domains: elliptic literature bridge

Status: a hypothesis-by-hypothesis bridge to established smooth-boundary
regularity, not a completed audit of the original paired geometry or a Lean
certificate. This addresses the hypothesis (1) in
[the scalar multiplier argument](paired-multiplier-domains.md).

## Applicable primary results

Bär and Ballmann, [Guide to Elliptic Boundary Value Problems for Dirac-Type
Operators, arXiv:1307.3021v2](https://arxiv.org/html/1307.3021v2), Standard
Setup 4.1, treat Dirac-type operators on complete manifolds with compact
boundary. Corollary 4.18 states that an orthogonal splitting whose subbundles
are interchanged by the adapted boundary principal symbol gives two local
D-elliptic boundary conditions. Theorem 4.9 gives local H^(k+1) boundary
regularity for a D-elliptic boundary condition when the operator output is
locally H^k. Theorem 4.6 identifies the adjoint boundary condition by the
normal-symbol Green pairing. Theorem 4.10 gives graph-density of smooth
sections satisfying the boundary condition.

These results are imported mathematics. The comparison below checks their
symbolic applicability under explicit hypotheses; it is not a claim that
the general theorem or local chiral boundary conditions are new.

## Symbol calculation for the paired projector

At a smooth boundary point suppose gamma_n and every tangential gamma_xi
are Hermitian Clifford multiplications. Suppose tau_3 is a parallel
Hermitian involution commuting with them in the folded bundle identification,
and set chi=tau_3 gamma_n, Pi_+=(1+chi)/2, Pi_-=1-Pi_+. Then

    chi^2=1, chi*=chi, [chi,gamma_n]=0,
    {chi,gamma_xi}=0, {chi,gamma_n^-1 gamma_xi}=0.           (1)

The last relation says that the adapted first-order boundary principal
symbol interchanges the chi eigensubbundles. The harmless scalar factor i
from changing the formally skew Dirac expression to a formally self-adjoint
Dirac-type operator cancels in the symbol ratio. Thus, provided the folded
bundle and projector are globally smooth and the operator satisfies Standard
Setup 4.1, Corollary 4.18 applies to both eigensubbundle boundary conditions.
It requires the principal-symbol relation, not the stronger assertion that a
particular full adapted boundary operator anticommutes with chi.

## Consequences at a compact smooth finite cut

For the chi=+1 allowed trace, write B_+=H^(1/2)(boundary,E_+). On a compact
smooth manifold, a maximal boundary realization with B_+ is contained in H1:
its output lies in L2, so Theorem 4.9 at k=0 gives local H1 regularity up to
the boundary and compactness promotes this to global H1. Conversely an H1
section with trace in B_+ has distributional Dirac output in L2 and satisfies
the maximal boundary condition. Thus its domain is exactly the H1 projector
space, provided this maximal boundary realization is the physical one being
used. The graph-density statement from Theorem 4.10 supplies the associated
smooth-core approximation.

For the adjoint, Theorem 4.6 uses the normal-symbol boundary pairing. Since
sigma_D(nu) is a nonzero scalar multiple of gamma_n and gamma_n preserves
the two chi eigensubbundles, the annihilator of E_+ is E_-. The adjoint
boundary condition is therefore the complementary eigensubbundle. Its
D*-ellipticity and the same regularity reasoning give the complementary H1
adjoint domain. This does not make the original first-order realization
self-adjoint: its boundary subspace and its adjoint subspace are different.

## Closed partner identity from the finite-cut domains

Suppose in addition that a globally defined bounded unitary involution J is
parallel for the full spin and twisting connection, commutes with Clifford
multiplication, and anticommutes with chi on the boundary. The first two
conditions imply D_formal J=J D_formal distributionally. The last maps
the H1 chi=+ trace space onto the H1 chi=- trace space. If the formal bulk
adjoint is -D_formal and the two H1 domain identifications above hold, then

    D* = -J D J

as closed operators, including equality of domains: the right-hand domain
is J Dom(D), exactly the complementary H1 space, and its action agrees with
-D_formal there. Consequently Q=J D is skew-adjoint, because
Q*=D* J=-J D=-Q with its natural adjoint domain equal to Dom(D).

The pinned paired-phase source records the required pointwise Clifford and
projector identities for J=tau_1 tensor sigma_1. This derivation isolates the
additional global condition: J must intertwine the full pulled-back spin and
magnetic connections, not merely commute with the displayed gamma matrices.
The source assumes identical exteriors and a fixed bundle identification;
verifying that this identification supplies a globally parallel J remains
an application-specific obligation. No limiting-cut assertion follows.

In a local orthonormal frame this last condition can be checked explicitly.
Write the full connection as d+Omega_spin+A, with
Omega_spin=(1/4) omega_ab gamma_a gamma_b and A the twisting connection.
If the matrix representing J is constant in the chart, commutes with every
gamma_a and commutes with A, then [Omega_spin,J]=0 and nabla J=0 there.
For the source's identical pulled-back magnetic connection, A is scalar in
the spin and copy factors in the stated common identification, so its local
commutator vanishes. This justifies the local connection calculation rather
than inferring it from a matrix commutator alone.

The local matrices define one global parallel bundle endomorphism only if
on every overlap J_alpha=g_alpha_beta J_beta g_alpha_beta^(-1), where
g_alpha_beta is the actual spin-and-twist transition function. Once this
patching identity holds, the local connection calculation establishes
global parallelism, including a regular bolt chart if that chart and its
transition are in the cover. The source asserts global parallelism and a
fixed bundle identification; the transition identity and regular bolt chart
have not been independently reconstructed in this audit. A boundary-only
map or a constant matrix in one singular frame is insufficient evidence.

## What this does and does not settle

This gives an established route to the H1 assumptions on each compact smooth
finite-cut seed if the actual bundled operator, projector, normals, Green
form and chosen maximal realization satisfy the stated conditions. The
[pinned paired-phase note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md)
records the relevant gamma matrices and projectors; their global bundle and
connection hypotheses must still be traced. The smooth regular bolt is an
interior point, not an extra boundary, only after its chart and spin
structure have been verified.

Compact finite-cut regularity gives no uniform constants as the cut or metric
varies, no automatic global H1 norm on a noncompact limit, and no
regulator-uniform curved heat-trace remainder. The bounded-congruence and
resolvent arguments remain conditional on the matching of these imported
hypotheses. The established general boundary theory also strengthens the
novelty risk: the paper must identify a precise contribution beyond an
H1 projector-domain lemma.

Remaining to-do list: trace the global paired bundle and the chosen closed
realization to the cited theorem, audit rough multiplier and limit hypotheses,
complete the tangent/prior-art comparison, and formalize the supported claims
on GCP.

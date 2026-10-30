# Product square: domain and heat trace from the mode identity

This is an ordinary argument for the constructed product realization in
`paired-product-domain-closure.md`. It records the domain and summability
needed when passing from the GCP-checked single-mode identity to the full
product. The global physical separation and this infinite-dimensional
argument are not Lean-certified.

Let D be a closed densely defined operator on a Hilbert space H, let G be a
bounded self-adjoint involution, and assume G maps Dom D to Dom D* and
D* G u=G D u for u in Dom D. Put L=D*D, which is self-adjoint and
nonnegative. Let B be a self-adjoint operator on K with a complete orthonormal
eigenbasis e_j and real eigenvalues mu_j, counted with multiplicity. Let P be
the closed direct sum of P_j=D+i mu_j G, with its natural graph domain.
The single-mode equality, including its domain, is the checked result in
`lean/ModeSquareOperatorDraft.lean`: P_j* P_j=L+mu_j² on Dom L.

For u=(u_j) in the Hilbert direct sum, the adjoint of P is the direct sum
of the P_j* with its own natural graph domain. This follows by testing the
adjoint pairing against finitely supported vectors and conversely summing
Cauchy--Schwarz; no uniform bound on the mu_j is required. Consequently
P*P is the direct sum of the P_j*P_j, with domain

    {u: u_j in Dom L, sum_j ||(L+mu_j²)u_j||² < infinity}.   (1)

To see the domain equivalence, the composition requires u in Dom P,
P_j u_j in Dom P_j*, and sum ||P_j*P_j u_j||² finite. Conversely, (1)
and square summability of u imply sum ||P_j u_j||² is finite, since
||P_j u_j||²=<u_j,(L+mu_j²)u_j> and Cauchy--Schwarz applies to the
sequence sum. This establishes both inclusions of the composition domain.

Nonnegativity of L gives, for each u_j in Dom L,

    ||(L+mu_j²)u_j||²
      = ||L u_j||² + 2 mu_j² <L u_j,u_j> + mu_j^4 ||u_j||².  (2)

The cross term is nonnegative and at most ||L u_j||²+mu_j^4||u_j||².
Thus (1) is equivalently the intersection of the natural domains of
L tensor 1 and 1 tensor B², with action their sum. This proves the actual
square-domain statement for the constructed direct sum, rather than merely
an equality on finite-mode vectors. It also shows that no common square
domain across a varying family D_b follows from the fixed-b identity.

The spectral theorem now gives, for t>0,

    exp(-t P*P)=exp(-t L) tensor exp(-t B²).                 (3)

If both factors are positive trace class, their tensor product is trace
class and its trace is the product of their traces. If one factor has zero
trace it is the zero operator; otherwise the product criterion may be
checked on their nonnegative eigenvalue sums. For a sphere spectral sector,
insert its orthogonal projection in the second factor, provided it commutes
with B; the sector heat trace includes its eigenvalue multiplicities and
zero modes as chosen.

For a family L_b, the mixed derivative of the product trace equals the fixed
sphere heat trace times the mixed derivative of Tr exp(-t L_b), provided
the orbit trace has that mixed derivative and the sphere operator and sector
projection are independent of b. Equation (3) alone does not establish the
existence of the derivative, permit its interchange with a proper-time
integral, or control a regulator limit. It also does not apply unchanged if
the angular operator, sphere radius, coupling, or sector projector varies.

No numerical computation is needed for this operator argument. Physical
application still requires a unitary identification of the actual product
bundle, first-order operator and boundary domain with this construction;
finite-cut assumptions do not settle conformal-infinity matching.

Remaining to-do list: establish physical identification and the full tangent
and regulated response, decide novelty, prepare the supported manuscript,
and certify the full theorem package in Lean on GCP.

# Orbit chirality supplies the mode intertwining hypotheses

This is an ordinary argument for the geometric hypotheses of the GCP-checked
mode-square theorem in `lean/ModeSquareOperatorDraft.lean`. It applies to the
specified oriented product model; it does not establish that the physical
copy pullbacks realize that model, and it is not a Lean certificate.

Let X be an oriented compact Riemannian spin surface with smooth boundary,
including any smooth interior bolt. Let E be a Hermitian twist with compatible
connection, and let F be a finite-dimensional copy factor with a parallel
self-adjoint involution T commuting with Clifford multiplication. Assume the
Clifford matrices c(e1), c(e2) are Hermitian and square to one. Define the
geometric orbit chirality G=i c(e1)c(e2), for any positively oriented local
orthonormal frame. Let D be the closure of a formally skew-adjoint Dirac-type
expression with domain

    V = {u in H1(X,S tensor E tensor F): (1-chi) trace(u)=0},
    chi = T c(n),

and assume its adjoint has the complementary H1 domain

    V* = {v in H1(X,S tensor E tensor F): (1+chi) trace(v)=0}

and acts there by the negative of the same differential expression. These
are substantive elliptic boundary-domain hypotheses, not consequences of
the local algebra. Suppose also that the Dirac connection preserves the
Clifford action and T, and that any zeroth-order term anticommutes with G.

An orientation-preserving rotation of (e1,e2) leaves c(e1)c(e2) unchanged,
so G patches to a global endomorphism. Clifford compatibility and preservation
of orientation imply that G is parallel. It is fiberwise Hermitian and G²=1;
hence it induces a bounded self-adjoint involution on L2 and a bounded map on
H1. It anticommutes with c(n), and commutes with T, so G chi=-chi G. The H1
trace theorem and smooth multiplication give trace(Gu)=G trace(u). Therefore
G maps V into V*, and applying G again proves G V=V*.

Parallelism, anticommutation with each orbit Clifford generator, and the
stated zeroth-order condition yield the distributional identity

    D_expr(Gu) = -G D_expr(u)       for every u in H1.

For u in V, Gu lies in V*, so the assumed adjoint action gives

    D* (Gu) = -D_expr(Gu) = G D u.

Thus the chirality symmetry, involution, domain-mapping and intertwining
hypotheses of the checked abstract mode theorem hold for this model. For
real mu, a=i mu also obeys conjugate(a)=-a, giving the mode shift mu².
These conclusions use the actual complementary domains and do not assert
that G preserves V or that square domains stay constant under variation.

For a real scalar multiplier m with m and its weak derivative bounded, m
commutes with G and preserves both projector domains. If m is bounded away
from zero, the congruence D_m=m D m on V has complementary adjoint action
m D* m on V*, provided the closed congruence and adjoint identity are
established as in `bounded-congruence-argument.md`. The same calculation
then yields D_m* G=G D_m on V. The weak product rule justifies the H1
multiplier statements; no uniform higher derivatives are implied.

The geometric assumptions must still be checked for the physical spin and
magnetic pullbacks, the actual boundary realization and its adjoint, and the
separated product expression. This argument supplies neither the global
product-mode identification nor the tangent response, regulator limit, or
novelty decision. No numerical calculation is needed for this implication.

Remaining to-do list: verify physical bundle and domain identifications,
complete the response and novelty audits, prepare the supported manuscript,
and certify its full theorem package in Lean on GCP.

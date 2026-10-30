# Seed square H2 graph estimate from first-order regularity

This supplies the seed hypothesis of `lapse-uniform-square-h2.md` under the
finite-cut elliptic-domain assumptions in `finite-cut-elliptic-domain-bridge.md`.
It uses an imported first-order boundary regularity theorem and the closed
graph theorem. It does not identify the actual physical bundle or provide a
Lean certificate.

Let X be a fixed compact smooth manifold with smooth boundary and let A be
the closed realization of a smooth first-order elliptic expression. Suppose
its chosen boundary condition is D-elliptic in the sense of Bär and Ballmann,
and its adjoint realization has domain contained in H¹. Assume the physical
and formal adjoints are matched as in the finite-cut bridge. Write
L=A* A with its actual composition domain.

For u in Dom(L), Au belongs to Dom(A*) and therefore to H¹. Theorem 4.9 of
[Bär and Ballmann, arXiv:1307.3021v2](https://arxiv.org/html/1307.3021v2)
applied at k=1 gives u in H² locally up to the boundary; compactness gives
u in H² globally. This invokes that theorem's Standard Setup and the actual
D-elliptic boundary condition, not merely a formal projector identity.

The required norm estimate follows without assuming a second-order square
domain theorem. Define the space

    W={u in Dom(A): Au in H¹},
    ||u||_W=||u||_2+||Au||_(H¹).

W is Banach: a Cauchy sequence converges in L² and its A images converge in
H¹; closedness of A identifies the limit. First-order regularity says W is
contained in H². The inclusion W -> H² has closed graph because both
spaces embed continuously in L², so the closed graph theorem yields

    ||u||_(H²) <= C1 (||u||_2+||Au||_(H¹)),  u in W.       (1)

Similarly, Dom(A*) is Banach in its graph norm. Since it is contained in H¹
and both spaces embed continuously in L², closed graph gives

    ||v||_(H¹) <= C2 (||A* v||_2+||v||_2),  v in Dom(A*). (2)

For u in Dom(L), substitute v=Au into (2), then into (1). The adjoint
identity and Cauchy--Schwarz give

    ||Au||² = <Lu,u> <= ||Lu|| ||u||
             <= (||Lu||²+||u||²)/2.                         (3)

Combining (1)--(3) yields

    ||u||_(H²) <= C (||Lu||_2+||u||_2),  u in Dom(L).      (4)

For the constant-lapse seed L0=F0² L with F0>0, (4) gives the same estimate
with a constant depending on F0. Together with the scalar multiplier,
commutator and cutoff hypotheses in `lapse-uniform-square-h2.md`, this
establishes its uniform comparator H² estimate on the fixed compact model.
The result does not give constants uniform across changing geometries or
cut locations. It still requires the paired bundle and its actual maximal
boundary realizations to satisfy the imported theorem, and it does not prove
physical locality, the mixed response or regulator convergence. No numerical
calculation is used.

Remaining to-do list: verify the physical bundle and boundary-domain match,
prove locality and the mixed response, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
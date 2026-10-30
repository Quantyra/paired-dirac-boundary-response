# Product mode closure and the H1 projector domain

This is an ordinary conditional domain-identification argument extending
`paired-product-domain-closure.md`. It identifies the constructed closed
product realization with the natural H1 projector realization on a compact
smooth product. It does not reconstruct the physical copy map or certify a
Lean theorem.

Let X=O x S, where O is a compact smooth orbit surface with smooth boundary
and S is a closed compact sphere carrying a fixed smooth Hermitian spin and
magnetic bundle. Use product metrics and a product bundle identification.
Let B be the self-adjoint elliptic sphere Dirac operator, with an orthonormal
eigenbasis e_j and real eigenvalues mu_j, including multiplicities. Let D
be the closed orbit Dirac realization on

    V={v in H1(O;E_O): Pi_- trace(v)=0}.

Assume its graph norm is equivalent to the H1 norm on V, the complementary
adjoint and chirality identities of `paired-product-domain-closure.md` hold,
and Pi_- acts only in the orbit fiber and is independent of the sphere point.
Define P as the closure of the finite-mode operator D+i Gamma B described in
that note. Its exact graph identity gives the sequence norm

    ||psi||^2+||P psi||^2
      = sum_j (||psi_j||^2+||D psi_j||^2+mu_j^2||psi_j||^2). (1)

Then

    Dom(P)={psi in H1(X;E): Pi_- trace(psi)=0},          (2)

with equivalent graph and H1 norms. The trace in (2) is the usual H1 trace
on boundary O x S, and the projector is pulled back from the orbit boundary.

For the proof, elliptic graph-norm equivalence on V bounds the first two
summands in (1) above and below by ||psi_j||^2_H1(O). Ellipticity of B on
closed S gives ||v||_H1(S) equivalent to ||v||+||Bv||. Applying this
fiberwise and using Fubini, Parseval and standard product Sobolev charts,

    ||psi||^2_H1(X) comparable to
      sum_j (||psi_j||^2_H1(O)+(1+mu_j^2)||psi_j||^2_L2(O)). (3)

First let psi be in the closure domain. Finite-mode graph approximants
satisfy the projector condition. Equations (1)--(3) make them Cauchy in H1,
and continuity of the trace puts their limit in the right side of (2).

Conversely, let psi be H1 with the projector trace condition. The finite
sphere spectral projections S_N onto |mu_j|<=N converge strongly in H1(X):
this follows from (3), including the orbit weak derivatives. They commute
with Pi_- and with the product trace, so each S_N psi obeys the projector
condition. Each of its finitely many orbit coefficients is in H1(O) and has
allowed trace, hence belongs to V. Thus S_N psi is in the finite-mode core,
and (1)--(3) show convergence in the graph norm. This proves (2), including
both domain inclusions, without imposing an H2 square domain.

The compactness, fixed product bundle and projector independence are
substantive: angular-dependent projectors, nonproduct metrics, noncompact
cut removal, and moving or coupled boundary conditions need separate
arguments. Under the assumptions, this closes the additional product-domain
hypothesis for the explicitly constructed operator; identifying it with the
physical pullback still requires the actual global spin/copy and magnetic
maps, normal convention and chosen boundary realization. It gives no
regulator-uniform response estimate or novelty verdict. No numerical
calculation is used.

Remaining to-do list: establish the physical bundle and boundary matching,
complete the full response and regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
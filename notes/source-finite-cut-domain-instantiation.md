# Finite-cut physical projector: domain instantiation

Status: ordinary finite-cut argument for the source-stipulated smooth paired
model, using established Dirac boundary theory. It is not a Lean proof, a
uniform family theorem, or an identification of the limiting conformal
boundary at infinity.

## Source realization being audited

The pinned [paired-phase source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md)
works first on two identical copies with a fixed pulled-back spin and magnetic
bundle identification, zero constant boundary angle, a smooth finite
spherical outer cut, and a regular thermal bolt. The bolt is an interior
point of the smooth disk, not a boundary component. In the normal-parallel
frame it specifies

    chi = tau_3 gamma_n,   Pi_+ = (1+chi)/2,   Pi_- = 1-Pi_+,
    Dom(D):    Pi_- tr(u)=0,
    Dom(D†):   Pi_+ tr(v)=0.

The displayed Green form is the normal Clifford pairing. The source also
specifies the parallel paired involution J=tau_1 tensor sigma_1 and the
pointwise identities [J,gamma_mu]=0 and J chi J=-chi. The later
[transition check](source-paired-bundle-transition-check.md) verifies that
J patches and is parallel for the source-stipulated common spin and matched
magnetic transitions. These are inputs of this finite-cut model; no claim is
made that they follow for arbitrary nonidentical copy geometries.

## Elliptic realization and adjoint domain

Let X be the resulting compact smooth disk-times-sphere cut, with the regular
bolt included in its disk chart, and E the smooth folded twisted Dirac bundle.
The bulk expression D is formally anti-Hermitian with Hermitian Euclidean
Clifford matrices, so iD is a formally self-adjoint Dirac-type operator. At
the outer boundary, chi is a smooth orthogonal involution. It commutes with
gamma_n and anticommutes with every tangential gamma_xi. Therefore it
anticommutes with the adapted boundary principal symbol

    sigma_(iD)(n)^(-1) sigma_(iD)(xi),   xi tangent to boundary.

This is the symbol hypothesis of Bär--Ballmann, Corollary 4.18, for both
eigenbundles E_± of chi. The corresponding boundary spaces are
H^(1/2)(boundary,E_±), which are local D-elliptic boundary conditions. Use
the maximal realization whose boundary trace is in E_+ for D. Bär--Ballmann
Theorem 4.9 at k=0 implies every element of this operator domain is H^1 up
to the boundary, since its image lies in L². Conversely an H^1 section with
E_+ trace lies in the maximal realization. Thus

    Dom(D) = {u in H^1(X,E): Pi_- tr(u)=0}.

For the adjoint, Theorem 4.6 identifies the boundary condition by the normal
symbol Green pairing. Since gamma_n preserves the chi eigenspaces, the
annihilator of E_+ is E_-. Applying the same elliptic regularity to the
complementary condition gives

    Dom(D*) = {v in H^1(X,E): Pi_+ tr(v)=0}.

This uses the source's maximal projector realization; it does not incorrectly
make D self-adjoint on its original E_+ domain. The compact smooth hypotheses
also give graph-density of the smooth projector core by Theorem 4.10.

## Partner identity

The source-stipulated global parallelism of J gives D_formal J=J D_formal.
Its boundary identity J chi J=-chi maps the E_+ trace space bijectively to
E_-. Consequently J Dom(D)=Dom(D*) and the actions agree with the formal
bulk identity. The domains and actions therefore satisfy

    D* = -J D J,

as closed operators, and Q=JD is skew-adjoint. This instantiates the
hypotheses used by the abstract Lean partner theorem for the pinned smooth
finite-cut model, conditional on the stated source bundle, smooth geometry,
and maximal realization. The GCP Lean receipt proves the operator algebra
from those partner hypotheses; it does not formalize Bär--Ballmann or verify
the source geometry.

## Primary-theorem hypothesis check (2026-10-31)

The cited arXiv v2 gives Corollary 4.18 for a boundary splitting interchanged
by the adapted tangential symbol; it concludes that each `H^(1/2)` eigenspace
is a local `D`-elliptic boundary condition. Here the adapted symbol is
`sigma_D(nu)^(-1) sigma_D(xi)`. Since `chi=tau_3 gamma_n` anticommutes with
this symbol for every tangential `xi`, both `E_+` and `E_-` meet that
criterion. The source realization is on a compact smooth manifold with
compact boundary, within the guide's complete-manifold-with-compact-boundary
setup.

Theorem 4.6 gives the adjoint boundary condition by annihilation under the
normal-symbol pairing. Because `sigma_D(nu)` preserves the `chi` eigenspaces,
the annihilator of `E_+` is `E_-`, yielding the stated complementary adjoint
domain. Theorem 4.9 at `k=0` upgrades a maximal-domain section whose image is
in `L^2` to `H^1` locally up to the boundary; compactness makes this global.
Conversely, an `H^1` section with the prescribed trace lies in the maximal
domain by its distributional action. Theorem 4.10 supplies graph-density of
the smooth projector core. These citations support the stated finite-cut
domain/adjoint/core argument under the source model's bundle and formal
operator hypotheses; they provide no moving-cut constants or limiting
conformal-boundary domain.

## Scope boundary

This closes the finite-cut H^1-domain and partner argument at the stated
source-model scope by combining its explicit model data, the transition
calculation, and the cited elliptic theorem. It supplies no constants uniform
as the cut moves, as rough coefficients vary, or as the geometry approaches
conformal infinity. It neither proves a limiting physical trace domain nor
the common-regulator/tangent-response interchange. The physical endpoint and
complete-response obligations remain separate.

Primary import: [Bär and Ballmann, *Guide to Elliptic Boundary Value
Problems for Dirac-Type Operators*, Cor. 4.18, Thms. 4.6, 4.9, 4.10,
arXiv:1307.3021v2](https://arxiv.org/html/1307.3021v2).

Remaining to-do list: verify each source-model hypothesis against the final
manuscript normalization; carry the domain through the rough multiplier
family and the physical endpoint; complete the physical tangent response and
prior-art decision; certify the supported theorem on GCP.

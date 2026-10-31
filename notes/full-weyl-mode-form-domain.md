# Product-cut mode decomposition of the full-Weyl form domain

This records the domain argument needed to apply
`full-weyl-orbit-correction-vertices.md` mode by mode. It is an ordinary
finite-cut result under the explicit product and projector hypotheses below;
it does not identify the finite-cut projector with data at conformal infinity
or prove a source-observable limit.

Let the compact cut be a product `X=Y x S^2`, where `Y` is the smooth orbit
disk with boundary and regular bolt, and suppose the transformed bundle and
operator have the product form

    P = D_Y + i G B_{S^2}.

Assume `B_(S^2)` is self-adjoint with a complete orthonormal eigenbasis
`e_(n,a)` and real eigenvalues `mu_n`. Assume `G` and the boundary projector
`Pi_-` act only on the orbit/copy factors, so they commute with every angular
spectral projection. The finite-cut first-order realization is the maximal
elliptic projector domain

    V_X = {Psi in H^1(X): Pi_- tr(Psi)=0}.

Set `V_Y={psi in H^1(Y): Pi_- tr(psi)=0}`. The product Sobolev norm and the
angular spectral theorem give the Hilbert direct-sum decomposition

    L^2(X) = direct_sum_(n,a) L^2(Y) e_(n,a),
    V_X = { (psi_(n,a)): psi_(n,a) in V_Y,
            sum_(n,a) [||psi_(n,a)||_(H^1(Y))^2
                       + (1+mu_n^2)||psi_(n,a)||_2^2] < infinity }.

For the second equality, first take finite angular sums of smooth sections.
The product `H^1` norm is equivalent to the displayed weighted sum because
`B_(S^2)` is elliptic on the compact sphere. Since `Pi_-` is independent of
the sphere variable, the trace constraint holds separately in each mode.
Density of finite angular sums in the product `H^1` space then gives the
stated domain equality.

On this domain, `P` is the direct sum of `P_mu=D_Y+i mu G` on `V_Y`. If
`m=m(y)` is a real scalar in `W^(1,infinity)(Y)`, with bounded inverse and
preserving `V_Y`, then `E=m tensor I` commutes with all angular projections,
preserves `V_X`, and acts diagonally. Consequently

    E P E = direct_sum_(n,a) [m P_(mu_n) m],
    Dom(E P E) = V_X.

The closed quadratic form of `(EPE)^*(EPE)` is therefore the direct sum of
the mode forms with domains `V_Y`. In particular each full-Weyl mode square
has form domain `V_Y` even though its second-order composition domain may
vary with `m`. This supplies the common first-order form domain used in
`full-weyl-orbit-correction-vertices.md` whenever the stated product and
projector hypotheses hold.

The lemma requires that the conformally transformed finite-cut bundle,
operator, angular eigenspaces, and boundary projector have exactly this
product structure. It does not derive that structure from an arbitrary
physical frame, transport the finite-cut boundary condition from infinity,
or control constants as the cut moves. The canonical source norm, density
and contact terms, LLL/anomaly block, and common-regulator matching remain
separate.

For the pinned static zero-angle RN-AdS seed, these product and projector
hypotheses are supplied at each smooth finite spherical cut by the source
derivation in `quantyra-wormhole-semiclassical`, commit
`08cb71afea3f0e5310cac8a50c05d5007555641f`,
`notes/stationary-exterior-conformal-domain.md`, blob
`b9117fa2b2e9e9e2cec36e1c71f52f414b5349b9`. The same modewise physical
operator and composition domain are recorded in
[`physical-product-contact-operator-gap.md`](physical-product-contact-operator-gap.md).
Consequently the common mode form domain used in
`full-weyl-orbit-correction-vertices.md` applies to this pinned finite-cut
seed, with its stated multiplier regularity. This does not extend to a
changing boundary angle, arbitrary physical frame, or a uniform moving-cut
limit.

Remaining to-do list: verify the product and projector hypotheses in the
source frame; prove the curved common-regulator response and source matching;
complete novelty review and manuscript; certify supported statements in Lean
on GCP.

# Global magnetic matching and the partner intertwiner

Status: conditional finite-cut geometry argument. This sharpens the remaining
global hypothesis in [the elliptic bridge](finite-cut-elliptic-domain-bridge.md);
it does not independently identify the physical pulled-back connections,
prove the Sobolev domains, or settle a regulator limit.

## Claim and first unsupported implication

Let X be the smooth finite-cut Euclidean exterior with orbit disk and sphere,
so X is diffeomorphic to D² × S². Let L_R and L_L be the two pulled-back
Hermitian magnetic line bundles with smooth unitary connections. Suppose their
curvatures agree on X, and suppose the prescribed boundary identification
U_boundary: L_R|∂X → L_L|∂X is unitary and preserves the restricted
connections. Then U_boundary extends uniquely to a connection-preserving
unitary bundle isomorphism U on X.

The source's [coupled-domain note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md)
says the pulled-back monopole bundles agree in global angular coordinates and
fixes the boundary map to the identity. The [paired-phase note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md)
assumes identical exteriors and a regular thermal bolt. The first still
unsupported implication is that these recorded identifications give equal
smooth pulled-back curvatures on all of X and that the fixed boundary map
intertwines the full restricted connections. These must be checked against
the actual source connection and copy diffeomorphism; matching charges alone
does not establish them.

## Argument

The relative line bundle K = Hom(L_R,L_L) has its induced unitary connection
with curvature F_L - F_R = 0. Since D² × S² is simply connected, every
flat unitary line bundle on X has trivial holonomy. Pick a boundary point and
the unit vector in K supplied by U_boundary there; parallel transport gives
a smooth global unit parallel section of K. Independence of paths follows
from flatness and simple connectivity. This section is the desired U.

The boundary ∂X is connected. Both U|∂X and U_boundary are parallel
unit sections of K|∂X and agree at the chosen point, so they agree everywhere.
A connection-preserving extension with the same boundary value is unique:
the ratio of two such sections is a parallel U(1)-valued function equal to 1
at that point.

This includes the bolt rather than puncturing the orbit disk. A flat
relative connection on a punctured disk could have nontrivial angular
holonomy; smooth extension over the actual disk and flatness rule that out.
The antiperiodic components in a rotating polar spin frame are a spin-frame
transition, not an independent magnetic holonomy or an extra bolt boundary.

## Consequence for J, conditional on the common spin identification

Use U to identify the magnetic bundles over the whole exterior, together
with a fixed identification of the two pulled-back spin bundles and their
connections. In the orientation-aware folded representation, the recorded
matrix J commutes with every Clifford generator. It therefore commutes with
the spin representation of every even Clifford transition, including the
central sign of a spin lift. It also commutes with the common scalar magnetic
transition. Thus the local J matrices patch to a global endomorphism, and
their local commutation with the spin and magnetic connections makes J
parallel. The recorded algebra JχJ = −χ then exchanges the two boundary
projector spaces. Under the separately established complementary H¹ domain
identities and formal bulk adjoint, this supplies the global hypothesis in
the closed-partner argument D* = −JDJ.

This is not a proof that the physical boundary map satisfies the connection
condition. For example, multiplying a parallel boundary identification by
a nonconstant phase generally destroys connection preservation; a local
identity of charges or curvature cannot by itself recover the chosen map.
The spin-bundle identification and its relation to the orbit-orientation
convention remain independent checks. No numerical computation is needed for
this topological argument; numerical checks cannot replace these identities.

Remaining to-do list: verify the physical curvature, smooth bolt, connection
and boundary-map hypotheses in the pinned source; establish the actual
projector domains; complete the response and prior-art audits; and certify
the resulting claims in Lean at their supported scope.
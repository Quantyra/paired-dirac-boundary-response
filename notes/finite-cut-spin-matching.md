# Spin matching on the finite-cut disk–sphere product

Status: conditional topological and connection argument, not an independent
construction of the source's copy map or a Lean certificate. It complements
[the magnetic matching audit](global-magnetic-partner-matching.md).

## Spin structure and boundary lift

Assume the finite-cut Euclidean exterior X is the smooth product D²×S²
with its given orientation and product topology. Its tangent bundle is
spin: w₂(TD²)=0 and w₂(TS²) is the Euler class of TS² reduced modulo two,
which vanishes because the Euler number is 2. Also H¹(X;Z₂)=0. The
standard classification of spin structures therefore gives exactly one
isomorphism class of spin structure on X. The spin structure induced on the
thermal boundary circle is the bounding one; in a rotating polar spin frame
its components are antiperiodic. This sign is a spin-frame transition,
not an additional magnetic phase.

Suppose the two pulled-back exteriors carry the same smooth metric and a
specified orientation-preserving orthonormal-frame identification over all
of X. Pull back both spin structures to the same SO frame bundle. Their
unique spin-structure class supplies an isomorphism of spin principal
bundles covering that frame identification. Such a lift is unique up to
the central sign on connected X. If the prescribed boundary spin map is
itself a lift of the same frame identification, its ratio to the restricted
bulk lift is a continuous map from connected ∂X to {±1}, hence is constant.
Choosing the bulk sign makes the boundary lift agree exactly. This proves
existence and uniqueness of the lift after the global frame identification
and boundary-lift hypotheses are supplied; it does not assert that an
arbitrary boundary unitary is such a lift.

## Connection consequence

For a global orientation-preserving isometry between the identified metrics,
the Levi-Civita connection is natural under the frame map. Its spin lift
therefore intertwines the induced spin connections. Combining this lift with
the separately matched magnetic line-bundle connection gives a global
connection-preserving spinor-bundle map. In a common representation, a
constant copy-exchange matrix that commutes with the Clifford action and the
common twisting connection is then parallel, provided the orientation-aware
folded representation is consistently implemented. This supplies the spin
part of the sufficient hypothesis in
[the finite-cut partner argument](finite-cut-elliptic-domain-bridge.md).

## Limits of the application

The source states identical exteriors and fixes a pulled-back spin/bundle
map, but the explicit global copy diffeomorphism, its orientation convention
and its lift have not been reconstructed here. In particular, a reflection
of only the orbit orientation is orientation reversing; uniqueness of a spin
structure does not by itself provide a spin lift of such a map. One must
show how the source's orientation-aware gamma representation and any other
orientation reversal implement the stated global frame identification, or
use an appropriate explicitly constructed alternative. Likewise, matching
line-bundle curvature and the chosen boundary magnetic map remains the
separate connection check in the magnetic audit.

The topological argument removes an ambiguity in the spin structure under
its hypotheses; it does not prove the physical hypotheses, the closed
operator domains, or the curved response. No numerical calculation is
needed for this result.

Remaining to-do list: reconstruct the actual copy/frame map and magnetic
connection, verify the finite-cut domain and bolt matching, complete the
response and novelty audits, and certify supported claims on GCP.

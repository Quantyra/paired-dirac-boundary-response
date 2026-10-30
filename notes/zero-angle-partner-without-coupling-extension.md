# Zero-angle partner without extending the coupling map

This combines `disk-sphere-spin-lift-extension.md`,
`global-magnetic-partner-matching.md` and `zero-angle-boundary-map.md` for
the selected h=0 source model. It weakens a boundary-map hypothesis for the
partner construction; it does not derive the finite-cut problem from the
physical boundary at infinity.

Let X_R and X_L be smooth finite-cut exteriors with disk--sphere topology,
and suppose a specified orientation-preserving isometry F identifies their
metrics, including the regular bolt. Pull both spin and magnetic data to one
copy of X. Assume the pulled-back magnetic curvatures agree and the unitary
connections are smooth over the full disk--sphere. The spin-lift note gives
a global connection- and Clifford-intertwining spin isomorphism, unique up
to a constant sign. The relative magnetic line bundle has zero curvature;
since X is simply connected, a unit vector chosen at one point extends by
parallel transport to a global unitary connection-preserving magnetic
isomorphism, unique up to a constant phase. Their tensor product gives a
global parallel unitary Clifford-intertwining copy map h_bulk.

No prior choice of boundary coupling map is needed to construct h_bulk.
At the source's selected h=0, its two boundary equations reduce to

  P_+ psi_R=0,       P_- psi_L=0,                              (1)

and the relative boundary coupling map disappears. Thus h_bulk need not
restrict to that unused coupling map. In the orientation-aware folded
representation of `common-folded-bundle-partner.md`, h_bulk supplies the
exchange involution J; the radial representation change gives its displayed
J=tau_1 tensor sigma_1, and J exchanges the two projector trace spaces.
With the complementary H1 adjoint-domain identity and the formally
skew-adjoint bulk expression, the existing argument yields the closed
partner identity D*=-J D J and the natural square conjugacy. The magnetic
constant phase and spin sign do not affect these domain relations.

This result is restricted to h=0. For a nonzero coupling, the relative
boundary map enters the domain and must be checked against the chosen global
map; topology and equal curvatures do not automatically identify them.
Likewise, equal charge alone is not equal curvature, and two metrics with
matching boundary jets need not be globally isometric. The source states
identical pulled-back data, but the actual copy isometry, signed curvature,
spin/orientation convention and selected H1 realizations must still be
verified against the physical construction. A local finite cut remains a
model boundary until its relation to conformal infinity is established.

The result does not prove a trace or regulator limit, a nonlinear
neighborhood, or Lean certification. No numerical calculation is used.

Remaining to-do list: verify the physical copy isometry and pulled-back
curvature and domains, complete the mixed response and regulator, resolve
novelty, prepare the manuscript, and certify supported claims in Lean on GCP.

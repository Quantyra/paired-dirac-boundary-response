# Uniform normal-parallel projector frames on radial cuts

This supplies a sufficient frame construction for `rn-radial-robin-tangential-derivatives.md` under the matched-bundle and uniform coefficient hypotheses already stated there. It does not independently identify the source's closed boundary realization.

On each uniformly controlled boundary half-chart from `rn-physical-cut-uniform-geometry.md`, assume a unitary local frame with connection matrices A_i and their derivatives through order k uniformly bounded, and a smooth orthogonal projector P whose boundary and collar derivatives through order k+1 are uniformly bounded. Assume the copy involution is parallel and P=(1+tau_3 c(n))/2 with the unit normal n extended along normal geodesics. Clifford compatibility and nabla_n n=0 imply

 nabla_n P=0.                                            (1)

On the boundary choose a smooth unitary frame adapted to the two constant-rank subbundles Ran P and Ran(1-P), with derivatives through order k uniformly bounded. Such a frame exists locally with uniform bounds when the projector has the stated uniform derivatives: on a sufficiently small fixed chart, project fixed orthonormal vectors into each subbundle and apply smooth Gram--Schmidt; shrink the chart uniformly so the Gram matrices remain uniformly invertible. This is local and does not trivialize either bundle globally.

Extend the adapted frame into a fixed-width normal collar by parallel transport. In the initial frame its matrix U(s,y) solves

 partial_s U=-A_n(s,y) U,     U(0,y)=U_0(y).             (2)

Metric compatibility makes U unitary. Differentiating (2) in tangential coordinates and using Gronwall induction on |beta|<=k gives uniform bounds for partial_y^beta U and its inverse on the fixed collar; normal and mixed derivatives through the same finite order follow from (2) and the assumed A_n bounds. The same argument works for each cut with the same constants. Since (1) says parallel transport preserves P, in the transported frame P is the same constant diagonal projection throughout the collar and the normal connection matrix is zero.

For the standard radial monopole connection, `rn-cut-monopole-local-gauges.md` supplies uniform local magnetic coefficients; the cut-geometry note supplies the corresponding metric/frame bounds. Their use here remains conditional on the source's actual spin and copy identification and on the needed derivative orders. When the Robin coefficient is the radial scalar S_R of the cited boundary note, it stays a scalar constant along the boundary in the constructed frame. The homogeneous differentiated boundary identities of that note then apply, with no assertion that partial tangential derivatives commute with the full interior connection or operator.

This construction establishes neither the H1 projector realization nor the actual composition-square Robin domain; both remain independent hypotheses. It also gives no heat-trace, regulator or Lean certificate.

Remaining to-do list: verify the physical paired realization and uniform elliptic/heat estimates, complete the response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

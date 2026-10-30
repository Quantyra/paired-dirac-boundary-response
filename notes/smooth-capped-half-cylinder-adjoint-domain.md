# Adjoint domain on the smooth capped half-cylinder

This applies the elliptic-domain bridge in `finite-cut-elliptic-domain-bridge.md` to the noncompact auxiliary half-cylinder of `local-paired-projector-graph-closure.md`. It does not extend the theorem automatically to the reflected rough coefficient or to the physical global bolt.

Let X=[0,infinity) x S1_T carry the smooth complete metric dy²+f(y)^(-2)d tau², with 0<m<=f<=M and f smooth with bounded derivatives needed for the Dirac construction. Use the fixed thermal spin structure, constant Hermitian Clifford matrices and projector chi=C of `source-reflection-clifford-matrix-match.md`. Let D be the geometric orbit Dirac operator transported unitarily to the radial half-density frame, and let D_plus be the graph closure of smooth radial-compact sections with Pi_minus trace zero. Completeness follows from uniform comparison with the flat half-cylinder; the boundary circle is compact. The unitary half-density map is bounded together with its inverse and their first derivatives, so it preserves H1 and the constant trace projector.

For a nonzero tangential covector xi, the adapted boundary principal symbol is a nonzero scalar multiple of gamma_y^(-1) gamma_tau xi. Since C commutes with gamma_y and anticommutes with gamma_tau, this symbol exchanges the C eigenspaces. The two local projector conditions therefore meet Corollary 4.18 of [Bär and Ballmann](https://arxiv.org/html/1307.3021v2), subject to their standard complete-operator setup. Their adjoint boundary theorem and H1 regularity then give

  Dom(D_plus)= {psi in H1: Pi_minus psi|_boundary=0},
  Dom(D_plus*)={phi in H1: Pi_plus phi|_boundary=0},
  D_plus* phi=-D phi.                                        (1)

The Green boundary pairing contains gamma_y, which preserves each C eigenspace, so the orthogonal annihilator of the allowed plus trace is the minus trace; this fixes the projector labels. The graph closure and its H1 domain are also verified directly in the preceding graph-closure note. The application of the cited elliptic theorem supplies the missing maximal adjoint-domain regularity for this *smooth auxiliary model*. It does not assert that D_plus is self-adjoint.

The conclusion persists under a fixed bounded smooth unitary twisting connection that preserves C and the stated boundary symbol; it also requires the actual bundle and thermal transitions to satisfy the theorem's global setup. For merely W1,infinity coefficients, the smooth theorem cannot be invoked without an additional low-regularity extension or a domain-convergence argument. Norm-resolvent convergence of the squares alone does not prove convergence or equality of first-order adjoint domains.

Thus (1) closes the adjoint-domain question for the stated smooth cap, while physical source matching, the rough first-order adjoint, bolt gluing, response and regulator remain open. No Lean certification is claimed.

Remaining to-do list: prove rough and physical domain matching and gluing, control the full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
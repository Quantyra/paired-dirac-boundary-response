# First-order composition square and reflected mixed form

This connects the source's first-order composition square to the half-cylinder form of `reflected-cylinder-mixed-domain-from-form.md`, without assuming an H2 square domain. It is conditional on the stated first-order H1 domain and the source's half-density expression.

Let D=gamma_y partial_y+gamma_tau f(y) partial_tau on the half-cylinder, with constant Hermitian Clifford matrices, A=gamma_y gamma_tau, and C the source projector involution checked in `source-reflection-clifford-matrix-match.md`. Thus A*=-A and C A C=-A. Let f be real, positive and W1,infinity, and let

 V={psi in H1: Pi_minus psi|_(y=0)=0}, Pi_plus/minus=(1+/-C)/2.

Assume the closed first-order realization D_V has domain exactly V and agrees with this expression. Its composition square D_V* D_V is the self-adjoint operator associated with the closed form ||D_V psi||² on V. For smooth fields in V, compactly supported away from the far end and compatible with the thermal spin structure, integration by parts gives

 ||D psi||² = ||partial_y psi||²+||f partial_tau psi||²
                 +<psi,-A f' partial_tau psi> + B_0(psi).  (1)

The only normal-boundary cross term is, up to the sign fixed by normal orientation, the integral of psi* A f partial_tau psi at y=0. Since the boundary trace lies in the C=+1 subspace, partial_tau preserves that subspace, and A exchanges the two orthogonal eigenspaces, this boundary integrand vanishes. The thermal integration has no boundary term, including for antiperiodic spinors. Thus B_0=0.

The smooth fields described above are dense in V by the usual half-space trace extension and mollification, preserving the constant projector and thermal spin structure. Both sides of (1) are continuous in H1 under the bounded coefficient assumptions. Consequently the quadratic form of D_V* D_V equals the mixed half form q_f on all V. By uniqueness of the self-adjoint operator associated with a closed lower-bounded form, the composition square and that mixed form realization are the same operator. The reflected extension in the preceding note then unitarily identifies this square with the J-even sector of the auxiliary double.

The conclusion is independent of an H2 characterization of the square: complementary Dirichlet/Neumann operator traces require the separate regularity result, while the form identity already fixes the self-adjoint realization. It applies to the orbit Dirac expression at the geodesic seam after the source's half-density transformation. A finite cut with nonzero normal connection or curvature, a varying projector, angular mass inside a different first-order expression, or additional boundary coupling requires a new boundary term.

The frozen source records the first-order projector domain and half-density expression, and the prior note verifies its local matrix labels. Independently establishing the exact H1 domain for the physical bundle, the global regular bolt and the equality of the source localization to this auxiliary cylinder remains necessary. Nor does the form identity prove gluing, angular normalization, the full geometric response, or Lean certification.

Remaining to-do list: verify the source H1 realization and gluing, control the full response and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
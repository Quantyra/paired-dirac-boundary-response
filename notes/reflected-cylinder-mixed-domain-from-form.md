# Mixed half-domain induced by the reflected cylinder form

This verifies the reflection-to-boundary step for the model in `reflected-cylinder-form-convergence.md` and compares its hypotheses with the frozen [stationary boundary-layer source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md), equations (3)--(4). It is a local auxiliary-cylinder result, not a global bolt identification.

Let f be positive, even and W2,infinity on R, and let A be the constant skew-adjoint matrix in the separated expression. Let C be a constant unitary self-adjoint involution satisfying C A C=-A. Define J psi(y,tau)=C psi(-y,tau), P=(1+J)/2, and Pi_plus/minus=(1+/-C)/2. The form q_f of the preceding note is invariant under J: f² is even, f' is odd, reflection changes the sign of f', and conjugation by C changes the sign of A. Therefore the self-adjoint L_f and its heat semigroup reduce P H.

For a half-cylinder field h define the extension

  (E h)(y,tau)=2^(-1/2) h(y,tau), y>0;
  (E h)(y,tau)=2^(-1/2) C h(-y,tau), y<0.              (1)

E is unitary from the half-cylinder L2 space onto P H. A piecewise H1 field of this form is globally H1 exactly when its traces match at zero, i.e. Pi_minus h(0,tau)=0. Hence the restricted form domain corresponds precisely to

  V_half={h in H1((0,infinity) x S1_T): Pi_minus h|_(y=0)=0}. (2)

Substituting (1) into q_f shows that its restriction is the same separated form integrated on the positive half; the two halves and the factor 1/2 cancel. This statement is exact at the form level and requires no smooth reflected third derivative.

For a sufficiently regular operator-domain field, integrate by parts in y in the half form. The first-order term differentiates only in tau and gives no normal boundary contribution; the f² tangential term likewise contributes no y boundary term. The variational boundary condition is therefore Pi_plus partial_y h|_(y=0)=0 in the weak conormal sense, together with Pi_minus h|_(y=0)=0. Where standard H2 regularity applies these are the usual complementary Dirichlet/Neumann conditions. Thus (1) identifies the J-even form realization with this specific mixed half realization. It does not assert H2 regularity without the corresponding elliptic-domain theorem.

The source records precisely the half-density differential expression and constant complementary projectors at the geodesic boundary. Matching it to this result still requires verifying its concrete C, A and projector labels, the source's first-order composition domain and thermal spin/copy identification. An extra normal Robin term, a non-geodesic boundary, or a different extension would change the conclusion. The auxiliary far cap and the physical regular bolt remain distinct.

Combined with the localized trace construction and grading hypotheses in `paired-reflection-two-insertion-trace.md`, this form-level unitary map supplies the half/double factor for the stipulated model. It does not prove global gluing, the complete geometric response or the common regulator, and no Lean certification is claimed.

Remaining to-do list: check the actual source matrices and domains, establish gluing and full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
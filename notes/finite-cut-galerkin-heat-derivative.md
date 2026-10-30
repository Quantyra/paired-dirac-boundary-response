# Galerkin identification of the fixed-cut mixed heat derivative

This supplies the missing identification in
`finite-cut-mixed-heat-trace-spectral-formula.md` under explicit compact
embedding and uniform sectorial-form hypotheses. It does not establish a
uniform moving-cut estimate, the physical source normalization, or a
short-proper-time subtraction.

Let L>=0 on H with compact resolvent and form domain V=Dom L^(1/2), with
||f||_V=||(1+L)^(1/2)f||. Assume the embedding J:V->H is in S_p for some
finite p. For example, the compact four-dimensional H1 setting in
`paired-positive-time-trace-derivatives.md` has this property for p>4 under
the stated graph estimate. Let q_z be a holomorphic family of closed forms
on the common V, uniformly bounded and uniformly sectorial/coercive after
one fixed positive shift on a small complex polydisc. At z=0 let q_0 be the
form of L. Let its derivatives at zero be v_u,v_w,v_uw as in the spectral
formula note. Let P_N be the projection onto the first N eigenvectors of L,
and let q_(z,N) be the restriction to P_N V. Denote the associated finite
matrix by L_N(z), and extend exp(-t L_N(z)) by zero on P_N H perpendicular.

For a sufficiently large fixed shift mu, the variational resolvent equation
has a uniform coercivity constant for z on a smaller closed polydisc. The
Galerkin quasi-optimality estimate gives

  ||(L_z+mu)^(-1) f - (L_N(z)+mu)^(-1) P_N f||_V
      <= C inf_(v in P_N V) ||(L_z+mu)^(-1) f-v||_V.   (1)

Here C is uniform in z and N. The adjoint embedding J*:H->V* is compact;
the uniformly bounded variational inverses and their norm-continuity in z
therefore make the union of the images of the H unit ball under
(L_z+mu)^(-1), over the closed polydisc, relatively compact in V. Since
P_N converges strongly to the identity in V, the right side of (1) tends
to zero uniformly in ||f||<=1 and z. Thus the shifted resolvents converge
in H operator norm uniformly on that polydisc. Uniform sectorial resolvent
bounds and the holomorphic semigroup contour formula then yield operator
norm convergence of the finite heat operators, uniformly for z on a still
smaller polydisc and t in any compact positive-time interval. The contour
step uses the common sectorial angle and bounds; it is not an assertion of
uniform convergence at t=0.

The sectorial form estimate also gives a uniform H->V bound for each
finite-dimensional heat operator at positive times, including the extension
by zero. Consequently its S_p norm is bounded by the S_p norm of J times
that H->V bound; the limiting heat operator has the same property. Choose an
integer k>p. Interpolation converts operator-norm convergence plus uniform
S_p bounds into S_k convergence. Factoring each heat operator into k
equal-time factors, telescoping and Schatten Holder give trace-norm
convergence uniformly on a smaller polydisc for fixed t>0. The same local
bounds and interpolation give trace-norm holomorphy. Cauchy's two-variable
formula therefore passes the limit through the mixed derivative at z=0.

The mixed derivative of the finite matrix depends only on its first and
mixed second form derivatives; it is exactly the expression in
`finite-cut-mixed-heat-trace-spectral-formula.md`. Its common spectral limit
therefore equals

  partial_1 partial_2 Tr exp(-t L_z)|_(z=0),              (2)

and includes both ordered first-vertex terms and the complete mixed second
form vertex, with the time-simplex weights shown there. In particular this
applies to the actual fixed-cut Dirac form family when its common-domain,
holomorphic and uniform sectorial assumptions are verified; it does not
freeze the square-operator domains. A fixed bounded insertion can be included
in trace-norm convergence, but its explicit vertex formula and any moving
density terms still need separate work.

All constants and the embedding in this argument belong to one fixed cut.
The conclusion does not establish uniformity as that cut moves, identify
physical versus tangent subtraction, or control integration near t=0. No
numerical run or Lean certification is claimed.

Remaining to-do list: verify the actual cut-family assumptions uniformly,
match the physical source and regulator, handle density terms, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
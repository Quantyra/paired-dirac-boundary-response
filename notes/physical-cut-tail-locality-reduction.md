# Physical cut comparison: tail/locality reduction

This reduces the quantitative cut-to-complete response comparison to one
explicit separated-interior heat-locality estimate. The tail and path
calculations are proved under the recorded physical chart and heat bounds;
the needed locality estimate is stated as a hypothesis, not proved here.
This is not a source-normalization or complete regulator theorem.

Use the physical four-dimensional model and N(v) norm of
`physical-direction-cutoff-proper-time-path.md`, with its uniform fixed-cut
and complete-space H3/H5, partner, form and trace hypotheses. Let the outer
cut be u=delta and choose a fixed a in (0,1). A smooth cutoff depending on
u/delta^a separates each direction into v=v_int+v_tail, where v_tail is
supported in u<=2delta^a and v_int vanishes near that region. Its first two
physical derivatives are uniformly bounded: in the transition u~delta^a,
each physical derivative contributes a factor comparable to u partial_u.
The cubic/log field estimates and physical volume density give

  N(v_tail) <= C delta^(3a/2),                            (1)

uniformly for the recorded approximants. This uses |v|, |dv| and
|nabla^2 v|=O(u^3), including the cutoff transition.

The bulk ordered and mixed second-vertex estimates in the cited note are
bilinear and bounded by C t^(-3)N(v)N(w), for both the finite cut and the
complete operator under the common hypotheses. Replacing either direction
by its tail and integrating dt/t over [epsilon,t0], t0<=1, therefore costs
at most

  C delta^(3a/2) epsilon^(-3).                           (2)

Both directions are split; this bound accounts for all pairs with at least
one tail. The first-vertex boundary-form pieces at the cut are controlled
separately by `finite-cut-boundary-joint-proper-time-path.md`.

For the remaining interior directions, the support is separated from the
cut u=delta. The physical metric g=u^(-2) ghat and uniform boundedness of
|d log u|_g imply a lower bound on the physical distance

  dist(supp v_int, {u=delta}) >= c(1-a)|log delta|-C.     (3)

The same holds for w_int and for a cutoff commutator region placed between
u=delta and u~delta^a. No assumption that compactified distance equals
physical distance is used.

The missing quantitative input is an estimate, uniform in the cut and field
approximant, for the *complete interior mixed response* after identifying
the common interior bundles and operators. One sufficient form is

 |R_delta,int(t)-R_complete,int(t)|
     <= C delta^(-M) t^(-N)
           exp[-c_0 (1-a)^2 |log delta|^2/t],             (4)

for 0<t<=t0, with finite fixed M,N and positive c_0. It must include both
ordered first-vertex terms and the mixed second vertex, all cutoff
commutators, and the actual trace normalization. This estimate is not implied
merely by strong heat convergence. The compact-model commutator argument in
`complex-collar-commutator-trace-locality.md` is a possible route, but its
uniform off-diagonal trace/Schatten hypotheses and common-domain cutoff
identity must be proved for the physical noncompact/cut pair. In particular,
no global trace-class assumption on the complete heat operator is available.

If (4) is established, its contribution to the proper-time integral is at
most a polynomial in delta^(-1) and epsilon^(-1) times
exp[-c_0(1-a)^2 |log delta|^2/t0], hence tends to zero along any power-law
delta=epsilon^p. For the tail bound (2), it suffices that 3ap/2>3, or
p>2/a. For example,

  a=1/2,  delta=epsilon^5,  eta=epsilon^8                 (5)

gives a tail error O(epsilon^(3/4)), satisfies the separate boundary
requirement p>3/2 and background/direction requirement q=8>15/2, and has
eta/delta->0. The earlier delta=epsilon^2 path suffices for the boundary
pieces but not for the crude full-tail comparison (2); (5) is a stronger
candidate joint path, not an optimal rate or admission margin.

Even if (4) is proved, comparison of the cut and complete physical
responses does not identify the product-frame time-reduced source observable
or establish the existence of its renormalized finite part. No numerical run
or Lean certification is claimed.

Remaining to-do list: prove the physical separated-interior estimate (4),
match source normalization and subtractions, complete novelty and manuscript,
and certify supported claims in Lean on GCP.
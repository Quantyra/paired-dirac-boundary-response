# Physical cut comparison: tail/locality reduction

This reduces the quantitative cut-to-complete response comparison to one
explicit separated-interior heat-locality estimate. The tail and path
calculations are proved under the recorded physical chart and heat bounds.
The interior estimate was subsequently assembled conditionally, including
both ordered vertices and the mixed second vertex, in
`physical-cut-interior-response-locality.md`; that result uses the combined
uniform hypotheses listed there and in the localized Schatten note. Neither
note establishes source normalization or the complete regulator theorem.

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

The quantitative target is an estimate, uniform in the cut and field
approximant, for the *complete interior mixed response* after identifying
the common interior bundles and operators. One sufficient form is

 |R_delta,int(t)-R_complete,int(t)|
     <= C delta^(-M) t^(-N)
           exp[-c_0 (1-a)^2 |log delta|^2/t],             (4)

for 0<t<=t0, with finite fixed M,N and positive c_0. It must include both
ordered first-vertex terms and the mixed second vertex, all cutoff
commutators, and the actual trace normalization. This estimate is not implied
merely by strong heat convergence. The conditional assembly in
`physical-cut-interior-response-locality.md` derives this form from the
compact-model commutator argument and localized Schatten inputs. The
commutator argument in `complex-collar-commutator-trace-locality.md` still
requires verification of its uniform off-diagonal trace/Schatten hypotheses
and common-domain cutoff identity for the physical noncompact/cut pair. In
particular, no global trace-class assumption on the complete heat operator is
available.

Under the hypotheses of the conditional assembly, its contribution to the
proper-time integral is at most a polynomial in delta^(-1) and epsilon^(-1) times
exp[-c_0(1-a)^2 |log delta|^2/t0], hence tends to zero along any power-law
delta=epsilon^p. To check the endpoint, put L=|log delta| and
c=c_0(1-a)^2. For L large enough that X=cL^2/t0>=1, the substitution
y=cL^2/t gives

  integral_0^t0 t^(-N) exp(-cL^2/t) dt/t
    = (cL^2)^(-N) integral_X^infinity y^(N-1) exp(-y) dy
    <= C_(N,c,t0) (1+L^q) exp(-cL^2/t0),                 (5)

for each fixed N>=0 and some finite q. The last bound is the elementary
incomplete-gamma tail estimate (for N=0, use the exponential-integral bound).
Thus any extra fixed powers of epsilon^(-1) and delta^(-1) are dominated:
with delta=epsilon^p, their product with the right side of (5) is bounded by
a polynomial in |log epsilon| times
exp(-c p^2 |log epsilon|^2/t0 + C|log epsilon|), which tends to zero.
This closes only the time-endpoint and power-path bookkeeping, conditional on
(4) and the stated uniform estimates.

For the tail bound (2), it suffices that 3ap/2>3, or
p>2/a. For example,

  a=1/2,  delta=epsilon^5,  eta=epsilon^8                 (6)

gives a tail error O(epsilon^(3/4)), satisfies the separate boundary
requirement p>3/2 and background/direction requirement q=8>15/2, and has
eta/delta->0. The earlier delta=epsilon^2 path suffices for the boundary
pieces but not for the crude full-tail comparison (2); (6) is a stronger
candidate joint path, not an optimal rate or admission margin.

Even if (4) is proved, comparison of the cut and complete physical
responses does not identify the product-frame time-reduced source observable
or establish the existence of its renormalized finite part. No numerical run
or Lean certification is claimed.

Remaining to-do list: verify the physical bundle/domain and weighted-form
hypotheses for the conditional separated-interior estimate (4), match source
normalization and subtractions, complete novelty and manuscript, and certify
supported claims in Lean on GCP.

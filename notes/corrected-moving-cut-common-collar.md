# A fixed common collar for the corrected moving-cut model

This constructs the spatial matching and fixed separation required by
`complex-collar-commutator-trace-locality.md`, for collar-supported
insertions in the stipulated product-orbit model. It does not verify the
physical copy map or prove uniform global sectorial and Schatten bounds.

Fix h>0 small enough that the product-frame normal collar of the limiting
orbit exists on 0<=y<=5h and is disjoint from the regular bolt. For all
sufficiently small cut delta, use x=y-delta on the retained collar. Assume
the corrected metric and scalar fields from the moved-seam notes are defined
on 0<=x<=4h, with uniform positive metric bound and the common W3 and W1
bounds recorded there. Their even extensions are W3 and agree with the
corrected half data on x>=0. The correction supports have width O(delta^1/4)
and O(delta^1/2), so for small delta they lie inside x<h/4.

Choose a smooth even patch eta(x) equal to one for |x|<=3h and zero for
|x|>=7h/2, and a circle of length 2L with L>4h. For a fixed positive
constant a_* in the allowed coefficient range define

  f_aux(x)=a_*+eta(x)(f_corrected(|x|)-a_*).            (1)

Patch the corrected scalar base and geometric direction fields with the
same eta and compatible fixed extensions; preserve their evenness and their
uniform W1 bounds. Equation (1) is positive, agrees exactly with the
corrected finite-cut coefficient for 0<=x<=3h, and is constant near the
second reflection point. Its uniform W3 bounds follow from the fixed patch
and the corrected collar bounds. The auxiliary domain and half/full trace
construction are those of `compact-reflected-auxiliary.md`.

For scalar insertions supported in K={0<=x<=h/2}, choose a smooth cutoff chi
on the common half-collar equal to one for x<=h and zero for x>=2h, with
chi constant in the normal direction near x=0. Then

  dist(K,supp d chi) >= h/2,                            (2)

in the product proper coordinate, uniformly in delta and field cutoff.
The corrected physical model and auxiliary agree on the full support of chi,
including the seam correction. Their local first-order projector conditions
agree there when the stipulated spin/copy frame identification is imposed.
Thus the spatial support and positive-separation assumptions in the complex
commutator comparison hold with fixed cutoffs. The precise metric distance
is uniformly comparable to the coordinate distance by the common coefficient
bounds.

This construction covers insertions whose support is in the specified fixed
collar; it does not cover arbitrary global directions without a partition and
separate complement estimate. It also does not prove the uniform complex
sectorial, embedding, adjoint, or first-order elliptic constants for the
physical model, nor its identification with the source boundary coupling.
Those remain necessary to apply the locality theorem. No numerical run or
Lean certificate is claimed.

Remaining to-do list: verify uniform operator and physical bundle hypotheses,
handle non-collar contributions and common subtractions, complete prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
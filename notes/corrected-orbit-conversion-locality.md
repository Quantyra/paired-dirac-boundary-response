# Conditional locality of the corrected orbit conversion

This assembles `corrected-moving-cut-common-collar.md`, the corrected orbit
and auxiliary uniform-form notes, `corrected-collar-uniform-commutator.md`,
and `complex-collar-commutator-trace-locality.md`. It applies to the
stipulated compact model and collar-supported scalar directions, not yet to
an independently identified physical boundary-source realization.

Let P^c be the corrected compact orbit and A^c its reflected auxiliary half,
with the same local first-order expressions, projector and scalar families
on the fixed common collar. Let u,v be bounded scalar insertions supported in
K={0<=y<=h/2}, with common W1 bounds for the geometric directions. Assume
the common closed H1 projector/adjoint domains, the identified local spin
and copy frame, the fixed bolt/bundle model and the uniform sectorial,
embedding and graph hypotheses specified in the cited notes. The fixed
cutoff chi has supp(d chi) separated from K by at least h/2.

Under these hypotheses, the complex commutator and Schatten locality theorem
gives a single disk radius and constants A,c,N, uniform in the moving cut and
field approximation, such that for 0<t<=t0,

  ||1_K(K_P,z(t)-K_A,z(t))1_K||_1
      <= A t^(-N) exp(-c/t).                           (1)

The corrected common-collar construction supplies exact agreement where chi
and the insertions are supported; the uniform-form notes supply the required
model-side bounds; and `corrected-collar-uniform-commutator.md` supplies the
local first-order commutator estimate. The assumption that the cutoff maps
the actual composition domains into one another remains part of the declared
closed-domain hypotheses.

Taking a trace with u and differentiating via Cauchy's formula on the fixed
complex disk gives the same exponential bound, with a changed constant, for
D_v T_t(u); exchange u and v for the other geometric term. For the contact,
compress each heat factor to K, telescope the two products, and use the
uniform semigroup operator bound. Integrating over the split time gives an
exponentially small bound of the same form, after enlarging N and weakening c.
The entire thermal circle is retained. The auxiliary half/full and
per-exterior factors are those of `reflected-conversion-normalization.md`;
the identical normalization must be used on P^c.

The source angular counting estimates bound Theta by C/t and |Theta'| by
C/t^2. Therefore the difference of the complete *unsubtracted* geometric
plus contact conversion expressions is bounded by

  C t^(-N') exp(-c'/t),  0<t<=t0,                     (2)

for suitable uniform N',c'>0. Combining (2) with the separate P-to-P^c seam
form comparison in `seam-correction-locality-bridge.md` gives its stated
joint-path model error. No assertion is made for directions outside the fixed
collar; their contributions and overlaps must be retained in the full paper.

The hypotheses include the actual local frame, domain and trace conventions;
they have not been independently identified with the physical coupled source.
Equation (2) does not establish equality of local counterterms, existence of a
finite part, or path-independent regulator removal. No numerical run or Lean
certificate is claimed.

Remaining to-do list: verify the physical maps and non-collar terms, match
all subtractions and the regulator, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
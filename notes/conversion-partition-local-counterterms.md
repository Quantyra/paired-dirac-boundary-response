# Partition identities for local conversion counterterms

This checks the local-subtraction bookkeeping for the three-region split in
`conversion-three-region-decomposition.md`. It assumes the source local
coefficient formulas and their common measure; it does not prove the heat
remainder, physical boundary matching, or Lean certification.

Let p_0+p_1+p_2=1 be the fixed smooth partition, and u_i=p_i u,
v_j=p_j v. For any local bilinear coefficient built from u,v and linear
first or second differential operators with coefficients independent of
u,v, finite bilinearity gives the exact identity

  B(u,v)=sum_(i,j=0)^2 B(u_i,v_j).                    (1)

In particular this applies to the source terms uv, R uv,
<grad u,grad v>, R<grad u,grad v>, and (Delta u)(Delta v). The distributional
term <Delta R,uv> also obeys (1), since sum_(i,j)u_i v_j=uv as a test
function in its domain. No integration by parts is needed to obtain (1).

The cutoff-derivative terms are real contributions to individual regional
entries. For example,

  grad(p_i u)=p_i grad u+u grad p_i,
  sum_i grad(p_i u)=grad u,                            (2)

because sum_i grad p_i=0. Similarly,

  Delta(p_i u)=p_i Delta u+2<grad p_i,grad u>+u Delta p_i,
  sum_i Delta(p_i u)=Delta u.                         (3)

Thus the derivative-of-partition terms cancel only after summing the full
matrix of regional pairs. For instance the diagonal-only sum of the gradient
counterterm generally differs from the full counterterm; no diagonal-only
replacement is justified by locality.

If p_0 and p_2 have supports separated together with the derivatives needed
by the local operators, each local bilinear term in the (0,2) and (2,0)
entries vanishes. This includes the distributional curvature term when the
product u_0 v_2 is identically zero. The corresponding nonlocal finite-time
heat cross terms need not vanish exactly, but the separated contact and
geometric estimates give conditional exponentially small bounds. The entries
involving p_1 and the (2,2) entry remain and must be treated with their own
heat remainders and counterterms.

For the leading source conversion coefficient recorded in
`curved-conversion-leading-local-terms.md`, these identities apply to each
of U=int uv, P=int grad u.grad v and V=int R uv, and hence to their complete
inverse-time combination. They do not establish that the quoted source
coefficients are valid on the actual paired domain or uniformly in a moving
cut. No numerical run is used.

Remaining to-do list: bound transition and interior heat remainders with
these exact subtractions, verify physical source and regulator matching,
resolve prior art, prepare the manuscript, and certify claims in Lean on GCP.
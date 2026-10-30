# L2-weighted heat convergence for two cut boundary models

This connects the abstract fixed-factor result in
`complete-exhaustion-boundary-independence.md` to scalar weights in the
physical direction class. It is a fixed-positive-time model statement, not
an identification of the source's conformal-boundary mixed trace.

Let X_n exhaust the fixed complete physical model X, and let
K_n^(1)(t),K_n^(2)(t) be zero-extended finite-cut heat operators for two
self-adjoint paired generators satisfying the common-core hypotheses in the
boundary-independence note. Let K(t) be the limiting complete heat operator.
Suppose, for both families, the local H5 smoothing, weighted heat diagonal,
local coefficient convergence and chart-summation hypotheses in
`finite-cut-bulk-interior-time-convergence.md` hold with common constants.
In particular, for any fixed physical L2 scalar a and s>0, those hypotheses
give

  M_a K_n^(j)(s) -> M_a K(s) in S2,       j=1,2.              (1)

The operators in (1) are zero-extended cut heat operators; the identity on
the orthogonal complement of the direct-sum generator must be removed before
forming these weighted factors. This matters because multiplication by an
L2 function on a non-atomic infinite-volume space is not generally
Hilbert--Schmidt by itself.

Let a_n,d_n be real bounded scalar weights with a_n->a and d_n->d in
physical L2, and suppose the weighted diagonal bounds are uniform. The
weighted S2 estimate of the cited note extends (1) to a_n and d_n. Since
K_n^(j)(t)=K_n^(j)(t/2)^2 on the cut, zero extension preserves the product,
and Schatten Holder gives

  M_(a_n) K_n^(j)(t) M_(d_n)
     = [M_(a_n) K_n^(j)(t/2)]
          [M_(d_n) K_n^(j)(t/2)]*                            (2)

and convergence of the products in S1 to M_a K(t) M_d. Consequently

  ||M_(a_n)[K_n^(1)(t)-K_n^(2)(t)]M_(d_n)||_1 -> 0.          (3)

This is stronger for these particular weights than the fixed abstract
Hilbert--Schmidt sandwich in the boundary-independence note. It is still
conditional on both boundary families satisfying the common smoothing and
local-coefficient hypotheses, and it provides no rate or uniformity as
t->0.

For the fixed RN source, take a=b_conf u and d=w, with stationary radial
cubic/log directions and b_conf=log(b_sphere/r). The physical-volume audit
shows both weights are L2, despite a generally failing to be L1. With smooth
bounded logarithm truncations b_n satisfying |b_n|<=|b_conf| and
b_n->b_conf pointwise, dominated convergence gives b_n u->b_conf u in L2;
cutoff approximants for w require their own L2 convergence. Under the same
uniform heat hypotheses, (3) applies to those weights. This does not justify
moving b_conf through an unbounded Dirac or mixed form vertex: equation (3)
is a weighted heat-kernel comparison, not the full mixed response. A
spectral-parameter-dependent transported boundary relation also must first
be realized by a self-adjoint family satisfying the hypotheses.

Physical-half and angular normalization, boundary terms, the other mixed
vertices, proper-time subtractions and the regulator limit remain open. No
numerical or Lean certification is claimed.

Remaining to-do list: verify the actual physical boundary and uniform weighted
smoothing, establish the complete mixed trace and regulator, resolve novelty,
finish the manuscript, and certify supported claims in Lean on GCP.

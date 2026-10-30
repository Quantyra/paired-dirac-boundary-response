# A joint proper-time path for the ordered boundary terms

This extracts explicit small-time powers from the fixed-cut boundary estimates
in `finite-cut-mixed-boundary-bulk-pair.md` and
`finite-cut-first-vertex-boundary-pair.md`. It applies only to their stated
physical four-dimensional model and assumptions. It is not a complete
common-regulator theorem, a product-orbit trace identification, or a Lean
certificate.

Let 0<t<=1, let delta be the physical outer cut, and take the radial
cubic/log directions and uniformly controlled smooth approximants of the
cited notes. Assume their uniform graph/trace estimates, H3 and H5 heat
smoothing, actual mixed domains and form-trace identities. Write B_v for
the first-vertex boundary form and q_v^bulk for its complementary bulk form.
The physical boundary weights obey uniformly

  ||h_v||_infinity <= C delta^3,  ||h_v||_1 <= C,
  N(v) <= C,                                              (1)

and similarly for w. Here the boundary area is included in the L1 norm.

For 0<s<=t/2 put r=t-s. The multiplicative trace inequality and graph
estimates give ||gamma K_s||<=C s^(-1/4). For r/2>=t/4, the H3 heat
estimate gives a boundary evaluation bound C t^(-3/2); the H5 heat estimate
gives a volume evaluation bound C t^(-5/2) after applying any long
operator of order at most two. Using the factorization in the mixed-pair
note therefore gives, with fixed seed and family constants made explicit,

 |Tr_form[B_w K_s q_v^bulk K_r]|
     <= C delta^(3/2) t^(-4) s^(-1/4).                  (2)

Hermiticity gives the same estimate with s and r interchanged on the other
half; exchange v,w for the other cross term. For the boundary-boundary pair,
use ||gamma K_s gamma*||<=C s^(-1/2) and two long H3 boundary factors to get

 |Tr_form[B_v K_s B_w K_r]|
     <= C delta^3 t^(-3) s^(-1/2),  0<s<=t/2,           (3)

with the exchanged estimate at the other endpoint. These are crude upper
bounds and are not asserted to be sharp.

The ordered mixed heat derivative contains the time-simplex weight t-s,
as in `physical-fixed-time-mixed-response-assembly.md`. Integrating the
absolute bounds over s, including both orderings and all terms with at least
one boundary form, yields

  |R_boundary(delta,t)|
      <= C [delta^(3/2) t^(-9/4)+delta^3 t^(-3/2)].     (4)

The powers follow from t * integral_0^(t/2) s^(-1/4) ds = O(t^(7/4))
and t * integral_0^(t/2) s^(-1/2) ds = O(t^(3/2)). Constants absorb the
finite number of vertices and their fixed coefficients.

For the ordinary proper-time weight dt/t, with epsilon in (0,1) and fixed
upper endpoint t0<=1, (4) implies

 integral_epsilon^t0 |R_boundary(delta,t)| dt/t
    <= C [delta^(3/2) epsilon^(-9/4)
                    +delta^3 epsilon^(-3/2)].            (5)

Consequently any joint path delta=epsilon^p with p>3/2 makes this particular
integral tend to zero. The same conclusion holds for a smooth delta(epsilon)
with both terms on the right of (5) tending to zero. This is a sufficient
condition for the boundary-form pieces only, not a physical admission margin
or an optimal path.

The calculation uses the already assembled four-dimensional heat trace; an
additional angular weight must not be inserted without a new normalization
and power count. Other regulator weights, local subtraction/restoration
terms, the bulk-bulk response, the mixed second vertex, and the mapping to
the source's orbit trace require separate estimates. The bound does not
establish a limit for any of those pieces, nor the overall finite part.
No numerical run or Lean certification is claimed.

Remaining to-do list: match the physical source and trace normalization,
control the bulk and second-vertex subtractions under the same regulator,
finish novelty and manuscript, and certify supported claims in Lean on GCP.
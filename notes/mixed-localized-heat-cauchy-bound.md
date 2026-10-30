# Conditional mixed heat bound by complex parameters

This gives an endpoint-safe bound for two cubic-localized directions. It is
an abstract compact-comparator result, conditional on the uniform sectorial
and smoothing hypotheses below; it is not a physical response estimate.

Let V embed continuously and densely in H, with compact inclusion J: V -> H
in Schatten S_n for an integer n > d. Suppose the complexified closed forms
q_(z,w), on the same V, generate holomorphic semigroups T_(z,w)(t). For
0 < ell <= 1 suppose that the two localized directions satisfy the W1-infinity
bounds C ell^2 from `cubic-localization-vertex-bounds.md`. Assume there are
positive r and C, independent of ell, such that throughout the polydisc

    |z| < r ell^(-2),  |w| < r ell^(-2),

these semigroups exist, depend holomorphically on (z,w), and satisfy

    ||T_(z,w)(t)||_(H -> V) <= C t^(-1/2),  0 < t <= 1.       (1)

In a concrete uniformly elliptic compact family, (1) and the common sectorial
constants must be established uniformly on this entire complex polydisc;
the real form-vertex estimates alone do not establish them. The smallness of
r is intended to keep the complex coefficient perturbations uniformly
controlled, since |z| ||u_ell||_(W1-infinity) and its w analogue are bounded.

The Schatten ideal property gives

    ||T_(z,w)(t)||_(S_n) <= ||J||_(S_n) C t^(-1/2).

Factor the semigroup into n equal-time factors and apply Schatten Holder.
For 0 < t <= 1 this yields the uniform bound

    ||T_(z,w)(t)||_1 <= A_n t^(-n/2),                           (2)

where A_n is independent of ell, z, w and t. For any 0 < rho < r,
Banach-valued Cauchy estimates on the smaller polydisc, applied to the
trace-class-valued holomorphic semigroup, give

    ||(partial_z partial_w T_(z,w)(t))|_(0,0)||_1
        <= A_n rho^(-2) ell^4 t^(-n/2).                          (3)

Trace-class holomorphy follows by factoring the semigroup into n holomorphic
S_n-valued factors, provided the smoothing maps in (1) are holomorphic as
V-valued operators; this is included in the hypothesis. An explicitly
trace-class holomorphic family satisfying (2) would suffice instead. The
bound includes every contribution to the mixed derivative, including the
mixed form vertex and products of first vertices. It avoids claiming that
individual double-Duhamel integrals converge in trace norm when their middle
heat factor is estimated by a nonintegrable endpoint bound.

For a uniformly bounded insertion B, the corresponding scalar mixed trace
is bounded by ||B|| times (3). A single localized direction paired with a
fixed direction admits the analogous ell^2 estimate only if a fixed-radius
complex disc for that direction and the same uniform assumptions are proved.
The power t^(-n/2) is generally nonsharp. These estimates alone neither give
small-time integrability nor control an angular sum, a fixed-insertion
complement, physical domain identification, or regulator removal. In
particular, they do not establish the physical mixed response or a Lean
certificate. No numerical calculation is used.

Remaining to-do list: establish the uniform complex-family hypotheses for
the relevant comparator, control the complete physical response and regulator,
verify domains and novelty, prepare the manuscript, and certify supported
claims in Lean on GCP.

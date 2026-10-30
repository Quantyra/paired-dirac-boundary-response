# Uniform scaled-collar Duhamel endpoint bound

This resolves the elementary time-integral step in
`euclidean-collar-cutoff-comparison.md` when the collar separation shrinks.
It is conditional on the stated uniform off-diagonal operator estimates; it
does not establish those estimates for the physical paired family or prove
the full mixed response.

Let 0<ell<=ell0, and suppose the common cutoff has its transition separated
from the insertion support K_ell by at least c0 ell. Assume the domain and
Duhamel identity of the cited comparison hold, and that for 0<r<=t0 the two
Hilbert--Schmidt factors there obey, uniformly in ell,

    ||1_K exp(-rL) 1_F||_2 <= A ell^(-a) r^(-N) exp(-c ell²/r),
    ||1_F C_ell exp(-rL0) 1_K||_2
                              <= A ell^(-a) r^(-N) exp(-c ell²/r), (1)

for fixed nonnegative a,N and positive A,c. The second bound includes all
scaled-cutoff derivatives and graph constants; its uniformity is a separate
hypothesis. The compressed trace-norm difference is bounded by the product
integral from the comparison note. Set s=tx and q=c ell²/t. Since
1/[x(1-x)]>=4, for q>=1,

  integral_0^1 [x(1-x)]^(-N) exp(-q/[x(1-x)]) dx
    <= exp(-2q) integral_0^1 [x(1-x)]^(-N)
                            exp(-1/[2x(1-x)]) dx
    <= C_N exp(-2q).                                      (2)

The integral defining C_N is finite for every fixed N because its exponential
dominates the endpoint powers. Consequently, whenever t<=c ell²,

 ||1_K (exp(-tL)-exp(-tL0)) 1_K||_1
   <= C_N A² ell^(-2a) t^(1-2N) exp(-2c ell²/t).          (3)

The constant C_N is independent of ell and t. This explicitly preserves the
shrinking separation: a proof only for fixed positive distance would not
supply (3). For ell=t^p with 0<p<1/2, (3) tends to zero faster than any
power, even after multiplying by any fixed powers of t^(-1) and ell^(-1).
In particular its upper bound is integrable against dt/t² near zero on that
path. Bounded insertions supported in K can be included by the trace ideal
inequality, using their operator norms.

Equation (3) covers the compressed heat difference only. The estimates in
(1), the Duhamel domain identity, and their uniform constants must be proved
for the actual physical and auxiliary operators. A two-insertion contact
has an additional heat-time integration, and the geometric and coincidence
vertices have their own derivative and summation requirements. A
 time-dependent shrinking insertion also leaves the fixed-direction
complement uncontrolled. No common-regulator limit or Lean certificate is
claimed, and no numerical calculation is used.

Remaining to-do list: establish (1) and the physical domains uniformly,
control the complete mixed response and fixed complement, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
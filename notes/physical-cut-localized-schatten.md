# Localized differentiated Schatten locality for the physical cut

This upgrades `physical-cut-interior-operator-locality.md` to a localized
Hilbert--Schmidt estimate for up to two output derivatives, under its
uniform form/domain hypotheses and the H5 chart estimates of
`physical-h5-from-mixed-h3.md`. It does not yet prove the mixed-response
trace comparison, a physical source match or Lean certification.

Fix 0<a<b<1. Let K_delta be a compact common-interior set in u>=c delta^a,
and let chi_delta be a smooth multiplier supported in a slightly larger set
inside u>=c' delta^a, with uniformly bounded physical derivatives through
order five. Let P_delta be multiplication by the indicator of K_delta, and
write

  G_delta(t)=K_delta_cut(t)-K_complete(t),
  T_(delta,k)(t)=M_chi_delta nabla^k G_delta(t) P_delta,
  k=0,1,2.                                                (1)

The finite-cut semigroup is embedded by zero extension; both output supports
are away from its boundary. The operator locality argument, applied to a
larger output set containing supp chi_delta and the input set K_delta,
gives

  ||1_U G_delta(t) P_delta|| <= C exp(-c d_delta^2/t),
  d_delta >= c_0(b-a)|log delta|-C_0,  0<t<=1.            (2)

Here U is a fixed-physical-radius enlargement of supp chi_delta which remains
separated from the commutator region at u~delta^b. Formula (2) follows from
the same two-sided Duhamel estimate even if the input and output sets are
not identical, provided each is separated from that region.

On nested physical charts in U, the difference of the two heat outputs has
H5 norm at most C t^(-5/2)||f||_2, by the uniform estimates for each
semigroup. The local L2 norm is bounded by (2). Interpolating to H^(9/2) and
using H^(9/2)->C2 in four dimensions yields, for k<=2,

  ||T_(delta,k)(t)|| <= C delta^(-M_2) t^(-9/4)
                              exp(-c_1 d_delta^2/t).     (3)

The exponent c_1 is smaller than in (2), and absorbs the 1/10 interpolation
power. The polynomial factor accounts for the physical volume of the output
region when converting local pointwise bounds to an L2 operator bound.
The estimate holds uniformly in all cut and field approximants
satisfying the stated hypotheses. Multiplication by chi_delta and its
physical derivatives is included in the chart estimates.

To obtain a Hilbert--Schmidt bound, assume the physical region supporting
chi_delta admits at most C delta^(-M_0) fixed-radius charts with uniformly
bounded overlap, frames and extension constants. For the recorded
asymptotically conformal fixed seed this follows from its physical volume
bound O(delta^(-3a)) and a uniformly locally finite bounded-geometry cover;
the precise exponent is immaterial. On each chart, the output map in (1)
has an H^(5-k) bound C t^(-5/2). The compact embedding
H^(5-k)->L2 in dimension four has singular values O(n^(-(5-k)/4)). Patching
the finite cover and using singular-value inequalities gives a polynomial
cover factor A_delta<=C delta^(-M_1) such that, for every n>=1,

  s_n(T_(delta,k)(t)) <= A_delta t^(-5/2) n^(-3/4).     (4)

The exponent 3/4 is the weakest of k=0,1,2. For z=||T|| and
A=A_delta t^(-5/2), split the squared Hilbert--Schmidt norm after n terms:

  ||T||_2^2 <= n z^2 + C A^2 n^(-1/2).                  (5)

Choosing n comparable to (A/z)^(4/3), when z>0, gives
||T||_2 <= C A^(2/3) z^(1/3); the zero case is immediate. Equations (3)--(5)
therefore imply, after enlarging finite exponents,

  ||T_(delta,k)(t)||_2
     <= C delta^(-M) t^(-N) exp[-c_2 d_delta^2/t],      (6)

for k<=2 and 0<t<=1. The same estimate holds for adjoints, with reversed
operator ordering. It uses only localized compact output and a bounded input
projection; no global trace of the complete heat operator is assumed.

Equation (6) is a heat-factor result, not yet the mixed-response estimate
in the tail/locality reduction. The latter must telescope the two ordered
vertices and the mixed second vertex, retain their direction weights and
cutoff commutators, and justify time integration at endpoints. It must also
verify the physical bundle/domain identification and common regulator. No
numerical run or Lean certification is claimed.

Remaining to-do list: assemble the localized mixed-response trace from (6),
match physical source and subtractions, finish novelty and manuscript, and
certify supported claims in Lean on GCP.
# Local-test proof of the RN log-cubic trace obstruction

This removes the heat-diagonal lower-bound assumption from `log-cubic-single-insertion-trace-obstruction.md` for the specified fixed smooth RN-AdS seed and geometric magnetic Dirac square. It uses localized test spinors rather than a pointwise lower heat-kernel estimate. It does not establish divergence of a subtracted or mixed response, identify the physical paired bundle, or provide Lean certification.

## Setup and conclusion

Let X be the complete nonextremal Euclidean RN-AdS exterior with regular bolt and metric in `rn-physical-metric-completeness.md`. Use the static sphere monopole connection, smooth in its local bundle charts, and let D be a closed realization of the corresponding geometric Dirac expression containing compactly supported smooth interior spinors. Put L=D*D. Let u=b_conf v be the fixed stationary log-cubic scalar in `conformal-log-direction-physical-volume.md`, with nonzero cubic coefficient. Then, for every fixed t>0,

  M_u exp(-tL) is not trace class.                              (1)

The same holds for L+M² with fixed M>=0. The conclusion is for the stated fixed geometric model; the physical copy identification, boundary prescription and actual source observable remain separate questions.

## Uniform local test spinors

Write the end metric as ds²+a(s)² d tau²+r(s)² g_S², with ds=dr/sqrt(F), a=sqrt(F). On large r, both a/r and dr/ds /r have positive finite limits, and all fixed-order s derivatives of log a and log r are bounded. In a neighborhood of a point (s0,tau0,omega0), use coordinates

  x0=s-s0,  x1=a(s0)(tau-tau0),  (x2,x3)=r(s0) exp_(omega0)^(-1)(omega).

For a fixed small coordinate radius h>0 and all sufficiently large r(s0), this chart is embedded: the thermal period and the angular injectivity radius, measured in these coordinates, tend to infinity. The metric and its inverse have uniform finite-order bounds there, and the metric is uniformly comparable to the Euclidean metric. This follows from the bounded ratios a(s)/a(s0), r(s)/r(s0), and the smooth round-sphere metric in the scaled normal coordinates. The local volume density is bounded above and below uniformly.

The orthonormal-frame connection coefficients are uniformly bounded in these charts. The monopole curvature has orthonormal norm O(r^-2); a local radial gauge on a ball of fixed radius has uniformly bounded connection one-form. Choose a unit local spin/twist vector and a fixed smooth bump supported in a smaller coordinate ball, normalized in physical L2. Uniform metric, frame, connection and volume bounds give a constant C0, independent of its center, such that

  ||psi||_2=1,  supp psi in the chart,  ||D psi||_2²<=C0.      (2)

The spinor is compactly supported away from the bolt and any finite outer cut; its local gauge frame is not claimed to extend globally. Adding a fixed M² to L changes C0 to C0+M².

## Packing and spectral lower bound

Let R_k=2^k R0. In each shell R_k<=r<=2R_k, select points with a fixed positive proper-radial separation, fixed physical thermal separation and fixed physical spherical separation. Equivalently, use tau spacing proportional to R_k^-1 and a sphere packing with angular separation proportional to R_k^-1, in a proper-radial subinterval of fixed length. For sufficiently small h, the corresponding local chart supports are disjoint, and there are at least c R_k^3 such supports in that shell. The exponent three comes from one thermal and two sphere directions; the radial proper width is fixed. Shells can be chosen with disjoint supports across k.

For each normalized psi in (2), the spectral theorem and Jensen's inequality applied to its spectral probability measure for L give

  <psi,exp(-tL)psi> >= exp(-t <psi,L psi>) >= exp(-t C0).     (3)

The form identity <psi,L psi>=||D psi||² is understood in the quadratic-form sense; psi need only lie in Dom D. On each shell, |u|>=c R_k^-3 log R_k, and u has one fixed sign on the entire tail. Local heat smoothing and the diagonal trace formula yield, for the union B_k of these disjoint supports,

  integral_(B_k) |u(x)| tr_fiber K_t(x,x) dvol(x)
     >= c R_k^-3 log R_k Tr(1_(B_k) K_t 1_(B_k))
     >= c' exp(-t C0) log R_k.                                 (4)

The second inequality uses the orthonormal compactly supported test spinors and positivity of the local heat operator. Summing over k diverges. Compressing M_u K_t to finite unions of shells and multiplying by the constant tail sign yields local traces tending to infinity; if M_u K_t were trace class, each absolute compressed trace would be bounded by its trace norm. This contradiction proves (1). The argument does not require a uniform pointwise bound for K_t(x,x), a uniform spectral gap, or a global orthonormal frame.

No conclusion follows for the full mixed response: products of two L2 directions, relative heat operators, counterterms, moving densities or paired cancellations may be trace class even though this unmodified single insertion is not. Finite-cut trace norms would also diverge under a separately verified local heat convergence to this seed and a compatible tail cutoff; that convergence is not proved here. The local-test proof is ordinary mathematics and has not been Lean checked.

Remaining to-do list: identify the physical bundle and source trace, prove the needed relative/subtracted mixed response and regulator limits, resolve novelty, complete the manuscript, and certify supported claims in Lean on GCP.
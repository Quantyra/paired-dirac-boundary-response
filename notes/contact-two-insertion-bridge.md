# Two-insertion auxiliary bridge and thermal images

Status: ordinary derivation for the source's auxiliary full-line radial
operator, not a proof of the global physical paired domain or a Lean
certificate. It supplies the representation assumed in
[the thermal-image bound](contact-thermal-images.md).

## Setup and claim

Let f be positive, bounded and Lipschitz on R, with m≤f≤F and
||f'||∞≤G. In the source's radial half-density frame, assume the two
rank-two orbit spin sectors at thermal momentum p are the closed scalar
Schrödinger operators

    H_p^±=−∂_y²+p² f(y)² ± p f'(y).

Let u∈L¹∩L∞ and v∈L∞ be real normal-coordinate insertions. For t>0,
define the full-line time-reduced contact by integrating over s∈[0,t]
the sum of both spin traces of u e^(−(t−s)H_p^±) v e^(−sH_p^±),
then either integrate dp/(2π) (continuous time) or use the normalized
antiperiodic thermal sum T^(−1)Σ_j at p_j=2π(j+1/2)/T. Under these
trace conventions, the continuous-time expression is

    I_cont(t)=(1/(2π))∫dy u(y) E[V_h A_h^(−1/2)
                                  exp(t B_h²/(4A_h))],  (1)

where h=√t, ξ has covariance 2(min(s,r)−sr),
V_h=∫₀¹v(y+hξ_α)dα, A_h=∫₀¹f(y+hξ_α)²dα and
B_h=∫₀¹f'(y+hξ_α)dα. The finite-temperature expression is obtained
by multiplying the integrand inside the expectation by

    Σ_{k∈Z}(−1)^k exp[−k²T²/(4tA_h)]
                       cos[kTB_h/(2A_h)].                  (2)

This establishes the two-insertion auxiliary representation under the
stated scalar-operator and trace assumptions. The actual paired half-trace
and per-exterior counting require the separate domain and fiber matches.

## Derivation

For each fixed p and spin sign, the scalar potential is bounded and real,
so the Feynman–Kac bridge formula gives the diagonal trace of the split heat
product. The intermediate insertion lies at bridge time α=s/t (or 1−α,
which gives the same integral after α is integrated). Thus the sum of the
spin sectors is

    2t(4πt)^(−1/2) ∫dy u(y) E[V_h e^(−tp²A_h) cosh(tpB_h)].

The factor t comes from ds=t dα. For the continuous momentum measure,
completing the square gives

    ∫_R dp/(2π) 2e^(−tA p²)cosh(tpB)
       = (πtA)^(−1/2) exp[tB²/(4A)].

Multiplication by t(4πt)^(−1/2) produces 1/(2π) A^(−1/2), which
proves (1). This explicitly includes the rank-two spin sum and does not
introduce an extra half-line factor.

For p_j=2π(j+1/2)/T, Poisson summation of the same Gaussian gives, for
each path, the zero-image Gaussian integral multiplied by (2). The factor
(−1)^k comes from the half-integer shift, and the opposite spin signs
combine the complex phases into the cosine. The normal insertion V_h is
independent of p, so it remains inside the same expectation and does not
alter the Poisson transform.

The interchanges can be justified by domination: A_h≥m², |B_h|≤G,
|V_h|≤||v||∞ and p²m²−|p|G bounds the exponent from above after its
minus sign. The resulting Gaussian in p and its discrete counterpart are
summable for every t>0, while |u| is integrable. Bounded f' may be taken
as its a.e. representative; the bridge occupation integrals are
insensitive to null-set changes. Positive-time heat products are localized
by u and interpreted by the same Feynman–Kac trace formula. These arguments
do not require differentiating f in a parameter.

The actual finite-cut/bolt operator is not the whole-line auxiliary model.
The equality of their local traces requires a quantified localization defect
and the paired reflection/domain identification. The finite-temperature
normalization, angular tower, zero mode, common regulator, and metric
variations must remain in the same observable. No numerical computation
is used to replace those obligations.

Remaining to-do list: bound the actual-to-auxiliary localization defect,
match the paired and per-exterior trace, control metric/regulator limits,
complete novelty review, and certify supported results on GCP.

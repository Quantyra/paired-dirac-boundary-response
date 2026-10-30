# Locality bound for two auxiliary contact bridges

Status: conditional scalar-model estimate, not an identification of the
physical bolt or paired boundary and not Lean-certified. It quantifies one
localization step for [the two-insertion bridge](contact-two-insertion-bridge.md).

## Claim

Let f₁,f₂ be positive bounded Lipschitz functions on R, both satisfying
m≤f_i≤F and ||f_i'||∞≤G. Assume they agree on the d-neighborhood of
the support of u, for some d>0. Let u∈L¹∩L∞, v∈L∞ be normal scalar
insertions, and use the two-spin continuous-momentum bridge contact I_i(t)
of the preceding note. Then, for t>0,

    |I₁(t)−I₂(t)| ≤ [2/(πm)] e^(ct) ||u||₁||v||∞ e^(−d²/t),
    c=G²/(4m²).                                             (1)

For the finite antiperiodic period T>0, the same right side multiplied by

    C_T(t)=1+2e^(−a(t))/(1−e^(−3a(t))),
    a(t)=T²/(4F²t),

bounds the difference of the complete thermal contact sums. In particular,
C_T(t) is uniformly bounded on 0<t≤t₀ for fixed T,F,t₀. These estimates
are uniform for any family with common m,F,G,d and insertion norms.

## Proof

Couple the two formulas with the same covariance-2 bridge ξ. If
sup_{s∈[0,1]}|√t ξ_s|<d and y lies in supp(u), the whole bridge path stays
in the agreement region; f₁,f₂ and their weak derivatives then agree along
that path almost surely. The A_h and B_h factors, and hence the integrands,
coincide. The shifted insertion v is the same in both formulas and is
bounded even if its argument leaves the agreement region.

For either integrand, A_h^(−1/2)exp[tB_h²/(4A_h)]≤m^(−1)e^(ct), and the
shifted v average is bounded by ||v||∞. The standard reflection-principle
bound for this bridge is

    P(sup|ξ_s|≥d/√t) ≤ 2 exp(−d²/t).

It follows from the one-sided bridge maximum law and a union bound for the
two signs; the variance convention is essential. The difference is at
most the sum of the two absolute integrands on the exit event. Combining
that factor two, the exit bound, the source's 1/(2π) prefactor and ∫|u|
gives (1).

For finite temperature, the complete image multiplier has absolute value at
most C_T(t), by the same geometric-series bound in
[the thermal-image note](contact-thermal-images.md). It depends on each
model's A_h,B_h but is uniformly bounded on the exit event, and agrees for
the two models on paths that remain in the common region. The same coupling
therefore proves the stated thermal bound. Multiplying either bound by an
angular O(t^(−2)) endpoint weight still tends to zero; no thermal mode is
dropped. This estimate is a symbolic error bound, not an admission margin.

## Scope

Both operators here are auxiliary scalar whole-line operators with the same
coordinate and spin-sector representation. The argument does not compare an
auxiliary line directly to the actual disk bolt, a compact reflected
cylinder, or a manifold with a different domain. Such a comparison needs a
local coupling or an off-diagonal heat-kernel/commutator estimate that
accounts for the paired boundary and the actual global geometry. Parameter
derivatives and a shrinking agreement distance are also outside (1).
The source's Feynman–Kac and trace hypotheses must hold for both models.
No numerical test replaces the exit-probability proof.

Remaining to-do list: bridge the actual finite geometry to the auxiliary
model, verify metric and regulator uniformity, complete the novelty audit,
and certify supported results on GCP.

# Uniform logarithmic tail from a fractional translation bound

Status: ordinary sufficient condition for a bounded family of flat tangent
profiles. It strengthens [the fixed-profile fifth-derivative result](log-tail-integrable-fifth.md)
with an explicit uniform Fourier modulus. It is not implied by the original
weighted class, a physical regulator theorem, or a Lean certificate.

## Family hypothesis and Fourier estimate

Fix 0<σ≤1 and the even cutoff χ in the earlier note. Let profiles have

    u=χ[c_u|y|³+d_u|y|⁴log|y|]+r_u,

with the same trace matching and L¹ fifth derivative g_u=r_u^(5) required
there. Assume uniformly |c_u|+|d_u|≤K and

    ||g_u(·+h)-g_u||₁ ≤ M |h|^σ,      |h|≤1.             (1)

For |k|≥π, choose h=π/k. Translation of the Fourier integral gives
|1-e^(ikh)| |ĝ_u(k)|≤||g_u(·+h)-g_u||₁. Since |1-e^(ikh)|=2,

    |r̂_u(k)| ≤ (Mπ^σ/2)|k|^(-5-σ).                     (2)

The fixed cutoff's pure-profile Fourier remainder is rapidly decreasing.
Consequently, for two profiles u,w in this family and |k|≥k₀≥π,

    |conjugate(û)ŵ -144 c_u c_w |k|^-8
       +288π(c_u d_w+d_u c_w)|k|^-9|
       ≤ C(K,M,χ) |k|^(-9-ρ),                            (3)

where ρ=min(σ,1). This retains the log–log |k|^-10 term and all cross
terms; it is uniform over the stated family. Fixed localization also
provides a uniform low-frequency product bound when ||u||₁,||w||₁ are
uniformly bounded.

## Uniform flat tangent remainder

Assume the flat multiplier and subtraction in
[the boundary coefficient note](flat-boundary-coefficients.md), and the
physical-half normalization only as a separate hypothesis. With uniform
L¹ bounds and (1), its standard split at |k|=t^-1/2 gives

    B_t(u,w) = -15 c_u c_w t^(5/2)/(1024√π)
       -(c_u d_w+d_u c_w)t³ log(t)/(70π) + O(t³),       (4)

where the O(t³) constant is uniform over the family for sufficiently small
t>0, depending on K,M,σ,χ and the L¹ bounds. To see the improvement over
mere little-o, use (3) and the small-x kernel bound |R₃(x)|≤Cx⁴. The
intermediate-frequency remainder is bounded by

    C t³ ∫_(k₀)^(t^-1/2) k^(-1-ρ) dk ≤ C' t³.

For higher frequencies, the global bound R₃(x)=O(1+x³) gives an O(t³)
bound (indeed a positive extra power when ρ>0); the fixed low-frequency
part is O(t³). The explicitly retained cubic and cubic–log tail terms are
handled as in the boundary coefficient note, including the O(t³)
cutoff-dependent finite part. No finite-frequency truncation is used.

## Scope

Condition (1) is a uniform L¹ translation modulus for the post-jet fifth
derivative. It is a checkable sufficient condition, not a consequence of a
uniform L¹ bound alone or of the original y⁴log weight. The constants in
(4) are not physical admission margins; the physical bundle, boundary
normalization, contact term and curved common-regulator estimate remain
separate obligations. No numerical computation is used.

Remaining to-do list: verify whether the intended fields and their
approximants satisfy (1), complete the physical response and novelty audits,
write the manuscript and certify supported claims in Lean on GCP.

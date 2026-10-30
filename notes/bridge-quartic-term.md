# The quartic bridge-exponential term at the endpoint cutoff

Status: ordinary bound for one retained term of the source bridge, not a
proof of the full curved contact or a Lean certificate. It complements
[the higher exponential-tail bound](bridge-exponential-tail.md), under
stronger W^{2,∞} regularity of the coefficient and W^{1,∞} of the shifted
insertion.

## Claim

Use the same A_h, B_h and bridge as in the exponential-tail note. Assume
f is real with m≤|f|≤F, ||f'||∞≤G, ||f''||∞≤H; u∈L¹; and
v∈W^{1,∞} with ||v||∞≤V and ||v'||∞≤V₁. Interpret f and v by their
Lipschitz representatives. Let

    T₄(h)=h⁴/(64π) ∫dy u(y) E[
        (∫₀¹ v(y+hξ_α)dα) B_h(y)⁴ A_h(y)^(−5/2) ],
    T₄,loc(h)=h⁴/(64π) ∫dy u(y)v(y) f'(y)⁴ |f(y)|^(−5).

For the bridge covariance 2(min(s,t)−st), put

    μ=∫₀¹ E|ξ_s|ds=√π/4,
    D=V₁G⁴m^(−5)+V[4G³Hm^(−5)+5FG⁵m^(−7)].

Then, uniformly for real h,

    |T₄(h)−T₄,loc(h)| ≤ μ D |h|⁵ ||u||₁/(64π).          (1)

The bound holds uniformly for approximants sharing these constants. Its
constant is a symbolic upper bound, not a physical admission margin.

## Proof

Let X=∫₀¹|ξ_s|ds and v_h=∫₀¹v(y+hξ_s)ds. Lipschitz bounds give

    |v_h−v(y)|≤V₁|h|X,
    |B_h−f'(y)|≤H|h|X,
    |A_h−f(y)²|≤2FG|h|X.

Both A_h and f(y)² are at least m². The scalar mean-value theorem gives
|A_h^(−5/2)−|f(y)|^(−5)|≤(5/2)m^(−7)|A_h−f(y)²|, and
|B_h⁴−f'(y)⁴|≤4G³|B_h−f'(y)|. A telescoping product estimate,
using |B_h|,|f'|≤G and A_h^(−5/2)≤m^(−5), bounds the absolute integrand
difference by D|h|X. Since ξ_s is centered Gaussian of variance 2s(1−s),
E|ξ_s|=2√[s(1−s)]/√π. Integration over s gives μ=√π/4. Taking
expectations and integrating |u| proves (1).

With t=h² and −Theta'(t)≤24C_angular/t² in the matching units, this
particular error satisfies

    |2Theta'(t)[T₄(√t)−T₄,loc(√t)]|
       ≤ [3 C_angular μ D/(4π)] √t ||u||₁ →0.             (2)

The local t² term must be retained in the conversion and combined with
the other local coefficients and counterterms. The estimate is an endpoint
statement; no extra dt/t² integral is implied.

The source bridge's applicability, the A_h^(−1/2) and z_h A_h^(−1/2)
terms, thermal images, paired boundary, and their uniform mixed geometric
variations remain independent obligations. The W^{2,∞} and W^{1,∞}
bounds must be verified in the actual fixed atlas and regularization. No
numerical computation is needed for this estimate.

Remaining to-do list: control the other retained bridge terms, verify the
physical paired/regulator hypotheses, complete novelty assessment, and
certify supported claims on GCP.

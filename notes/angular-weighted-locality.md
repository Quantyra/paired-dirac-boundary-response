# Angular weights preserve conditional exponential locality

Status: ordinary estimate for the pinned product-sphere angular tower and
the conditional orbit locality bounds. It combines the separate geometric
and contact contributions of the cutoff conversion without claiming the
remaining short-time subtraction or a Lean certificate.

## Explicit tower bound

Let q≥0, b₀>0 and

    M_n²=n(n+q)/b₀²,   d_n=2(q+2n),
    Θ(t)=Σ_(n≥1) d_n exp(-tM_n²).

Set a=t/b₀². Since n(n+q)≥n² and the summands are nonnegative,
comparison with integrals gives

    Σ_(n≥1) e^(-a n²) ≤ √π/(2√a),
    Σ_(n≥1) n e^(-a n²)
       ≤ ∫₀∞ (x+1)e^(-a x²)dx
       = 1/(2a)+√π/(2√a).

Therefore

    Θ(t) ≤ 2/a + (q+2)√π/√a.                             (1)

For x≥0, x e^(-x)≤(2/e)e^(-x/2). Applying this termwise gives

    0≤-Θ'(t) ≤ [2/(et)] Θ(t/2).                           (2)

Thus Θ(t)=O(t^-1+t^-1/2) and -Θ'(t)=O(t^-2+t^-3/2) for fixed q,b₀.
The lowest angular sector is not part of this n≥1 tower; it must be handled
in its own source-defined allocation. No finite angular truncation is used.

## Combining the cutoff conversion

For the source-defined fixed-smearing orbit quantities, write the
physical-minus-auxiliary differences

    ΔG_t(u,v)=δ_v T_t^phys(u)-δ_v T_t^aux(u),
    ΔI_t(u,v)=I_t^phys(u,v)-I_t^aux(u,v).

Assume the matched compact physical/auxiliary domains, bundle and uniform
sectorial hypotheses in [geometric collar locality](complex-geometric-collar-locality.md)
and [contact locality](fixed-seed-collar-contact-locality.md). Then, for
fixed directions and 0<t≤t₀, there are finite positive constants such that

    |ΔG_t(u,v)| ≤ A_G t^(-N_G)e^(-c_G/t),
    |ΔI_t(u,v)| ≤ A_I t^(-N_I)e^(-c_I/t),               (3)

with insertion norms and direction-radius dependence included in A_G,A_I.
The same geometric bound applies after exchanging u and v when the two
directions satisfy the same hypotheses. The source's complete positive-time
conversion identity gives the conditional difference

    ΔJ_t'' = Θ(t)[ΔG_t(u,v)+ΔG_t(v,u)]/2
              + 2Θ'(t)ΔI_t(u,v).                         (4)

Equations (1)–(3) imply that the right side is bounded by a finite polynomial
in 1/t times exp(-c/t), for some c>0. In particular, it tends to zero
faster than every fixed power as t↓0. For any fixed finite power t^-k, the
absolute integral over 0<t≤t₀ also converges; the substitution s=c/t
reduces this to an exponentially decaying tail.

Equation (4) includes both geometric terms and the separate contact; it
must use the same physical-half/time-reduced normalization on both sides.
The final action's factor -2G/b₀² is applied only after this conversion,
with the source's units and zero-mode convention. Additional moving-density
or coincidence terms not contained in (4) require their own comparison.

## Scope

This shows that, if the stated conditional locality hypotheses and the
source conversion identity hold, the bolt/auxiliary localization defects
remain negligible after multiplication by the complete massive angular
tower. It does not prove those physical hypotheses, identify every local
subtraction, or bound the unknown curved subtracted remainder A(K). It does
not justify moving derivatives or regulator limits beyond the stated
positive-time identity. No numerical computation is used.

Remaining to-do list: verify the physical paired bundle and domains and all
source vertices; prove the required curved/regulator remainder; finish the
novelty audit, manuscript and GCP Lean certification.

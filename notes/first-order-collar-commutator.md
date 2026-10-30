# Uniform collar commutator from the first-order congruence

Status: ordinary fixed-seed result for the paired multiplier family. It
verifies the local commutator input in [the uniform heat note](fixed-seed-uniform-heat-inputs.md)
without assuming a separate divergence-form W^{1,∞} coefficient theorem.
The physical bundle and second-order Duhamel domain identification remain
hypotheses, and this is not Lean-certified.

## Statement

Use the fixed compact seed, H¹ projector domains, graph estimate and real
multiplier ball ||b||∞≤B, ||db||∞≤G from the uniform heat note. Let χ be
a real smooth scalar cutoff whose derivative is supported in an interior
collar set F, and choose smooth ψ=1 near F with support strictly inside the
collar. Put D_b=EDE, E=e^(-b/2), and L_b=D_b*D_b. Assume the local smooth
seed coefficients and standard weak product rules. Then, for w∈Dom(L_b),

    ||[L_b,χ]w||₂ ≤ C (||D_b(ψw)||₂+||ψw||₂),             (1)

with C independent of b in the ball. Here [L_b,χ] is the L² commutator
provided χ maps Dom(L_b) to itself; the expression below also defines its
local distributional extension before that domain mapping is established.
The same bound holds for smooth physical-side approximants with the same
uniform B,G.

## First-order calculation

The scalar Leibniz rule gives

    [D_b,χ]=A_b:=E² c(dχ),
    [D_b*,χ]=-A_b*.                                        (2)

The second identity follows by taking adjoints of the first for real χ,
using that χ preserves the first-order and adjoint domains. Consequently,
where the operator products are defined,

    [L_b,χ]w = D_b*(A_b w)-A_b* D_b w.                     (3)

The derivative of χ vanishes near the physical boundary, so A_b w is
compactly supported in the interior collar. In particular it belongs to
the adjoint projector domain whenever w∈H¹; no extra boundary jet of b is
needed for this local calculation.

On F, A_b is W^{1,∞}; its norm and weak first derivative are bounded by a
constant depending on B,G, the seed Clifford/connection coefficients and
χ through its first two derivatives. Applying the first-order product rule
to D_b*(A_bw) gives

    ||D_b*(A_b w)||₂ ≤ C₁ ||ψw||_(H¹),
    ||A_b*D_bw||₂ ≤ C₂ ||ψ D_bw||₂.                         (4)

For the second term, D_b(ψw)=ψD_bw+[D_b,ψ]w, and the commutator is a
uniformly bounded multiplication operator. The seed graph estimate and
reverse congruence graph estimate yield

    ||ψw||_(H¹) ≤ C₃(||D_b(ψw)||₂+||ψw||₂).                 (5)

Equations (3)–(5) prove (1), with constants depending on the fixed seed,
cutoffs, B and G but not on higher derivatives of b. The localization ψ
is essential; a global divergence-form expansion is unnecessary.

## Domain and comparison limits

Because χ is constant near the physical boundary and A_b vanishes there,
one can also check the composition domain directly: χ preserves Dom(D_b),
and D_b(χw)=χD_bw+A_bw belongs to Dom(D_b*) when w∈Dom(L_b), using
scalar preservation and interior support. This establishes χ Dom(L_b)
⊂Dom(L_b) under the stated H¹ adjoint-domain and product hypotheses.
The auxiliary realization needs the corresponding common-collar data and
its own closed domains. Uniform trace bounds, physical bundle matching,
the remaining vertices and the common-regulator limit are separate.
No numerical computation is needed.

Remaining to-do list: verify the physical and auxiliary domain and bundle
hypotheses; complete the Euclidean contact and geometric variations;
finish novelty review, manuscript and GCP Lean certification.

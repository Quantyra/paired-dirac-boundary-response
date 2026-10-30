# Flat Dirac variation versus the scalar jump comparator

Status: ordinary flat-model comparison, subject to independent review and
not Lean-certified. The scalar comparator is Bordag--Vassilevich,
[arXiv:hep-th/0404069v2](https://arxiv.org/html/hep-th/0404069v2),
Eqs. (20) and (32). The full Dirac coefficient used below is conditional on
the hypotheses and normalizations in [the boundary coefficient calculation](flat-boundary-coefficients.md)
and [the paired folding argument](flat-paired-folding.md). This comparison
is not a novelty verdict or a curved/regulator-uniform theorem.

## Exact first vertex

On the flat two-dimensional plane use Hermitian gamma_n,gamma_tau with
squares one and anticommutation, D=gamma_n partial_y+gamma_tau partial_tau,
and L_b=D_b*D_b=-D_b^2 for D_b=exp(-b/2)D exp(-b/2). For a smooth real
normal profile b=b(y), the variation at b=0 is

    delta_b D = -b D -(1/2) gamma_n b',
    delta_b L = 2b Delta + 2b' partial_y + (1/2)b''
                 + (gamma_n gamma_tau)b' partial_tau.        (1)

To check (1), differentiate L=-D^2 and use D^2=Delta, the weak product
rule, and gamma_n gamma_tau=-gamma_tau gamma_n. The zero-order term is
indeed V_b=(1/2)b'', but it is only one summand of the first variation.
The first term changes the second-order principal symbol, the second is a
scalar first-order term, and the last is a Clifford first-order term. A
scalar multiplication conjugation leaves the leading symbol unchanged, so
it cannot alone turn this variable-principal-symbol operator into a fixed
flat Laplacian plus scalar potential. A coordinate or more general operator
transformation would need a separate proof including its boundary domain,
measure, and second variation.

Equation (1) is for smooth profiles. For the localized cubic seam, the
individual coefficients have distributional or piecewise-smooth meanings;
the passage to that class must be justified before importing a trace result.
At second order, both the quadratic Duhamel term and the genuine mixed
second variation of L contribute. The density-inclusive derivation in
[the flat multiplier note](flat-tangent-multiplier.md) keeps both; the
potential-only quadratic term below does not represent the complete answer.

## Scalar potential-only benchmark

**Normalization audit open:** Equation (2) below faithfully applies the
published jump coefficient, but the same source's Eqs. (27)--(28) appear to
give half that coefficient for p=1. See
[the normalization audit](scalar-jump-normalization-audit.md). Until this
discrepancy is resolved, neither (2) nor the numerical difference below is
an independently verified benchmark.

Take two localized pure cubic directions with b_u=c_u |y|^3 and
b_w=c_w |y|^3 near the seam. The zero-order component in (1) is
V_u=3 c_u |y| and V_w=3 c_w |y| near zero. In the comparator's convention
D=-(Delta+E), E_u=-V_u. With the source's inward normals on the two sides,
the p=1 normal-derivative jump is -6c_u and similarly for w. The source's
quadratic a7 contribution in dimension two is

    (1/(256 sqrt(pi))) [jump(E')]^2 t^(5/2)

per scalar fiber and per unit interface length. Polarizing the quadratic
coefficient to the mixed derivative gives 2(6c_u)(6c_w)/(256 sqrt(pi)).
For rank two the full-plane spin trace multiplies by two; the assumed
physical-half normalization multiplies by one half. Thus this potential-only
benchmark is

    + 9/(32 sqrt(pi)) c_u c_w t^(5/2).                     (2)

The calculation has used the source's jump, expansion, and quadratic
normalizations; it is not a new heat-coefficient formula. The relevant
one-sided smoothness holds for the isolated |y| potential with a smooth
cutoff. The fourth-order logarithmic metric jet requires separate treatment.

## Comparison with the complete tangent expression

The conditional full paired tangent coefficient recorded in the paper is

    - 15/(1024 sqrt(pi)) c_u c_w t^(5/2).                  (3)

On the normalizations stated above, (2) and (3) differ in sign and magnitude.
The algebraic difference, complete coefficient minus the potential-only
benchmark, is -303/(1024 sqrt(pi)) c_u c_w t^(5/2). It groups all remaining
principal-symbol, first-order Clifford, cross-vertex and second-variation
contributions; it is not an independent calculation of any one of them.
The difference does not prove (3), justify the physical-half identification,
or establish novelty over the comparator or related spinor literature.

This comparison demonstrates why the scalar p=1 formula alone cannot be
applied to the complete Dirac variation by treating (1/2)b'' as the entire
perturbation. A complete prior-art verdict must also inspect allowed
coordinate/field redefinitions, existing spinor metric-variation and
polyhomogeneous-background results, and the original paired domain.

Remaining to-do list: audit (1)-(3) and the physical folding and trace-class
hypotheses, search the closest metric/spinor and logarithmic heat literature,
complete the proof and novelty decision, and formalize supported claims on GCP.

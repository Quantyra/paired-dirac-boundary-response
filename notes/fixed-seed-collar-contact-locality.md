# Uniform collar contact locality on a fixed paired seed

Status: ordinary conditional theorem combining the fixed-seed form, heat and
commutator estimates. It proves the two-insertion comparison for the stated
matched compact models, not the remaining physical bundle matching, metric
vertices or common-regulator theorem. It is not Lean-certified.

## Assumptions and conclusion

Let L_b and L̃_b be nonnegative paired squares on two compact two-dimensional
geometries with boundary and identified bundles in a collar U. Assume their
first-order domains, local differential expressions and multiplier b agree
on U, including the paired boundary conditions. Let b range in a common
fixed B,G multiplier ball. On each fixed seed assume the H¹ projector and
adjoint domains, scalar product rule, uniform elliptic graph estimate and
seed heat-trace bound from [the uniform heat note](fixed-seed-uniform-heat-inputs.md).
Assume the normal-constant cutoff χ and interior commutator support F in
[the collar comparison](euclidean-collar-cutoff-comparison.md), with K
containing the supports of bounded u,v and dist(K,F)>0. The cutoffs and
metric comparisons are fixed uniformly over the ball.

Then there are positive constants A,c,N,t₀, independent of b, such that
for 0<t≤t₀,

    |I_b(t;u,v)-Ĩ_b(t;u,v)|
       ≤ A ||u||∞||v||∞ t^(-N) exp(-c/t),                (1)

where each I is the two-insertion contact integral ∫₀ᵗ Tr[u e^(-(t-s)L)
v e^(-sL)]ds on its own full compact orbit bundle. The bound includes the
whole thermal circle, and an auxiliary second boundary may be present
outside U. It does not include the separate angular factor or the
per-exterior normalization.

## Uniform off-diagonal Schatten estimates

The first-order form gives Davies off-diagonal operator bounds; the
[weighted derivative estimate](paired-weighted-derivative.md) and
[first-order commutator calculation](first-order-collar-commutator.md)
give the same Gaussian decay with a polynomial time factor for
C_b e^(-t L̃_b) between separated sets. The fixed-seed graph comparison
and min-max argument give uniform heat-trace bounds for both models.

To pass from operator to Hilbert–Schmidt norms without commuting spatial
cutoffs with heat operators, split the time at t/2 and insert a spatial
partition P+(1-P)=I with P supported near K and separated from F. In the
P term, C_b e^(-(t/2)L̃_b)P has the derivative off-diagonal operator
bound, while P e^(-(t/2)L̃_b)1_K is Hilbert–Schmidt by the uniform heat
trace. In the complementary term, C_b e^(-(t/2)L̃_b) is Hilbert–Schmidt
by splitting once more: its first factor is bounded by C(1+t^(-1/2))
from the local graph estimate and spectral bound on D_b e^(-rL_b), and
its second is Hilbert–Schmidt by the heat trace. The final factor
(1-P)e^(-(t/2)L̃_b)1_K has Davies off-diagonal decay. The corresponding
non-derivative estimate follows the same partition argument. Reducing the
separation if necessary yields constants independent of b and

    ||1_K e^(-tL_b)1_F||₂ + ||1_F C_b e^(-tL̃_b)1_K||₂
       ≤ A₁ t^(-N₁) exp(-c₁/t).                        (2)

The domain-preserving first-order commutator identity supplies the L²
operator C_b; Duhamel can be justified on the common core and extended by
these integrable bounds.

## Contact comparison

The Duhamel identity and Schatten Hölder now give

    ||1_K(e^(-rL_b)-e^(-rL̃_b))1_K||₁
       ≤ A₂ r^(-N₂) exp(-c₂/r),      0<r≤t₀,            (3)

with uniform constants. Insert 1_K around the scalar insertions and
compress both heat factors to K. Telescoping the difference of the two
contact products and using ||e^(-rL)||≤1 gives

    |Tr[uT(r)vT(s)-uT̃(r)vT̃(s)]|
       ≤ ||u||∞||v||∞ [D(r)+D(s)],
    D(r)=A₂r^(-N₂) exp(-c₂/r).

Integrating s from 0 to t gives at most
2||u||∞||v||∞ ∫₀ᵗ D(s) ds, which is bounded by the form in (1) after a
change of variable and a harmless weakening of the exponent. This retains
both insertion endpoints. No numerical computation is used.

## Limits

The result depends on exact common collar data and uniform fixed-seed form,
trace and domain hypotheses for both models. It isolates locality of the
contact from the bolt under those hypotheses; it does not prove the actual
physical common bundle, regulator convergence, coincidence/geometric
vertices, angular factor or a uniform family with changing geometry. The
exponential bound is an auxiliary localization error, not a physical
admission margin.

Remaining to-do list: match the physical and auxiliary paired bundles and
collars, prove the geometric and coincidence vertices and regulator limit,
complete the novelty audit and certify supported claims in Lean on GCP.

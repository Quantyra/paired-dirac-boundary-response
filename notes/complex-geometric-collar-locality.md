# Complex geometric locality on matched compact collars

Status: ordinary conditional consequence of the sectorial and commutator
estimates assembled in the cited notes. It verifies the complex-uniform
locality criterion for the declared matched compact models; it does not
verify the physical bundle or varying-atlas hypotheses, establish the
complete curved response, or provide Lean certification.

## Statement

Let the physical and auxiliary compact orbit models have identified
Hermitian bundles and identical first-order data on a collar U, including
the paired H¹ and complementary adjoint domains at the common boundary.
Let b and v be identical real W^{1,∞} scalars on U, extended on each model
with uniform global bounds. Assume the uniform sectorial tube, weighted
semigroup estimates and H→H¹ smoothing of
[the complex-family note](complex-family-locality.md), and the uniform
local graph estimate of [the complex commutator note](complex-collar-commutator.md)
on each model. Let u be bounded and supported in a compact K⊂U separated
from the derivatives of a normal-constant cutoff χ. All geometric, graph,
period and cutoff constants are fixed across the declared approximants.

For the holomorphic form operators L_z and L̃_z corresponding to b+zv,
there are R,A,c,N,t₀>0, independent of the approximant, such that

    |Tr[u(e^(-tL_z)-e^(-tL̃_z))]|
       ≤ A ||u||∞ t^(-N)e^(-c/t),
       |z|≤R/2,   0<t≤t₀.                              (1)

The traces are compared after the collar identification and include the
full compact orbit fiber and thermal circle. For v≠0, R depends on the
direction W^{1,∞} norm and the uniform coefficient bounds. Consequently,

    |δ_v Tr[u e^(-tL_b)] - δ_v Tr[u e^(-tL̃_b)]|
       ≤ (2A/R)||u||∞ t^(-N)e^(-c/t).                  (2)

The derivative is at z=0. It is the fixed-smearing geometric heat vertex;
it does not include a moving density or a distinct coincidence vertex.

## Argument

The uniform complex weighted-form bounds give Gaussian off-diagonal
operator estimates for the heat operators and their time derivatives.
The cutoff energy inequality in [the local energy note](complex-local-energy.md)
gives the corresponding first-order bound. The complex commutator note
proves that χ preserves each L_z composition domain and gives a first-order
commutator with a uniform local graph bound.

The two-dimensional H¹ embedding is in S₄. Uniform H→H¹ heat smoothing,
semigroup factorization and Schatten Hölder give a polynomial
Hilbert–Schmidt heat bound on each model; the adjoint family has the same
property. Split heat factors and insert intermediate spatial cutoffs as in
[the real contact locality proof](fixed-seed-collar-contact-locality.md).
This combines the Gaussian operator estimates with the global
Hilbert–Schmidt bound without commuting a spatial cutoff through the heat
semigroup. The result is a polynomial times exp(-c/t) for each separated
heat and commutator factor, uniformly in z on the closed smaller disk.

The cutoff-domain identity gives the Duhamel comparison between models.
Schatten Hölder makes the localized difference trace class, and the
convolution of the two separated Gaussian factors is bounded by the right
side of (1), with possibly weaker positive c and larger finite N. The
compact trace is divided by T only if the source's time-reduced convention
is being used; this changes A by the fixed scalar 1/T. The positive-time
form family is trace-norm holomorphic on the disk. Cauchy's formula on
|z|=R/2 proves (2), preserving the full derivative of the first-order form.

## Scope

The theorem is conditional on the actual global domains, common collar,
uniform coefficient/graph and smoothing hypotheses. The auxiliary
coefficient estimates and local half-density calculation support parts of
those assumptions; they do not independently prove the physical global
bundle or uniform varying-atlas realization. The complete source conversion
also contains the separate contact term, angular weights, density and
coincidence vertices, and a short-time subtraction. Equation (2) is a
locality error, not a proof of those terms or an admission margin. No
numerical computation is used.

Remaining to-do list: verify the physical hypotheses, identify and control
all geometric/coincidence vertices and the regulator limit, complete the
novelty audit, and certify the supported paper claims on GCP.

# Rough collar approximants and the compact flat half trace

Status: ordinary fixed-geometry model argument, subject to review and not
Lean-certified. It combines the existing [weighted cutoff](weighted-remainder-cutoff.md),
[flat folding](flat-paired-folding.md), and
[positive-time convergence](approximant-resolvent-convergence.md) arguments.
It does not identify the physical exterior or prove a short-time response.

## Claim and hypotheses

Let y be periodic of period 2L, tau periodic or antiperiodic of period beta,
and use the constant Clifford and involution data of the flat folding note.
Reflection sends y to −y; its fixed circles are y=0 and y=L. On the
half-cylinder 0<y<L impose the chi=+ first-order boundary projector at both
ends and its complementary adjoint projector. Let r and r_epsilon be the
physical-side remainder and approximants constructed in the cutoff note,
and suppose the stated weighted bounds hold. Choose a real smooth cutoff
eta supported in |y|<delta, equal to one near zero, and even. Define

    b(y)         = eta(y) [c |y|^3 + r(|y|)],
    b_epsilon(y) = eta(y) [c |y|^3 + r_epsilon(|y|)].

Extend both by zero to the whole y circle. They are real even W^{3,infinity}
functions, converge in W^{3,infinity}, and have uniform W^{1,infinity}
bounds. For their actual closed first-order congruences and positive squares,
the full heat operators converge in trace norm uniformly on every positive
time interval [t0,T], 0<t0<T. Each corresponding half-cylinder heat trace
is exactly one half of the full trace, including in the limit.

## Argument

The weighted bounds imply r(y)=O(y^4 log(1/y)) and r'(y)=O(y^3 log(1/y)),
so r and its first three physical derivatives tend to zero at the seam.
The cutoff approximants vanish near the seam, and the cutoff note proves
W^{3,infinity} convergence on the physical collar. Even reflection preserves
that convergence: the reflected function and its first two weak derivatives
have matching traces at y=0, while its third derivative may have a jump
without producing a delta distribution. The cubic |y|^3 likewise belongs to
W^{3,infinity}; its third derivative jumps, but its second derivative is
continuous. Multiplication by eta and extension by zero preserve these
properties. Uniform W^{1,infinity} bounds follow from the convergence.

The free flat Dirac operator on the compact torus is skew-adjoint on H¹.
The real scalar multipliers E_epsilon=exp(−b_epsilon/2), their inverses,
and their limit preserve H¹. The associated D_epsilon=E_epsilon D E_epsilon
are skew-adjoint on that common first-order domain, with uniform graph
comparisons by their uniform multiplier and first-derivative bounds. Their
nonnegative squares have the actual composition domains. The resolvent
factorization and compact-seed argument in the convergence note therefore
apply: the free heat operator is trace class, and the heat operators of
the squares converge in trace norm uniformly for t in [t0,T].

For each multiplier, reflection and the Clifford unitary Gamma obey the
relations in the folding note on H¹. The extension from the half-cylinder
is unitary onto the reflection-even subspace, with the indicated first-order
conditions at both fixed circles. Gamma exchanges the two reflection
sectors while commuting with the square. Since the compact heat operators
are trace class, their two sector traces agree. The half trace is therefore
one half of the full trace for every epsilon and for the limit. Trace-norm
convergence also gives convergence of these half traces uniformly on
[t0,T]. Subtracting the same seed heat operator on both sides gives the
corresponding relative identity.

The estimate depends on t0>0 and supplies no uniform control as t0 tends
to zero. It says nothing about interchange of mixed parameter derivatives,
small-time coefficient extraction, a noncompact or moving cutoff, curved
geometry, or the actual physical trace normalization. Numerical values
play no role in this argument.

Remaining to-do list: prove the required differentiated and small-time
limits, identify the physical paired trace and fiber normalization, audit
the prior art, and formalize the supported claims on GCP.
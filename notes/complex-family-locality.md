# Complex-family locality inputs for the geometric vertex

Status: ordinary conditional sectorial-form argument on fixed compact
paired seeds. It addresses the complex off-diagonal and Schatten estimates
identified in [the geometric vertex note](geometric-locality-vertex.md).
It does not verify the physical bundle/collar hypotheses, prove the full
subtracted response, or constitute Lean certification.

## Uniform sectorial tube and weighted heat

Assume the fixed-seed H¹ projector domains, scalar product rule, graph
estimate and bounded real multiplier ball in
[the uniform heat note](fixed-seed-uniform-heat-inputs.md). Let v be real
W^{1,∞}, and take D_z=E_z D E_z, E_z=exp[-(b+zv)/2]. Use the holomorphic
form q_z(φ,ψ)=<D_zφ,D_(bar z)ψ>, with the inner-product convention chosen
so that q_z is holomorphic. For real z it is the positive square form.

The product rule and uniform multiplier bounds imply, for |z| small,

    |q_z(w,w)-q_0(w,w)|
       ≤ C|z| ||v||_(W¹,∞) (||D_b w||²+||w||²).        (1)

Thus a radius R>0 depending on the coefficient ball and direction norm,
but not on the particular real base or physical-side approximant, gives
uniform shifted coercivity and a fixed sector angle for |z|≤R. The
positive-time closed forms and their semigroups are holomorphic there.

For a real Lipschitz weight φ with ||dφ||∞≤α, expand q_z(e^(-φ)w,e^φw)
using the scalar product rule. The weight introduces at most α||w|| into
each first-order factor. Combining (1), Young's inequality and the real
base coercivity gives, after shrinking R if needed,

    Re q_(z,φ)(w,w) ≥ c||D_b w||²-C(1+α²)||w||²,
    |Im q_(z,φ)(w,w)| ≤ C[||D_b w||²+(1+α²)||w||²],   (2)

with c>0 and C uniform in z,b,φ. Shift by C'(1+α²) to get a fixed
sectorial angle. The analytic-form semigroup theorem and Cauchy's estimate
in the time variable then give, for small positive t,

    ||e^φ e^(-tL_z)e^(-φ)||
       ≤ C₁ exp[C₂(1+α²)t],
    ||e^φ L_z e^(-tL_z)e^(-φ)||
       ≤ C₁ t^(-1) exp[C₂(1+α²)t].                    (3)

Distance weights and optimization yield the uniform Gaussian off-diagonal
operator estimate. A local form-energy estimate analogous to the real
case gives the separated first-derivative bound, with q_z and its adjoint
controlled by (2); its constants require the uniform local graph and
commutator estimates. The latter must be verified on each common collar.

## Compact-seed Schatten input

On a fixed compact two-dimensional seed, assume the uniform H¹ graph bound
and the standard closed-form H→H¹ heat smoothing

    ||e^(-tL_z)||_(L²→H¹) ≤ C t^(-1/2),    0<t≤t₀.       (4)

The compact embedding H¹→L² lies in S_p for every p>2. Choosing p=4,
(4) gives a uniform S₄ bound C t^(-1/2). Factor the semigroup at t/2;
Schatten Hölder then gives a uniform Hilbert–Schmidt bound

    ||e^(-tL_z)||₂ ≤ C t^(-1).                            (5)

This deliberately nonsharp power suffices for localization. The adjoint
family has the analogous bound. Splitting the semigroup and inserting
spatial cutoffs as in [the fixed-seed contact proof](fixed-seed-collar-contact-locality.md)
combines (3), the separated derivative estimate and (5) into off-diagonal
Hilbert–Schmidt estimates with a polynomial times exp(-c/t), uniformly on
a smaller disk |z|≤R/2. Duhamel and Schatten Hölder then give the same
bound for the localized physical-minus-auxiliary heat trace, provided the
operators and cutoff domains agree on the common collar for complex z.
Cauchy's formula in z yields the first geometric locality derivative as in
the vertex note.

## Precise remaining hypotheses

The physical and auxiliary families must satisfy the common H¹ domain,
uniform graph and coefficient bounds, and identical collar data, including
the first-order adjoints and complex continuation. The standard sectorial
form estimates and (4) are imported analytic inputs, not verified by a Lean
checker here. The local derivative step must be applied with its actual
commutator and trace-space constants. This fixed-seed argument does not
supply varying-geometry uniformity, all coincidence vertices, the
short-time subtraction or the common-regulator limit. No numerical
calculation is used.

Remaining to-do list: verify the physical/auxiliary hypotheses and local
derivative estimates, close the response and regulator audit, finish the
novelty decision, manuscript and GCP Lean certification.

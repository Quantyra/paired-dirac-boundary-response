# Geometric variation of the collar-locality defect

Status: conditional analytic-variation reduction for the Euclidean paired
orbit trace. It identifies the additional complex-family estimate needed to
extend [contact locality](fixed-seed-collar-contact-locality.md) to the
geometric vertex in [the cutoff conversion](tangent-regulator-normalization.md).
It is not a proof of the physical variation, a uniform curved remainder,
or a Lean certificate.

## Actual first-order vertex

On a fixed Hilbert space and first-order domain V, write

    D_z=E_z D E_z,       E_z=exp[-(b+zv)/2],

with real base b and real scalar direction v. At z=0, with D_b=E_b D E_b,

    δ_v D_b = -(vD_b+D_b v)/2
            = -v D_b - (1/2) E_b² c(dv).               (1)

The equality uses the weak scalar product rule and v commuting with E_b.
The positive square L_b=D_b*D_b has a changing composition domain in
general. Its first variation is therefore safest as a form on the common
V, retaining both factors:

    δ_v q_b(φ,ψ)
       = <δ_v D_b φ,D_b ψ> + <D_b φ,δ_v D_b ψ>.         (2)

The convention for which slot is linear only changes the corresponding
conjugations. The terms involving c(dv) and the two first-order factors are
part of the vertex; replacing it by a scalar potential drops them. The
smearing u in T_t(u)=Tr[u e^(-tL_b)] is held fixed in this derivative; any
moving density or coincidence vertex must be added according to its own
definition.

## What localization must prove

Let F_t(z) be the difference between the physical and auxiliary localized
smeared heat traces for the parameter b+zv, including the same local
insertion u and identified collar data. Suppose, on a complex disk
|z|<R, that:

1. The physical and auxiliary closed forms define holomorphic heat traces
   and F_t(z) is holomorphic, with a common fixed domain of forms.
2. For all |z|≤R/2 and 0<t≤t₀,

       |F_t(z)| ≤ A ||u||∞ t^(-N) exp(-c/t),            (3)

   with A,c,N,R independent of t and the physical-side approximant.

Then Cauchy's formula on |z|=R/2 gives the actual localized geometric
vertex comparison

    |∂_z F_t(0)| ≤ (2A/R)||u||∞ t^(-N) exp(-c/t).     (4)

For v=0 the derivative is zero; otherwise R must be stated in terms of the
norm of v and the common coefficient ball. A two-variable holomorphic
bound on a fixed polydisc similarly controls the mixed derivative, with
both radii and all mixed/coincidence vertices retained.

## Why the real estimate is insufficient

Uniform exponential locality for real parameters alone does not imply
(4). For example, F_t(z)=exp(-c/t) sin(exp(2c/t)z) is entire and bounded
by exp(-c/t) on the real axis, yet F_t'(0)=exp(c/t). The example is only a
logical counterexample; it is not the paired heat trace. It shows why a
real-parameter estimate cannot be differentiated without a uniform complex
neighborhood or another independently proved derivative bound.

The positive-time holomorphic form argument in
[the compact derivative note](paired-positive-time-trace-derivatives.md)
supplies a route to item 1 on each fixed compact seed. It does not establish
the small-time off-diagonal estimate (3) for the non-self-adjoint complex
family. That estimate requires uniform sectorial weighted heat and
commutator/Schatten bounds on both physical and auxiliary operators, the
same collar and domains, and control of the complete thermal trace. The
real self-adjoint contact locality result is not that proof. Numerical
checks cannot supply the missing complex uniformity.

Remaining to-do list: prove the complex-family locality bound or an exact
vertex estimate; verify physical bundle and domains; complete the common
regulator and novelty audits; write and certify supported claims in Lean.

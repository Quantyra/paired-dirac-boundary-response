# Positive-time trace derivatives on a compact paired finite cut

Status: conditional ordinary functional-analytic argument, subject to review
and not Lean-certified. It extends the form method in
[the compact flat calculation](compact-positive-time-derivatives.md) to a
fixed compact smooth paired seed. It does not supply the uniform small-time
curved remainder or identify a noncompact limit.

## Claim and hypotheses

Let X be a fixed compact smooth four-dimensional manifold with boundary,
with the paired H¹ projector domain V=Dom(D) and its closed first-order
Dirac realization D. Assume the H¹ elliptic graph estimate for this domain,
scalar W^{1,∞} multiplication and its inverse preserve V, and the paired
bundle and fixed Hilbert-space identification are as required in
[the finite-cut bridge](finite-cut-elliptic-domain-bridge.md). Let real
b_j,b,u_j,u,w_j,w be W^{1,∞} scalar fields, identical on the copies,
with the three sequences converging in W^{1,∞}. Set

    E_{j,z}=exp[−(b_j+z₁u_j+z₂w_j)/2],
    D_{j,z}=E_{j,z} D E_{j,z},    z in R²,
    L_{j,z}=D_{j,z}* D_{j,z},

and analogously define the limiting family. The squares have their actual
composition domains, which need not be common. For every 0<t₀<T,

    sup_{t∈[t₀,T]} ||∂₁∂₂ e^(−t L_{j,z})|_{z=0}
                       − ∂₁∂₂ e^(−t L_z)|_{z=0}||₁ → 0.  (1)

The derivatives in (1) are trace-norm derivatives. Traces and any fixed
bounded insertions therefore converge as well. The argument treats the full
compact four-dimensional operator; a separate angular, thermal or
per-exterior decomposition requires its own identification.

## Form and heat operators

For complex z in a small polydisc use the holomorphic form on V

    a_{j,z}(f,g)=<D_{j,z} f, D_{j,conj(z)} g>,

with the inner-product convention chosen so the form is holomorphic in z.
For real z it is the closed positive form of L_{j,z}. Uniform W^{1,∞}
bounds, the graph estimate and the product rule give uniform coercivity
after one shift for all sufficiently large j at z=0. The forms are
holomorphic and their norm differences V→V* tend to zero uniformly on a
bounded polydisc. Shrinking it retains a common coercivity margin for the
complex perturbations. The variational resolvent identity and a common
sectorial contour give operator-norm convergence of the associated heat
operators, uniformly on a smaller closed polydisc and on [t₀,T]. The
complex form is an analytic device and is not a physical positive square.

## Four-dimensional Schatten step

The sectorial estimates and the form identity give uniform H→H¹ smoothing
of each complex heat operator for t bounded away from zero. On a compact
smooth four-manifold with boundary, the embedding H¹→L² belongs to S_p for
every p>4. This follows, for example, from the eigenvalue growth of a fixed
smooth elliptic reference operator, or by a finite atlas and the standard
Sobolev embedding singular-value estimate. Restriction to V does not enlarge
these singular values. Thus the heat operators have uniform S_p bounds for
any p>4.

Choose 4<p<6. For a difference T of two heat operators, singular values give

    ||T||₆⁶ ≤ ||T||^(6−p) ||T||_p^p.

Uniform S_p bounds and operator-norm convergence imply uniform S₆
convergence. Factor each heat operator as six equal-time factors; Schatten
Hölder and a telescoping product give trace-norm convergence uniformly on
the smaller polydisc and positive-time interval. Operator holomorphy plus
local S_p bounds likewise gives S₆ continuity by interpolation, and the
Cauchy integral formula in S₆ gives S₆ holomorphy. Six-factor multiplication
then gives trace-norm holomorphy. The two-variable Cauchy formula on fixed
circles passes the uniform trace-norm convergence to the mixed derivatives,
proving (1).

This is not a proof of the geometric source's fixed-frame identification,
the projector hypotheses, the angular decomposition, the one-half factor,
the trace counterterms, or any estimate uniform as t₀↓0. In particular,
positive-time convergence does not justify exchanging the short-time or
common-regulator limits. Computation is not needed for this argument.

Remaining to-do list: verify the physical finite-cut bundle and atlas,
control the curved subtracted trace uniformly near t=0, settle the prior-art
comparison, and certify supported statements in Lean on GCP.

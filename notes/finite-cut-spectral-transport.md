# Spectral-parameter collar transport bound

Status: ordinary estimate for the separated radial Hamiltonian on a finite
collar, including complex spectral parameter. It extends the zero-energy
[angular analysis](finite-cut-angular-nonuniformity.md); it does not prove
the physical changing-cut resolvent or a heat-trace limit and is not a Lean
certificate.

## Statement

Let a be real and integrable on [x₀,x₁], let ℓ=x₁-x₀ and
δ=∫[x₀,x₁]|a(x)|dx. On an angular eigenspace D_q φ=μ φ, consider

    (-iσ₂ ∂x + μa(x)σ₁)ψ=zψ,

where z is any complex number. Transport the boundary line span(v_+) at x₁
back to x₀ and call its orthogonal projection P_(μ,z). Let P_0 be the
projection onto v_+ at x₀. Then, with C=2(e-1),

    ||P_(μ,z)-P_0|| ≤ C (|μ|δ + |z|ℓ).                   (1)

The left side is always at most 1, so (1) is useful where the right side is
small. It holds without a smallness assumption and with the same constant
for every angular mode and complex z.

## Proof

The first-order equation is

    ψ'=(izσ₂-μa(x)σ₃)ψ.

Let V be the fundamental matrix carrying data from x₁ back to x₀. The
integral equation and Gronwall's inequality, in either direction, give

    ||V-I|| ≤ exp(m)-1,    m=|μ|δ+|z|ℓ.

The solution is invertible, so w=Vv_+ is nonzero and the transported line
is span(w). For any unit vector v and nonzero w,

    ||w/||w|| - v|| ≤ 2||w-v||.

The norm of the difference of the two orthogonal rank-one projections is
at most the norm of the difference of their normalized generators. Hence
for m≤1 it is at most 2(e-1)m. For m≥1 it is at most 1≤2(e-1)m. This
proves (1). The proof does not require commutation of the two generators
and accommodates the path ordering of the variable coefficient.

## Full tower and fixed-parameter limit

Let A=D_q on the angular Hilbert space. Orthogonal mode decomposition and
(1) imply, for f in Dom(A),

    ||(P_z-P_0)f|| ≤ C [δ ||Af|| + |z|ℓ ||f||].           (2)

Here P_z is the direct sum of the modewise transported-line projections.
The estimate also covers zero modes. If δ,ℓ→0 with z fixed, then P_z→P_0
strongly on L²: convergence holds on finite spectral sums by (1), and the
projections have norm one, so density extends the conclusion. The
L²-to-L² operator norm need not converge; at z=0 the preceding angular
analysis gives the exact obstruction 1/√2 for δ>0 and nonnegative a.

For real z the transported boundary condition also respects the conserved
radial Green form of this first-order Hamiltonian. For complex z it is a
spectral boundary relation used in a resolvent calculation, not a fixed
self-adjoint operator domain. Orthogonal projection introduces complex
conjugation, so no holomorphic dependence of P_z on z is claimed.

## Angular Sobolev and heat-smoothed consequences

Write `B` for the angular Dirac operator, so its eigenspaces are the modes
above, and define `H_B^s=Dom((1+B^2)^(s/2))`. From (1), the trivial bound
`||P_(mu,z)-P_0||<=1`, and the direct-sum decomposition, for `0<delta<=1`
and `s>0` one obtains

    ||(P_z-P_0)f||_2
       <= [C_s delta^min(s,1)+min(1,C ell |z|)] ||f||_(H_B^s). (3)

Indeed,
`min(1,C(|mu|delta+|z|ell))` is bounded by
`min(1,C|mu|delta)+min(1,C|z|ell)`. Dividing the first term by
`(1+mu^2)^(s/2)` and taking the supremum gives
`C_s delta^min(s,1)` by splitting at `|mu|=delta^(-1)`; the second term
uses `||f||_2<=||f||_(H_B^s)`. This extends the zero-spectral-parameter
Sobolev estimate in
[`transported-projector-angular-nonuniformity.md`](transported-projector-angular-nonuniformity.md)
to each complex spectral parameter `z`, without claiming holomorphy of the
orthogonal projectors.

For `0<tau<=1`, composition with angular heat smoothing gives

    ||(P_z-P_0) exp(-tau B^2)||_(L2->L2)
       <= C_s delta^min(s,1) tau^(-s/2)+min(1,C ell |z|).   (4)

The constant may depend on `s`; the estimate is useful for fixed positive
`tau` and bounded `z`, but is not uniform as `tau->0` or `|z|->infinity`.
It is an angular boundary-projector estimate, not a resolvent trace or heat
response estimate for the full operator.

## Remaining application

The bound measures the boundary line in L² after separation; it is not a
bound for the full boundary-value resolvent, which needs uniform control of
the interior solution, the other endpoint, the correct trace spaces and
spectral dependence. A common-regulator trace requires additional angular
and thermal summability and estimates uniform in the relevant z contour.
The actual physical geometry must supply the collar equation and δ,ℓ→0.
No numerical computation is needed for the ODE estimate.

Remaining to-do list: connect this boundary estimate to the physical
resolvent and angular/thermal traces; verify the global copy map; complete
the response and novelty audits and certify supported claims on GCP.

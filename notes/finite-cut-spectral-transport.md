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

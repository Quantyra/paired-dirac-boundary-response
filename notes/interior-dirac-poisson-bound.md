# Interior Poisson bound for a separated Dirac mode

Status: ordinary fixed-mode bound on the retained half-line for nonreal z.
It supplies one interior boundary-to-solution estimate needed by the
[inhomogeneous transport comparison](finite-cut-inhomogeneous-transport.md).
It is not a global resolvent convergence or Lean certification.

## Statement

On (-∞,x₀], let a be real and essentially bounded, A₀=||a||∞, μ∈ℝ and
z∈ℂ with η=|Im z|>0. Suppose ψ∈H¹((-∞,x₀];ℂ²)∩L² solves

    (-iσ₂ ∂x + μa(x)σ₁)ψ=zψ.

Write its endpoint value ψ(x₀)=b_+v_+ + b_-v_-, where σ₁v_±=±v_±.
Then, with k=|z|+|μ|A₀,

    ||ψ||_(L²(-∞,x₀]) ≤ sqrt(2k) |b_-| / η.             (1)

The same bound holds with b_+ in place of b_-. Thus if an L² solution with
one prescribed component exists, it is unique: zero prescribed component
forces ψ=0. The bound is conditional on existence and the stated H¹ domain;
it does not construct the Poisson operator.

## Proof

The differential equation gives ||ψ'||₂≤k||ψ||₂. The one-dimensional trace
identity, using an H¹ representative and the vanishing trace at -∞, yields

    |ψ(x₀)|² ≤ 2||ψ||₂ ||ψ'||₂ ≤ 2k||ψ||₂².             (2)

The trace at -∞ vanishes because an H¹ function on a half-line has a
continuous representative tending to zero there. Integration by parts in
the Dirac equation yields, up to the irrelevant orientation sign,

    2η ||ψ||₂² = |ψ(x₀)† σ₂ ψ(x₀)|
                ≤ 2|b_+||b_-|.                         (3)

The last inequality follows since σ₂ is off-diagonal in the σ₁ eigenbasis.
Combining (2)–(3) and |b_+|≤|ψ(x₀)| gives (1), after cancelling ||ψ||₂
when nonzero. Interchanging the two coefficients gives the symmetric result.
No sign of Im z is assumed because absolute values are used.

## Angular smoothing and limits

If the solution operator exists for every mode and is diagonal in the
sphere eigenspaces, its modewise norm from the prescribed boundary
coefficient to the interior L² space is at most

    sqrt(2(|z|+|μ|A₀))/η.

Thus, after a sphere heat multiplier e^(-τA²), τ>0, it is uniformly
bounded across the angular tower: |μ|^(1/2)e^(-τμ²) is bounded. This
observation does not establish existence, uniform control as η↓0, or the
full composition with the collar source and transported boundary line.
The coefficient A₀ must be checked in the actual canonical radial frame;
for the classical RN-AdS exterior it is finite on an exterior with a
regular horizon and the asymptotic behavior recorded in the RN source.

At nonreal z, the boundary condition transported from the excised collar
is z-dependent. A comparison must ensure that the scalar component
prescribed in (1) is the correct residual and account for possible
normalization of that transported line. The estimate does not by itself
justify changing-cut resolvent, heat trace, common-regulator, or nonlinear
family limits. No numerical computation is needed.

Remaining to-do list: prove existence and a uniform composition with the
physical transported condition; control thermal and short-time limits;
verify the global copy map; complete the response, novelty and Lean work.

# Trace-class probes for changing-cut heat operators

Status: positive-time consequence of [strong changing-cut heat convergence](changing-cut-heat-strong.md)
for the separated model. It gives trace-norm convergence after an explicit
fixed Hilbert–Schmidt probe. It is not an unweighted physical heat-trace
or mixed-variation result and has not been Lean-certified.

## Claim

Let T_ℓ(t)=J_ℓ* exp(-tH_ℓ²)J_ℓ and T(t)=exp(-tH²) on the common full
Hilbert space, under the assumptions of the strong heat note. Let S be any
fixed Hilbert–Schmidt operator on that space. For 0<t₀≤T₀<∞,

    sup_(t∈[t₀,T₀]) ||S* [T_ℓ(t)-T(t)] S||₁ → 0.        (1)

The operators in (1) are trace class, and their traces converge uniformly on
that interval. The probe can represent a separately justified smoothing and
localization, but its Hilbert–Schmidt property must be demonstrated in any
specific application.

## Proof

Set D_ℓ(t)=T_ℓ(t)-T(t). Each T is a positive contraction, hence
||D_ℓ(t)||≤2. The strong heat note gives

    sup_(t∈[t₀,T₀]) ||D_ℓ(t)v||→0

for every fixed v. Choose a finite-rank S_N converging to S in
Hilbert–Schmidt norm. On the finite-dimensional range of S_N, convergence
is uniform on the unit sphere, so

    sup_t ||D_ℓ(t)S_N||₂→0.

Moreover ||D_ℓ(t)(S-S_N)||₂≤2||S-S_N||₂ uniformly in ℓ,t. First let
ℓ↓0 and then N→∞ to obtain

    sup_t ||D_ℓ(t)S||₂→0.

The Schatten Hölder inequality gives
||S*D_ℓ(t)S||₁≤||S||₂ ||D_ℓ(t)S||₂, proving (1).

The same reasoning applies to two heat factors: for a fixed bounded B,
strong convergence and uniform boundedness of the two factors imply
uniform strong convergence of T_ℓ(t-s) B T_ℓ(s) to T(t-s) B T(s) on a
compact parameter set where both heat times are bounded below by a positive
constant. Sandwiched between S* and S, the products then converge in trace
norm by the same argument. This statement excludes insertion endpoints at
s=0 or s=t; those need a separate uniform argument.

## Physical scope

A compactly supported multiplication operator on an infinite-dimensional
L² space is generally not Hilbert–Schmidt. Thus (1) cannot be applied to the
physical scalar insertion merely because it is localized. To remove or
identify S one needs explicit local heat-kernel/Schatten bounds uniform in
the cut, all angular and thermal modes, and the correct boundary realization.
The paper's mixed geometric and contact variations additionally require
parameter differentiation and the common regulator. No such trace or
small-time conclusion follows from (1) alone. No numerical calculation is
used.

Remaining to-do list: obtain physical localized Schatten bounds and control
insertion endpoints; establish the physical bundle and square identification;
complete response and novelty audits and Lean certification on GCP.

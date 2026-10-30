# Positive-time heat convergence in the separated cut model

Status: ordinary functional-calculus consequence of [strong changing-cut
resolvent convergence](changing-cut-strong-resolvent.md). It concerns the
square of the self-adjoint separated Hamiltonian and a varying-space
embedding; it is not a trace limit, a physical curved-response theorem, or
a Lean certificate.

## Statement

Use the full and cut direct-sum Hamiltonians H and H_ℓ, restrictions J_ℓ
and zero extensions J_ℓ* from the strong convergence note. For every t>0
and fixed full-space vector f,

    J_ℓ* exp(-t H_ℓ²) J_ℓ f → exp(-t H²) f             (1)

strongly as ℓ↓0. The convergence is uniform for t in any compact interval
[t₀,T] with 0<t₀≤T<∞. Both statements include the full angular tower.

## Fixed-space construction and proof

Let P_ℓ=J_ℓ*J_ℓ, the projection onto the retained half-line, and decompose
the fixed full Hilbert space as ran P_ℓ ⊕ ran(1-P_ℓ). Put

    K_ℓ = (J_ℓ* H_ℓ J_ℓ) ⊕ 0,

meaning the unitary transport of H_ℓ to ran P_ℓ, direct summed with the
zero self-adjoint operator on the excised collar. For z∈ℂ\ℝ,

    (K_ℓ-z)^(-1)
      = J_ℓ*(H_ℓ-z)^(-1)J_ℓ - z^(-1)(1-P_ℓ).          (2)

The first term converges strongly to (H-z)^(-1) by the preceding note; the
second converges strongly to zero since P_ℓ→I strongly. Thus K_ℓ→H in the
usual strong-resolvent sense on one fixed Hilbert space.

The strong-resolvent functional calculus for self-adjoint operators gives
strong convergence g(K_ℓ)→g(H) for every continuous function g vanishing
at infinity. Apply it to g_t(λ)=exp(-tλ²), t>0. On the excised collar,
g_t(K_ℓ)=I, so

    g_t(K_ℓ) = J_ℓ*exp(-tH_ℓ²)J_ℓ + (1-P_ℓ).

The last term converges strongly to zero, giving (1). This correction is
necessary: zero-extending the cut heat operator is not the same as applying
the heat function to K_ℓ on the excised subspace.

For t,s≥t₀, the spectral theorem and
sup_(λ∈ℝ) λ² exp(-t₀ λ²)=1/(e t₀) imply

    ||g_t(K_ℓ)-g_s(K_ℓ)|| ≤ |t-s|/(e t₀),

and the same holds for H. For any fixed f, a finite time grid and the
strong convergence at its points give uniform convergence on [t₀,T].
The additional (1-P_ℓ)f term is independent of t and tends to zero, so the
embedded cut heat operators converge uniformly there as well.

## Limits

The claim assumes the actual model is the specified self-adjoint separated
tower, including its chosen local cut domains. It does not assert that the
physical Euclidean paired square is H² without an additional unitary and
domain identification. Strong operator convergence alone gives neither a
trace limit nor convergence of differentiated, subtracted heat traces; the
half-line heat operator is not automatically trace class. The t↓0 regulator,
thermal sums, local contacts and physical boundary normalization remain
separate obligations. No numerical computation is needed.

Remaining to-do list: establish the physical bundle and square identification;
prove the required trace and regulator bounds; complete response and novelty
audits; and certify supported claims in Lean on GCP.

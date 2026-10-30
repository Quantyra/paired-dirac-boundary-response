# Endpoint-complete two-insertion convergence with trace probes

Status: ordinary positive-time consequence for the separated changing-cut
model and a fixed Hilbert–Schmidt probe. This closes the insertion-endpoint
restriction in [the trace-probe note](changing-cut-trace-probes.md). It does
not identify the physical scalar insertion with a Hilbert–Schmidt probe,
prove a mixed metric variation, or certify a theorem in Lean.

## Statement

With the embedded heat operators T_ℓ(t)=J_ℓ*exp(-tH_ℓ²)J_ℓ and
T(t)=exp(-tH²), use T_ℓ(0)=P_ℓ=J_ℓ*J_ℓ and T(0)=I. Let S be fixed
Hilbert–Schmidt, B bounded, and 0<t₀<T₀<∞. Then

    sup_(t∈[t₀,T₀]) ∫₀ᵗ
      ||S*[T_ℓ(t-s) B T_ℓ(s)-T(t-s) B T(s)]S||₁ ds → 0.   (1)

Every integrand is trace class. Thus the integrated traces converge with the
endpoints and all angular sectors retained.

## Uniform strong convergence through zero

As in the strong heat note, define the fixed-space self-adjoint K_ℓ as the
cut Hamiltonian on ran P_ℓ direct summed with zero on its orthogonal
complement. The established K_ℓ→H in strong resolvent sense implies
K_ℓ²→H² in strong resolvent sense: the resolvents of the squares are
continuous functions of the original self-adjoint operators vanishing at
infinity. The standard strong convergence theorem for contraction
semigroups therefore yields, for every fixed vector f,

    sup_(0≤r≤T₀) ||exp(-rK_ℓ²)f-exp(-rH²)f|| → 0.

For every r≥0, including r=0,
exp(-rK_ℓ²)=T_ℓ(r)+(1-P_ℓ). Since P_ℓ→I strongly, T_ℓ(r)→T(r)
strongly and uniformly for r∈[0,T₀]. The special value T_ℓ(0)=P_ℓ matters:
it is not I on the fixed full space.

## Product and trace-norm limit

The heat factors are contractions. For fixed f, the set
{B T(s) f: 0≤s≤T₀} is compact, because the heat semigroup is strongly
continuous. Uniform strong convergence on fixed vectors, uniform boundedness,
and a finite-net argument make (T_ℓ(r)-T(r)) uniformly small on this
compact set. The telescoping identity then gives uniform strong convergence
of T_ℓ(r) B T_ℓ(s) to T(r) B T(s) for 0≤r,s≤T₀.

As in the trace-probe proof, approximate S by finite-rank operators. The
uniform strong convergence and the uniform product bound ||B|| imply that
the difference multiplied on the right by S converges uniformly in
Hilbert–Schmidt norm. Multiplication on the left by S* and Schatten Hölder
then give uniform trace-norm convergence of the sandwiched products on
[0,T₀]². Integrating over 0≤s≤t≤T₀ proves (1).

## Scope

The probe S is fixed and Hilbert–Schmidt. The physical scalar insertions are
not automatically of this type, and no argument here removes the probe or
controls t↓0 uniformly in the heat trace. In particular, (1) does not by
itself justify the paper's common-regulator limit, geometric derivatives,
or the physical normalization. The actual paired operator and domain must
still be identified with the separated model. No numerical test is needed.

Remaining to-do list: establish physical localized trace bounds and bundle
identification; close the response and novelty audits; write and certify the
supported paper claims in Lean on GCP.

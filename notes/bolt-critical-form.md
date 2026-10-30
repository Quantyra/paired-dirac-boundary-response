# Critical bolt mode: form-domain selection

Status: ordinary local model argument, not an identification of the full
physical spinor domain or a Lean certificate. It sharpens
[the bolt locality audit](contact-bolt-locality-gap.md) at the lowest thermal
frequency.

## Ground-state identity

On (0,R), let ψ∈C_c^∞(0,R), and write ψ=√ρ w. Integration by parts gives

    ∫₀ᴿ [|ψ'|²−|ψ|²/(4ρ²)]dρ = ∫₀ᴿ ρ |w'|²dρ ≥0.        (1)

Indeed |ψ'|²−|ψ|²/(4ρ²)=ρ|w'|²+Re(w' conjugate(w)); the second term
is (1/2)(|w|²)' and has zero boundary contribution for this test class.
This proves nonnegativity of the critical minimal quadratic form directly,
despite the potential being unbounded below pointwise. The identity does
not assert a lower bound on the potential itself.

## The regular and logarithmic behaviors

The local model equation has solutions ψ=√ρ and ψ=√ρ log ρ. The latter
has w'=1/ρ and infinite right-hand side of (1) near zero. It is therefore
excluded from the closure of the nonnegative form: on each compact
subinterval form convergence implies convergence of the weighted derivative,
and the resulting global weighted derivative must be square integrable.

The regular behavior √ρ is locally admissible in that closure. Fix a smooth
outer cutoff η equal to 1 near zero and zero near R. For ε small, let

    χ_ε(ρ)=0                    (ρ≤ε²),
           log(ρ/ε²)/log(1/ε)  (ε²<ρ<ε),
           1                    (ρ≥ε).

After smoothing its corners, ψ_ε=√ρ ηχ_ε is a compactly supported form
approximation to √ρ η. Its near-zero weighted derivative cost is

    ∫_{ε²}^{ε} ρ |χ_ε'|²dρ = 1/log(1/ε) →0.

The L² difference tends to zero, and the outer cutoff terms converge by
dominated convergence. Hence the nonlogarithmic mode is in the Friedrichs
form closure locally. The calculation also explains why a cutoff with a
fixed relative transition width would not give the needed vanishing energy.

For the smooth bolt expansion a(ρ)=κρ+O(ρ³), the difference between the
lowest critical radial potential and −1/(4ρ²) is bounded near ρ=0, assuming
the stated smooth coefficient expansion. A bounded real potential changes
the form by a bounded L² term and leaves this local form domain unchanged.
This is a conditional statement about the separated scalar sector; the
coordinate identification of the actual spinor operator and all modes must
still be verified.

## Implication for the paper

The simple form calculation is consistent with selecting the regular disk
mode and excluding the logarithmic endpoint extension. It does not by itself
prove that the geometric Dirac square has precisely this Friedrichs
realization, nor does it give a heat-kernel locality estimate or justify
Feynman–Kac domination at the critical potential. Those require the actual
spin-frame transformation, domain equality and either a regular Cartesian
kernel argument or a rigorously controlled singular-potential kernel.
No numerical computation is needed for (1).

Remaining to-do list: identify the geometric bolt domain with the local form,
prove physical localization and regulator estimates, finish novelty review,
and certify supported statements on GCP.

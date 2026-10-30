# Regular disk spinors and lowest thermal radial modes

Status: conditional local domain argument, not a global paired-domain proof
or a Lean certificate. It connects [the critical form analysis](bolt-critical-form.md)
to the regular Cartesian spin structure recorded in the
[pinned conformal-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md).

## Local spin-frame calculation

Let θ=κτ have period 2π and (ρ,θ) be polar coordinates in a smooth disk
around the bolt. In a smooth Cartesian spin frame write a smooth spinor as
components F_+,F_−. The rotating polar spin frame differs by a spin lift
whose two components carry phases e^{±iθ/2}; an overall convention may
reverse both signs. Thus its components are antiperiodic in θ.

The n=0 angular Fourier coefficient of a smooth Cartesian component is
F_±(0)+O(ρ²): its linear Taylor terms average to zero. Its n=±1
coefficients are O(ρ). To obtain one fixed polar frequency +1/2, one
polar component therefore comes from a Cartesian n=0 coefficient and the
other from n=1 (with the assignments reversed for the other spin-lift
convention). The case −1/2 is analogous. Multiplication by the radial
half-density factor √a(ρ)=√(κρ)[1+O(ρ²)] gives the two behaviors

    ψ_crit=√ρ [c+O(ρ²)],      ψ_other=O(ρ^(3/2)).          (1)

The two exponents match the critical −1/(4ρ²) and partner +3/(4ρ²)
indicial exponents of [the radial calculation](contact-bolt-locality-gap.md).
In particular, a smooth Cartesian spinor does not generate a √ρ log ρ
term. The argument is local and applies in a trivialization of the smooth
spin and twisting bundle; smooth connection coefficients change lower-order
terms, not these leading powers. It does not infer a global bundle map from
one frame.

## Local form-core consequence

Assume the physical Dirac-square form near the bolt is the closure of
smooth Cartesian spinors and the rotation action preserves the form and
its domain. Fourier projection of that smooth core onto a fixed thermal
mode is again smooth. For the critical component, (1) and the logarithmic
cutoff construction in [the critical form note](bolt-critical-form.md)
approximate it in the critical local form norm by sections supported away
from the bolt. The O(ρ²) correction has finite weighted energy and is
removed by the same cutoff; its cost is no larger than the constant term's.
For the other component, ψ=O(ρ^(3/2)) and ψ'=O(ρ^(1/2)), so ordinary
shrinking cutoffs have vanishing local form cost. A density/diagonal
argument then places the projected regular form core in the respective
closures of radial functions supported away from the bolt.

Conversely, a smooth radial section supported away from the bolt defines a
smooth spinor supported away from the bolt in the corresponding fixed mode.
Under the assumed unitary half-density and spin-frame transformations and
local bounded lower-order perturbation, its form norm is equivalent to the
radial model form norm. Thus the two *local form closures* agree for these
lowest-mode components under the stated core and invariance hypotheses.
This is stronger than a comparison of formal indicial roots, but it does not
assert equality of global operator domains or specify an independent
boundary condition at the bolt.

The precise sign assignment between the two spin components and the
source's Γ eigensectors must still be matched to its global gamma convention.
The argument does not cover arbitrary thermal modes, a different spin
structure, the global paired outer boundary, or a heat-kernel localization
estimate. No numerical computation is needed for the local frame and form
comparison.

Remaining to-do list: verify the physical spin-frame and form-core hypotheses,
extend the comparison to all modes, prove localization and regulator limits,
complete novelty review, and certify supported claims on GCP.

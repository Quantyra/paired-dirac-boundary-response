# Source mass/log directions in the fixed-ratio bridge

This reconciles the fixed-cut source definitions with
`fixed-ratio-simultaneous-weyl-variation.md`. It establishes a match at the
first-order family level under the source's stated domain and bundle
hypotheses. It does not establish the source's full trace, finite part or
uniform curved remainder.

The frozen [rough paired variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md),
sections 2--3, uses a real scalar b with first weak derivative bounded and
identical action on both copies. Its fixed-seed first-order family is
D_b=exp(-b/2)D_0 exp(-b/2); its directions u,w obey the same stated weighted
collar class. Thus for a seed b_0 and a linear two-direction path
b(s,q)=b_0+s u+q w, scalar multipliers commute and the source family is
exactly

  D_(b(s,q)) = exp[-(s u+q w)/2] D_(b_0)
                     exp[-(s u+q w)/2].                       (1)

This is the D(s,q) used in the mixed bridge, on the source's fixed Hilbert
space and first-order domain, provided its domain and adjoint assumptions
are verified for the chosen realization. The scalar directions are the
full first-order congruence directions. Their weighted cubic/log boundary
jets and zero normal jets are not changed by this algebraic identification.

The frozen [paired phase source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md),
section "Why a modulus Weyl variation initially averages both squares",
uses a smooth four-dimensional path g_t=exp(2t sigma)g_0. Therefore, for
this full-Weyl path and a fixed finite-cut ratio hat g=U^2 g, the simultaneous
variation hat g_t=exp(2t sigma)hat g keeps U fixed and the closed-operator
congruence of the fixed-ratio note applies under its bundle, boundary and
multiplier hypotheses. Taking sigma to be the admitted scalar direction
matches the source's formal fixed-Hilbert direction; extending the smooth
path identity to its rough class needs the stated approximation and trace
arguments. The full four-dimensional angular term varies too, as shown in
`full-weyl-angular-mode-correction.md`.

This identification must not be transferred unaltered to the separate
orbit-only massive conversion in the frozen [conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md).
That source's r=1 endpoint keeps the angular mass fixed after the orbit
congruence. `product-mode-real-mass-interpolation.md` shows it differs from
the full four-dimensional congruence, which rescales the angular term.
Consequently the first-order match in (1) neither identifies the physical
mixed heat response with the orbit conversion nor proves a Theta-prime
factorization. Both partner traces, the physical-half normalization and
all vertices and counterterms still need matching.

No parameter-independent square-domain equality, curved small-time bound,
regulator removal, numerical check or Lean certificate follows from this
source comparison.

Remaining to-do list: verify global physical domain/bundle and rough trace
hypotheses, match full and orbit responses and regulator, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.

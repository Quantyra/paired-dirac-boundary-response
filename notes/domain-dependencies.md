# Paired first-order and square domains: dependency extraction

Status: preliminary source extraction, not an independent proof audit or a
Lean certificate. The source is [stationary paired Dirac phase, pinned at
f0eab590](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md),
sections 1-3. It works initially at a finite smooth spherical outer cut for
identical stationary copies and a regular thermal bolt, with fixed pulled-back
spin and monopole bundle identification. The conformal-domain derivation and
underlying coupled-domain construction must also be traced before acceptance.

The recorded fixed-frame expressions are chi = tau_3 gamma_n,
Pi_+ = (1+chi)/2 and Pi_- = 1-Pi_+. The stated first-order boundary domains
are Pi_- psi = 0 for D and Pi_+ phi = 0 for its adjoint. The Green boundary
pairing uses gamma_n; the source states that gamma_n preserves chi eigenspaces
and the two allowed trace spaces are complementary. D is not asserted to be
self-adjoint on its original domain.

The claimed positive square is defined by composition, D* D. On the smooth
finite-cut realization, its recorded local conditions are Pi_- psi = 0 and
Pi_+ (nabla_n + K/2) psi = 0. The partner D D* exchanges the projectors.
The source explicitly points to stationary-exterior-conformal-domain.md for
normal conventions and the Gauss formula. Thus the correspondence to
transmittal or transfer boundary conditions requires a comparison of the
projector-constrained mixed problem itself, not merely the bulk operator.

The recorded involutions J = tau_1 tensor sigma_1 tensor 1 and T = tau_3
interchange/preserve the respective projector domains. The source asserts
D* = -J D J and equality of partner squares under J. Audit the global bundle
identifications, connections, boundary annihilator and closed domains before
importing these identities into the manuscript. In particular the common
projector does not, without further argument, freeze a square domain along a
metric family.

For the rough family the separate [rough paired-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md)
claims preservation of the first-order domains by E = exp(-b/2) and its
inverse, and explicitly retains the composed square domains. Confirm the
precise trace and multiplier hypotheses, normal conventions, limiting cut,
field class and regular-bolt chart; a smooth finite-cut statement alone does
not establish the claimed rough-family or common-regulator convergence.
The curved trace remainder is still open in the source and no uniform curved
response is claimed in this document.

Remaining to-do list: trace the coupled and conformal domain sources and their
hypotheses, complete the ordinary proof audit, compare the exact projector
problem with primary literature, and formalize the supported statements on GCP.

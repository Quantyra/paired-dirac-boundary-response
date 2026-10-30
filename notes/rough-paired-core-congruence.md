# Rough paired core from bounded congruence

This closes the rough-multiplier core step left open in
`complete-physical-paired-core.md`, under an explicit product-rule and domain
invariance hypothesis. It is an ordinary functional-analytic argument, not
an independent verification of the physical bundle or a Lean certificate.

Let A_0 be self-adjoint on H with domain V and graph core C. In the physical
application A_0=i J D_0 and C=C_c^infinity follows from the complete smooth
model and assumptions in the cited note. Let beta be real W1,infinity and
E=exp(-beta/2). Assume scalar multiplication by E and E^-1 maps V onto V,
and the weak product rule holds on V with

  [A_0,E]=C_E,       ||C_E|| <= (1/2)e^(B/2) G,               (1)

where B=||beta||_infinity and G bounds the first derivative with the stated
symbol normalization. These hypotheses must be verified for the actual
complete bundle and domain; on the model they follow from the usual closed
Dirac product rule. Define A_beta=E A_0 E on V.

Because E is bounded, self-adjoint and invertible, the adjoint of the actual
congruence satisfies

  (E A_0 E)*=E A_0 E,                                         (2)

with domain {x:E x in V}=V. For example, the adjoint of the left product
E A_0 is A_0 E since E is bounded and invertible; composing with the right
bounded E then gives (2), with the displayed preimage domain. Thus A_beta
is self-adjoint on V, not merely formally symmetric.

The product rule and its inverse give graph comparisons on V:

  ||A_beta x|| <= e^B[||A_0 x||+(G/2)||x||],
  ||A_0 x|| <= e^B||A_beta x||+(G/2)||x||.                   (3)

For the reverse bound, E^-2 A_beta x=A_0 x+E^-1 C_E x.
Together with the identity term in the graph norm, (3) makes the graph norms
equivalent. Therefore C is also a graph core for A_beta: every graph-norm
approximation in C for A_0 is one for A_beta. In particular, when the
smooth complete seed has C=C_c^infinity, its W1,infinity congruence has the
same compactly supported smooth core even though A_beta phi need not itself
be smooth. No uniform higher derivatives of beta are used.

For a changing-cut/approximant sequence, if the finite-cut paired generators
are self-adjoint on a common Hilbert-space embedding and act on each
phi in C eventually, it is enough to verify local W1,infinity convergence
of beta_n to beta and the stated local bundle/coefficient convergence.
The product rule in (1), applied on the compact support of phi, then gives
A_n phi->A_beta phi. `paired-core-strong-heat-factors.md` supplies strong
resolvent and Dirac heat-factor convergence. This is conditional on the
actual cut domains, partner maps and local convergence; it does not infer
them from the formal expression or fix the changing square domains.

The graph core and strong heat factors do not imply the physical trace,
P1-D remainder, common regulator or novelty. No numerical or Lean
certification is claimed.

Remaining to-do list: verify the physical product rule and cut/bundle maps,
complete the mixed trace and regulator, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

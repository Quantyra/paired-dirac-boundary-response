# Conditional uniform contact diagonal for the paired cut model

This assembles the fixed-seed estimates needed by
`physical-contact-joint-cut-approximants.md`. It is conditional on the
explicit realization and geometry hypotheses below, and does not identify the
source's physical-half trace or prove a proper-time remainder.

Consider the smooth zero-angle paired finite-cut model on the fixed RN seed,
with radial smooth field approximants f_e and L_(delta,e)=D_(delta,e)*
D_(delta,e). Assume:

1. The actual cut domains are the complementary H1 projector realizations,
   satisfy the first-order elliptic regularity hypotheses, and their square
   has the mixed boundary description in `multiplier-square-boundary.md`.
2. The Green, Gauss and Weitzenbock identities, smooth copy/twist maps and
   regular bolt extension hold as stipulated in
   `paired-graph-source-reconciliation.md`.
3. The physical boundary and interior charts, gauges, projectors and field
   coefficients have the uniform derivative and ellipticity bounds required
   by `rn-cut-uniform-boundary-charts.md`,
   `rn-mixed-robin-coefficient-bounds.md`, and
   `mixed-h3-constant-projector-frame.md`. In particular the transformed
   Robin coefficients have the tangential derivatives used in the flat
   Robin estimate.
4. The analogous uniform interior local estimates and heat-kernel
   representation hold on the compact interior and complete-space limit.

Under these assumptions there is, for each fixed s>0, a constant C_s
independent of delta,e such that

  sup_(x in X_delta) tr K_(delta,e,2s)(x,x) <= C_s,    (1)

and one may take C_s=C(1+s^(-3/2))^2 with the usual fixed chart constants.
The finite-cut weighted Hilbert--Schmidt estimates used for the contact then
follow by integrating (1) against |u|^2.

The argument is as follows. The graph estimate follows from the cited
paired graph reconciliation, including the uniform RN trace and curvature
bounds and smooth projector core. The rescaled boundary charts and bounded
projector frames give uniform local coefficients and Robin data. The flat
mixed Robin H3 estimate, variable-principal perturbation, and
boundary-preserving localization give the uniform local H3 a priori
estimate on the fixed smaller charts. Positive-time heat outputs are H3 on
each smooth cut by iterated first-order boundary regularity; the mixed H3
smooth-core argument permits application of the a priori estimate without
requiring uniform approximation norms. Spectral calculus and the uniform
graph estimate bound L K_s h in H1 by C(1+s^(-3/2))||h||. Thus the local
H3->C0 estimate bounds point evaluation of K_s uniformly. The semigroup
identity tr K_(2s)(x,x)=||evaluation_x K_s||_HS^2 gives (1), as detailed in
`physical-contact-diagonal-h3-suffices.md`.

Combined with the localized convergence, physical W1 field convergence and
L2 insertion convergence hypotheses of the joint-contact note, (1) supplies
its finite-cut diagonal input. The remaining complete-space diagonal and
localized convergence inputs must also be verified there. In particular,
the pinned source records a finite-cut projector and fixed bundle map, but
this assembly does not independently prove that the physical copy/source
maps meet assumptions 1-3 or select this cut regulator. The bound is not a
short-time subtracted estimate and may diverge strongly as s->0. No numerical
run or Lean certificate is claimed.

Remaining to-do list: verify physical bundle and source/regulator matching,
complete the full response and prior-art decision, prepare the manuscript,
and certify supported claims in Lean on GCP.
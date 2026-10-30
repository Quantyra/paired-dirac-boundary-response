# Smooth H3 approximation preserving mixed boundary conditions

This fills the approximation step between the H3 membership and smooth
local a priori estimates in `finite-cut-heat-output-h3-membership.md` and
`mixed-h3-variable-principal-perturbation.md`. It is a fixed smooth-cut
statement; it does not identify the physical domain or prove a uniform
right-inverse norm across cuts.

Let X be a compact smooth manifold with boundary, E a smooth Hermitian
bundle, P a smooth orthogonal boundary projector, and S a smooth endomorphism
of the allowed subbundle. Let n be a fixed smooth collar normal. Define

  W={f in H3(X;E): (1-P)gamma f=0,
                         P(gamma nabla_n f+S gamma f)=0}. (1)

Smooth sections satisfying the same two conditions are dense in W in H3.
The trace maps gamma:H3->H^(5/2) and gamma nabla_n:H3->H^(3/2) are
continuous. The standard two-jet trace theorem supplies a continuous right
inverse taking a pair (a,b) in H^(5/2) x H^(3/2) to an H3 section with
boundary value a and normal covariant derivative b, and taking smooth pairs
to smooth sections. It can be constructed in a collar and patched in bundle
charts. This theorem is an analytic input; its norm need not be uniform here.

For f in W choose arbitrary smooth g_j->f in H3. Define the boundary errors

  a_j=(1-P)gamma g_j,
  b_j=P(gamma nabla_n g_j+S gamma g_j).                  (2)

Then a_j->0 in H^(5/2) and b_j->0 in H^(3/2). Choose the right inverse
applied to the pair (a_j,b_j), giving a smooth section h_j with these exact
value and normal derivative traces and with ||h_j||_H3->0. Since a_j lies
in (1-P)E and b_j lies in PE, its mixed boundary data are

  (1-P)gamma h_j=a_j,
  P(gamma nabla_n h_j+S gamma h_j)=b_j.                 (3)

The second equality uses P S a_j=0, with S understood as acting only on
the allowed subspace. If a different extension of S is used, prescribe the
normal derivative b_j-P S a_j instead. Thus f_j=g_j-h_j is smooth, satisfies
both boundary conditions exactly, and tends to f in H3.

For a compactly supported local half-chart version, apply a cutoff that is
identically one near the support and has zero normal derivative on the
boundary; it preserves the mixed conditions, as in
`mixed-h3-robin-localization.md`. This justifies extending a uniform smooth
a priori estimate to already-H3 heat outputs on each cut, without needing a
uniform approximation rate. The estimate's constants still require the
uniform local frame, coefficient, collar and ellipticity assumptions, and
H3 membership remains supplied by the separately stated first-order
regularity theorem. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the physical projector and uniform estimate
hypotheses, match source and regulator, complete prior art and the manuscript,
and certify supported claims in Lean on GCP.
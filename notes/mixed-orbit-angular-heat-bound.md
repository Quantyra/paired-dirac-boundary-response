# Mixed orbit and angular heat vertices at positive time

This gives a conditional absolute bound for mixed orbit/angular first-vertex
insertions at the product seed. It complements `angular-vertex-heat-majorant.md`
and does not prove a renormalized short-time remainder or Lean certificate.

Let L>=0 have trace-class heat operator on the orbit Hilbert space, with
V=Dom((1+L)^(1/2)). Let v_u be the first derivative of the orbit-square form
in direction u and suppose

    |v_u(f,g)| <= C_u ||(1+L)^(1/2)f|| ||(1+L)^(1/2)g||, f,g in V. (1)

The fixed-domain congruence and weak product rule give a finite C_u under the
bounded W^{1,infinity} hypotheses in the positive-time form argument; its
exact value depends on the seed graph constants. Represent v_u by a bounded
operator B_u on H after sandwiching by (1+L)^(-1/2), with ||B_u||<=C_u.
For mode mu let H_mu=L+mu² and let A_w,mu be the bounded angular first
vertex in `full-weyl-angular-vertices.md`.

For 0<s<t, heat smoothing and Schatten Hölder yield

    |Tr[e^(-(t-s)H_mu) v_u e^(-s H_mu) A_w,mu]|
      <= C_u ||A_w,mu|| e^(-t mu²/2) Tr(e^(-tL/2))
           h(t-s) h(s),                                     (2)
    h(r)=sup_(lambda>=0) sqrt(1+lambda) exp(-r lambda/2)
         <= 1+(e r)^(-1/2).

The trace in (2) means the form insertion with heat factors, justified by
inserting (1+L)^(1/2) on each side of B_u. To see the bound, reserve half of
each heat interval for trace-class smoothing and the other half for the
weighted operator norms h(t-s),h(s). The two remaining heat factors have
Hilbert--Schmidt norms whose product is at most Tr(e^(-tH_mu/2)): apply
Schatten Hölder with exponents t/(t-s) and t/s to their squares. This works
without treating v_u as a bounded L² operator.

For both time orderings of one v_u and one A_w,mu, cyclicity of the
regularized simplex integral gives t times the s integral in (2). The
singularities are integrable:

    integral_0^t h(s)h(t-s) ds
       <= t+4 sqrt(t/e)+pi/e.                               (3)

The same argument applies to the pair v_w,A_u,mu. With
U=||u||∞, U1=||c(du)||∞, and corresponding W,W1, the sum of the two
cross-pair contributions over all massive modes is bounded by

    t [t+4 sqrt(t/e)+pi/e] Tr(e^(-tL/2))
      { C_u [2 W S_2(t/2)+W1 S_1(t/2)]
       +C_w [2 U S_2(t/2)+U1 S_1(t/2)] },                  (4)

where S_p is the complete massive tower moment in the angular majorant.
That note supplies explicit finite bounds for S_p at every positive t. The
angular vertex vanishes on the zero mode, but the pure orbit response there
must be retained. Formula (4) proves absolute summability of these combined
cross-pair traces on each positive-time interval under the stated form and
sector hypotheses. It does not assert an individual unregularized operator
integral exists at the endpoints; take the form-smoothed integral limit.

If Tr(e^(-tL/2))=O(t^-1) on a compact two-dimensional orbit, (4) is at
most O(t^-2) as t tends to zero. This unsubtracted estimate cannot establish
the desired integrable remainder or justify regulator removal. The mixed
second square vertex, pure orbit pair, local subtraction, physical bundle
and finite-cut matching remain separate. No numerical calculation is used.

Remaining to-do list: assemble all vertices with the physical subtraction,
prove the short-time common-regulator estimate, verify geometry, decide
novelty, prepare the manuscript, and certify supported results in Lean on GCP.


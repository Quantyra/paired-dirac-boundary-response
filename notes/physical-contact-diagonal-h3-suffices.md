# H3 boundary regularity suffices for the contact heat diagonal

This reduces the analytic input used by the positive-time contact-cut limit.
It does not prove the required uniform local H3 estimate for the physical
projector problem. In particular it does not establish derivative heat
kernel or boundary-trace bounds used by the ordered vertices.

Use the fixed four-dimensional physical collar and finite-cut squares
L_delta,e=D_delta,e* D_delta,e from
`physical-finite-cut-uniform-heat-diagonal.md`. Suppose the uniformly
controlled interior and half-boundary charts in that note exist. Assume:

1. A uniform local H1 graph estimate for the first-order realization D.
2. A uniform local H3 estimate for the mixed square boundary problem on
   nested charts, for inputs in Dom L with Lf locally in H1 and the
   appropriate homogeneous composition traces. Include the commutator
   estimates for the fixed nested cutoff functions.
3. Smoothness/trace regularity sufficient to apply these estimates to heat
   outputs and the usual H3->C0 embedding in the dimension-four charts.

All constants are required to be independent of the cut, field approximant,
and chart. The complete-space interior estimate is assumed analogously.
These hypotheses deliberately stop at H3; the H5 input of the earlier
finite-cut heat-diagonal note is not needed for the volume diagonal alone.

For K_s=exp(-sL), let f=K_s h. Spectral calculus gives

  ||f|| + ||Df|| <= C(1+s^(-1/2))||h||,
  ||Lf|| + ||D Lf|| <= C(s^(-1)+s^(-3/2))||h||.      (1)

The first-order graph estimate applied to Lf controls its local H1 norm;
the H3 square estimate then gives on a smaller chart

  ||K_s h||_H3 <= C(1+s^(-3/2))||h||.                  (2)

Use cutoff graph estimates and their commutators on nested charts; their
uniform boundedness is part of assumptions 1-2. By H3->C0, point evaluation
of K_s is a bounded functional on L2, uniformly in the point, chart and cut.
With the finite-rank bundle fibers accounted for, the heat kernel identity
and self-adjoint semigroup property give

  tr K_(2s)(x,x) = ||evaluation_x K_s||_HS^2
                    <= C(1+s^(-3/2))^2.                (3)

The equality uses the standard kernel representation supplied by the stated
heat regularity; it applies up to the boundary when the representative and
traces have that regularity. Thus (3) supplies the fixed-positive-time
uniform volume diagonal required in the contact-cut notes. It yields

  ||M_u K_s||_2^2 <= C_s ||u||_L2(X_delta)^2            (4)

for scalar u, with the analogous estimate for the complete-space heat and
bounded matrix multipliers (using fiber norms). The constants may be
singular as s->0 and do not imply a subtracted asymptotic remainder.

This reduction leaves the nontrivial uniform H1/H3 mixed-boundary estimates,
the actual bundle and projector matching, and the uniform interior estimates
to be verified. It also leaves physical time-reduction and half-trace
normalization, all other vertices, and regulator interchange open. No
numerical run or Lean certificate is claimed.

Remaining to-do list: prove the H1/H3 assumptions and physical trace matching,
complete the regulator and prior-art audits, prepare the manuscript, and
certify supported claims in Lean on GCP.
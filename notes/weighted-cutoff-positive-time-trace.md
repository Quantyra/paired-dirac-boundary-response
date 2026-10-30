# Positive-time trace convergence for the weighted collar cutoff

This is an application of [the compact positive-time trace argument](paired-positive-time-trace-derivatives.md) to the original weighted collar cutoff in [the operator estimate](collar-cutoff-resolvent-convergence.md). It is conditional on the fixed compact four-dimensional geometric, domain and elliptic hypotheses in the former note. It is not a short-time common-regulator theorem or a Lean certificate.

Let b,u,w and their cutoff approximants b_epsilon,u_epsilon,w_epsilon be real identical-copy W1,infinity multipliers on the fixed compact seed. Assume the cutoff is applied to each physical-side weighted remainder, leaves the separate cubic jet and exterior unchanged, and obeys the tangential mixed-derivative hypotheses needed for the full gradient estimate. Then, uniformly under fixed collar and exterior constants,

    d_epsilon := ||b_epsilon−b||_W1,infinity
       + ||u_epsilon−u||_W1,infinity + ||w_epsilon−w||_W1,infinity
       <= C epsilon³ [1+log(1/epsilon)].                           (1)

The derivatives through order one of the cutoff error have the source weights y^(4−j)L(y) and are supported in y<2epsilon. If the directions are held fixed instead of cut off, omit their two differences in d_epsilon. The same conclusion applies to separately smoothed approximants if their W1,infinity errors are chosen no larger than the right side.

Set E_epsilon,z=exp[−(b_epsilon+z1 u_epsilon+z2 w_epsilon)/2], form D_epsilon,z=E_epsilon,z D E_epsilon,z on the common first-order domain, and let L_epsilon,z be the positive square for real z, with the complex form continuation specified in the earlier note. The earlier proof gives a common small complex polydisc in which the forms are uniformly coercive after one shift. Its product-rule estimates improve here to a quantitative form bound

    ||a_epsilon,z−a_z||_(V→V*) <= C d_epsilon                    (2)

uniformly on that polydisc. The sectorial variational resolvent identity and the heat contour then give, on any smaller closed polydisc and any 0<t0<=t<=T,

    ||exp(−t L_epsilon,z)−exp(−t L_z)|| <= C_(t0,T) d_epsilon.  (3)

The constants depend on the fixed ellipticity and form bounds and can deteriorate as t0 decreases. The heat operators in (3) for complex z are the associated sectorial semigroups, not physical positive squares.

For any fixed 4<p<6, the earlier argument gives uniform S_p bounds on positive-time complex heat factors. The singular-value interpolation inequality yields S6 difference O(d_epsilon^(1−p/6)). Telescoping the six equal-time factors and applying Schatten Hölder gives the same rate in trace norm. Cauchy's two-variable formula on fixed smaller circles then yields

    sup_(t0<=t<=T) ||partial_1 partial_2 [exp(−t L_epsilon,z)
                −exp(−t L_z)]_(z=0)||_1
        <= C_(t0,T,p) d_epsilon^(1−p/6).                         (4)

Inserting (1) provides an explicit, nonsharp positive power of epsilon. Equation (4) includes all modes of the fixed compact four-dimensional operator, without claiming an angular decomposition or per-exterior normalization. It also gives convergence of the trace against any fixed bounded insertion. If an insertion varies with epsilon, its own convergence and bound must be included separately.

This quantifies positive-time convergence of the mixed heat derivative for the original weighted cutoff. It does not provide a bound uniform as t0 tends to zero, identify the complete physical density and contact terms, or justify interchanging cutoff removal with the curved short-time subtraction and common regulator. The hypotheses on the physical finite-cut bundle, boundary realization and regularity remain to be verified. No numerical or Lean certification is claimed.

Remaining to-do list: prove the physical domain and common-regulator bridge, complete the novelty decision and manuscript, and certify supported claims in Lean on GCP.

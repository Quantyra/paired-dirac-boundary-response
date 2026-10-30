# Conditional finite-part transfer along the joint model path

This combines the unsubtracted product-orbit comparison in
`product-geometric-source-cutoff-rate.md` with the auxiliary local
subtraction comparison in `joint-path-local-conversion-subtractions.md`.
It is a conditional transfer principle; the physical model and the auxiliary
subtractions have not yet been identified as the same regulated observable.

Let J_eta(t) be the complete unsubtracted model conversion expression,
including the two geometric variations and the contact with their full
angular factors. Let J_0(t) be its limiting-field model expression, and let
S_eta(t), S_0(t) be the corresponding declared local subtraction expressions.
Assume these expressions use exactly the same orbit operator, cut transport,
trace normalization, local measure, angular convention and regulator. Assume
also the prior notes' uniform hypotheses and their comparison bounds

  |J_eta(t)-J_0(t)| <= C eta^(1/4) t^(-3),            (1)
  |S_eta(t)-S_0(t)| <= C D (t^(-1)+1),                (2)

where (2) uses the exact inverse-square coefficient cancellation at each
cutoff and D measures the stated piecewise W3 coefficient difference. If the
leading cancellation is not established, replace (2) by the separately
justified bound C D(t^(-2)+t^(-1)+1); do not infer cancellation from a
limiting identity.

Along any joint path for which eta^(1/4) t^(-3)->0 and D/t->0, the triangle
inequality gives

  [J_eta(t)-S_eta(t)]-[J_0(t)-S_0(t)] -> 0.           (3)

If in addition the limiting model finite part lim_(t->0)[J_0(t)-S_0(t)]
exists, then the same finite value is obtained along this path. The existence
of that limiting finite part is an independent hypothesis, not a consequence
of (1)-(2). If the weaker cancellation information applies, D/t^2->0 is
sufficient instead.

For the example e_field=t^9 and delta=exp(-4L/t), the preceding notes give
eta<=C[delta+e_field^3(1+|log e_field|)] and
D<=C(e_field+delta)(1+|log e_field|). Both conditions, including D/t^2->0,
hold on this one path. The operator and coefficient errors must be
interpreted in the common transported charts; the periodic auxiliary
seam-preserving map and its relation to the half-orbit cut still have to be
constructed before (1) and (2) can be applied to one actual expression.

This is an algebraic consequence of the stated bounds. It does not prove the
source conversion identity for rough fields, a uniform small-time heat
remainder, path independence, or equality with a physical determinant.
No numerical run or Lean certificate is claimed.

Remaining to-do list: identify the common operator, trace and subtractions,
prove the limiting finite part and geometric/source matching, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
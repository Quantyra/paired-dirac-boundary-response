# Moving-insertion extension of the moving-cut mixed heat estimate

This extends `product-frame-moving-cut-response-rate.md` to a bounded
parameter-dependent insertion. It supplies a conditional estimate for the
complete mixed derivative of the declared compact-model observable, including
the insertion derivatives in `fixed-cut-moving-insertion-mixed-response.md`.
It does not identify the physical density or cutoff, prove the curved
subtraction, or remove the regulator.

## Claim and hypotheses

Let the two holomorphic trace-class heat families T_(delta,z)(t) and
T_(0,z)(t) satisfy all the hypotheses and bounds in the moving-cut note on a
common complex polydisc D of positive radii, uniformly for 0<t<=1. In
particular, on D,

  ||T_(delta,z)(t)-T_(0,z)(t)||_1 <= C delta^(1/6) t^(-35/12),  (1)
  ||T_(0,z)(t)||_1 <= C t^(-5/2).                              (2)

The second bound follows by factoring the semigroup into five equal-time
factors and applying Schatten Holder to the uniform S5 smoothing bound in
the cited note. Assume additionally that C_(delta,z) and C_(0,z) are bounded
operator-valued holomorphic families on D, with

  sup_D ||C_(delta,z)|| <= M,
  sup_D ||C_(delta,z)-C_(0,z)|| <= M' delta,                    (3)

uniformly in delta and every additional regularizer. Define
F_delta(z,t)=Tr[C_(delta,z) T_(delta,z)(t)]. Then on any smaller closed
polydisc D' contained in D, with fixed positive distance to its boundary,

  |partial_1 partial_2(F_delta-F_0)(z,t)|
       <= C' delta^(1/6) t^(-35/12), 0<delta<=1, 0<t<=1.       (4)

The constant depends on the polydisc margins and on the uniform bounds, not
on t, delta, or the additional regularizer. The same estimate holds at the
base point z=0. It includes both first insertion derivatives and the mixed
insertion derivative; it is not an estimate for any one of those terms alone.

## Argument

The exact telescope is

 F_delta-F_0 = Tr[C_delta (T_delta-T_0)]
                 + Tr[(C_delta-C_0) T_0].                      (5)

The trace ideal inequality, (1)--(3), and delta<=1 give a uniform bound on D:

 |F_delta-F_0| <= MC delta^(1/6) t^(-35/12)
                    + M'C delta t^(-5/2)
              <= C'' delta^(1/6) t^(-35/12).                  (6)

The product is scalar holomorphic: the trace-class heat family and bounded
insertion are holomorphic, and multiplication into the trace class and the
trace are continuous. Apply the two-variable Cauchy integral formula on
fixed circles inside D around each point of D'. Their reciprocal radii only
change the constant, giving (4). Expanding the derivative recovers all four
terms of the moving-insertion product rule, so no density term is discarded.
This proof uses holomorphy and uniformity on the complex polydisc, rather
than assuming that real-parameter convergence controls derivatives.

With the same proper-time weight as the cited moving-cut estimate, (4) yields

  integral_epsilon^1 t^(-2) |partial_1 partial_2(F_delta-F_0)| dt
      <= (12 C'/47) delta^(1/6) (epsilon^(-47/12)-1).         (7)

Consequently delta(epsilon)=exp(-4L/epsilon), for fixed L>0, makes this
particular difference vanish as epsilon decreases to zero. No claim is made
about the remaining large-time integral, local restorations, contact terms,
physical-half normalization, or the value of a renormalized response. An
actual physical insertion must first be represented on the common pulled-back
Hilbert space and verified to satisfy (3) uniformly in its regulator; a
moving characteristic cutoff, for example, need not be close in operator norm.
The comparison is therefore not a substitute for that identification. No
numerical or Lean verification is claimed.

Remaining to-do list: identify and bound the actual physical insertions and
contacts, establish the curved subtracted estimate and regulator limit, resolve
novelty, complete the manuscript, and certify the supported claims on GCP.

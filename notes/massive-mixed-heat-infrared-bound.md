# Positive-mass mixed heat tail from a uniform form gap

This addresses the large-proper-time part of the mixed response for the positive-mass paired model. It extends the undifferentiated mass-gap and tower bounds in `graded-conversion-tower-domination.md`; it is conditional on the stated complex-form and smoothing estimates. It does not remove the small-time regulator, establish the physical observable, or treat the massless sector.

## Claim and the first missing implication

Let n index finite-cut paired realizations, and let P_n(z) be the holomorphic form-family continuation in two complex variation parameters z=(z1,z2) of the positive square, with common form domain for each n. Let K_n(z,t)=exp(-t P_n(z)). Assume there are fixed numbers rho,c,t0,C>0, independent of n, such that throughout the closed polydisc |zj|<=rho:

  Re q_(n,z)[v] >= c ||v||²,                                  (1)
  ||K_n(z,t0)||_1 <= C.                                       (2)

The closed sectorial forms are assumed to give trace-norm-holomorphic heat operators and the standard semigroup bound ||K_n(z,t)||<=exp(-ct). Let U_n be fixed bounded insertions with ||U_n||<=U. Then for every t>=t0,

  |partial_z1 partial_z2 Tr[U_n K_n(z,t)] at z=0|
      <= U C rho^(-2) exp[-c(t-t0)],                          (3)

and hence for T>=t0 the tail against dt/t is bounded uniformly in n by

  (U C/rho²) exp[-c(T-t0)]/(c T).                             (4)

The first unproved implication for the actual physical model is the uniform-in-cut, complex-parameter trace estimate (2), together with the matching of the massive operator and insertion. On an exhausting noncompact geometry the unlocalized trace in (2) can grow with volume; it must not be assumed merely from a fixed-cut compactness argument. A localized version below avoids requiring the entire heat trace to remain bounded.

## Proof and localized variant

The semigroup property and (1) give

  ||K_n(z,t)||_1 <= ||K_n(z,t0)||_1 ||K_n(z,t-t0)||
                   <= C exp[-c(t-t0)].

Apply the two-variable Cauchy formula on |zj|=rho, with circles inside the holomorphy domain (or first use a slightly smaller radius), to the scalar trace Tr[U_n K_n(z,t)]. This proves (3). Integrating and bounding 1/t<=1/T gives (4). The mixed derivative is the derivative of the complete heat operator: it includes the second vertex and both first-vertex orders, assuming the form family actually represents the source variation. Fixed bounded U_n may be replaced by a uniformly bounded holomorphic U_n(z), provided its trace product satisfies the same bound on the polydisc; its derivatives are then included by Cauchy's formula.

For an exhausting family it suffices instead to assume, at t0 and uniformly on the same polydisc,

  ||U_n K_n(z,t0)||_1 <= C_loc.                                (5)

Then the same factorization gives ||U_n K_n(z,t)||_1 <= C_loc exp[-c(t-t0)] and (3)--(4) hold with U C replaced by C_loc. This is a concrete localized smoothing target for the mixed physical problem. It requires a complex-parameter trace-class estimate; the previously established real weighted S2 comparison alone does not imply (5), especially with only one insertion.

The [log-cubic trace obstruction](log-cubic-single-insertion-trace-obstruction.md) shows why (5) is a serious restriction: under a positive diagonal lower bound, the actual non-L1 physical log-cubic insertion fails even the fixed-real-parameter trace-class requirement. A relative or subtracted observable would need its own estimate.
## Connection to the mass gap

In the stipulated graded model, the real positive square has P_(n,r,M)>=M² exp(-4B), uniformly in 0<=r<=1 when Q_n is skew-adjoint and the multiplier/domain hypotheses of `graded-conversion-regulated-endpoints.md` hold with ||b_n||_infinity<=B. If M>=M0>0, this supplies a common real gap g=M0² exp(-4B). If the complex form perturbation is relatively form bounded uniformly in n and sufficiently small that its real part changes the real form by at most g/2 in the required coercive estimate, then a common smaller polydisc has (1) with c=g/2. The relative bound and common radius must be proved for the actual variation class; a real gap alone does not establish them. The gap is an operator estimate, not a physical admission margin.

For a countable angular tower, the Cauchy bound may be summed only if the corresponding constants C_loc,n (including multiplicities) have a summable common majorant, or if the full tower is treated as one operator satisfying (5). Neither tower summability nor the source's product-frame and half-trace identification follows automatically. The bound deteriorates as M0 approaches zero and cannot replace the gapless analysis. No numerical or Lean certification is claimed.

Remaining to-do list: verify uniform complex localized smoothing and the actual massive realization, prove the ultraviolet remainder and physical normalization, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
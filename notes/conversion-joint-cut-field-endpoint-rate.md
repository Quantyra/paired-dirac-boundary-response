# Joint cut and rough-field comparison for the conversion endpoint

This combines the stipulated product-model estimates in `conversion-massive-moving-cut-comparison.md`, `conversion-finite-zero-mode-cut-comparison.md`, and `weighted-rough-joint-heat-limit.md`. It compares the complete positive-cut conversion endpoint and its mixed seed derivative on a common path. It does not prove that the common ultraviolet finite part exists or identify the physical boundary.

## Hypotheses and all-mode bound

Use the compact product-orbit local-projector family and fixed Hilbert-space pullbacks of the cited notes. Let delta be the outer cut displacement and eta the one-sided regularization scale of the base field and the two source directions. Assume their common product W1,infinity approximation and pullback error is

  d(delta,eta) = delta + eta³(1+|log eta|),                  (1)

including the stipulated smooth interior matching. Assume the massive conversion forms satisfy the uniform mass-weighted complex coercivity and form-difference hypotheses of `conversion-massive-moving-cut-comparison.md` with d replacing delta, uniformly in the interpolation parameter r and all M>=1. This replacement must be checked for the chosen fields and cut maps; it is not implied by scalar norm convergence without the domain and coefficient hypotheses. For the finite set M<1, including the zero sector, assume the common shifted sectorial comparison of `conversion-finite-zero-mode-cut-comparison.md`, again with d in place of delta.

Choose any Schatten exponent 2<p<3 and write alpha=1-p/3>0. The cited three-factor argument and fixed Cauchy circles then give, for the trace of a bounded holomorphic insertion and its mixed parameter derivative, a per-mode difference bounded by

  C d^alpha t^(-1-p/6) exp(-c M² t),  M>=1, 0<t<=1,         (2)

with the finite M<1 modes bounded by the same expression without the exponential. The insertion telescope is included: its O(d) difference times the corresponding heat trace is absorbed into (2) for d,t<=1. The source's b_z=z1 u+z2 v insertion is holomorphic and its pulled-back difference has the required O(d) bound under `source-scalar-insertion-collar-pullback.md`; its derivatives are therefore retained by Cauchy's formula. Integrating r over [0,1] changes only the constant.

For the full recorded tower, M_n²=n(n+q)/b_sphere² and d_n=2(q+2n), the Gaussian bound in `angular-weighted-locality.md` implies

  sum_(M_n>=1) d_n exp(-c M_n² t) <= C t^-1,  0<t<=1.       (3)

The finitely many lower masses and the finite zero sector are retained separately. Therefore the absolute difference between the mixed derivatives of the complete model conversion endpoint at time t satisfies

  |J''_(delta,eta,t)[u,v]-J''_(0,0,t)[u,v]|
       <= C d(delta,eta)^alpha t^(-2-p/6),  0<t<=1.          (4)

The two sides use the same declared mode multiplicities, insertion convention and interpolation, with the zero sector included only if that is the chosen model observable. Equation (4) includes both geometric and contact terms because it estimates the derivative of the complete endpoint trace; it is not a separate estimate for the source's physical LLL cocycle or the distinct P1-D heat remainder.

## One compatible path

Take p=5/2, so alpha=1/6. For epsilon->0 choose

  delta=epsilon^15,       eta=epsilon^16.                     (5)

Then eta/delta->0 and d=O(epsilon^15); at t=epsilon equation (4) gives O(epsilon^(1/12)), hence a vanishing endpoint difference. This is a sufficient path for the specified comparison, not a proof of path independence. Any exponent choice must also satisfy the separate boundary-transport and counterterm estimates required by the eventual physical problem.

The limiting model term on the right of (4) may itself diverge as t->0. Consequently (4)--(5) do not establish its finite part, justify subtracting limiting rather than cutoff-dependent coefficients, or prove the full common-regulator limit. The physical conformal boundary and L2 domain, global spin/copy and magnetic maps, LLL state, angular/thermal trace normalization, tangent subtractions and differentiated heat remainder remain open. No numerical or Lean certification is claimed.

Remaining to-do list: verify the physical domains and all uniform comparison hypotheses, control the counterterms and complete subtracted response on a common regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
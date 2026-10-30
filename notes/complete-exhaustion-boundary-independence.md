# Fixed-time boundary independence for complete-space exhaustions

This is a consequence of the common-core argument in
`paired-core-strong-heat-factors.md`. It explains what can and cannot be
inferred from replacing one finite-cut boundary realization by another. It
does not identify the source's conformal-infinity trace or prove a common
regulator.

Let X be the complete smooth physical model of
`rn-physical-metric-completeness.md`, H=L2(X,E), and let A be the
self-adjoint paired generator with graph core C_c^infinity(X,E) established
under the global-bundle and product-rule hypotheses of
`complete-physical-paired-core.md` and `rough-paired-core-congruence.md`.
Let X_n exhaust X. For j=1,2, suppose A_n^(j) are self-adjoint operators on
L2(X_n,E) whose domains contain all smooth sections supported strictly in
the interior. Extend them by the zero operator on L2(X\X_n). Assume their
interior actions agree with A on every fixed compactly supported core
section for all sufficiently large n, or more generally converge there in
L2. The two boundary conditions may differ; their self-adjointness and
interior actions are explicit hypotheses for each family.

The proof in `paired-core-strong-heat-factors.md` applies separately to
both j. Thus, for every s>0,

  exp[-s(A_n^(j))²] -> exp(-s A²) strongly,
  A_n^(j) exp[-s(A_n^(j))²] -> A exp(-s A²) strongly.         (1)

In particular the difference of the two heat operators in (1) tends strongly
to zero. On the complement of X_n each direct-sum heat operator is the
identity; replacing it by the zero-extended cut heat operator changes it by
the complement projection, which tends strongly to zero. Hence the same
fixed-s statement holds for the zero-extended heat operators.

If X and Y are fixed Hilbert--Schmidt operators on H, strong convergence and
uniform operator bounds imply

  ||X[exp(-s(A_n^(1))²)-exp(-s(A_n^(2))²)]Y||_1 -> 0.        (2)

For (2), approximate Y by finite-rank operators and use Schatten Holder;
no trace-class property of the unlocalized heat difference is assumed.
The same argument applies to the bounded Dirac heat factors in (1).

Equations (1)--(2) reconcile two observations: finite-cut transported and
local projectors can differ at every cut, as in
`finite-cut-boundary-transport.md`, while suitably self-adjoint cut
realizations can still converge strongly to the same complete-space
operator. Strong convergence does not prove trace-norm convergence without
localization, a quantitative rate, or convergence uniformly as s->0.
A spectral-parameter-dependent transported boundary relation arising from
eliminating a collar is not automatically a fixed self-adjoint operator
domain; it must satisfy the above hypotheses before (1) is applied. The
physical conformal-boundary source and its non-L2 boundary data may require
a different construction, and (2) does not identify its trace, LLL sector,
normalization or regulator. No numerical or Lean certification is claimed.

Remaining to-do list: identify the actual physical realization and needed
weighted factors, complete the mixed trace and regulator, resolve novelty,
finish the manuscript, and certify supported claims in Lean on GCP.

# Prior art: logarithms for Dirac spectral boundary conditions

This compares a specific logarithmic-heat-trace result with the proposed P1-C
logarithmic tangent coefficient. It is a novelty audit, not a new proof, a
complete literature search, or a publication decision.

Gilkey and Grubb, "Logarithmic terms in asymptotic expansions of heat
operator traces," Communications in Partial Differential Equations 23
(1998), 777-792, DOI https://doi.org/10.1080/03605309808821365, study smooth
Dirac-type operators with spectral boundary conditions. The available original
preprint is https://archive.mpim-bonn.mpg.de/1832/1/preprint_1996_163.pdf;
the comparison below refers to its section 2, equations (2.2)-(2.3) and
Theorem 2.6, rather than presuming identical pagination in the journal version.

Their compact smooth n-dimensional manifold has a smooth boundary and product
structure in a collar. They write P=sigma(partial_n+A), with A a fixed
self-adjoint tangential elliptic operator. The domain of P_B imposes a
nonlocal spectral projection constructed from nonnegative eigenspaces of A,
including a specified zero-mode projector. For P_B*P_B and P_BP_B*, their
equation (2.2) gives, when n is even, heat expansions with logarithmic terms
at powers t^(k+1/2) log t, k>=0. Their Theorem 2.6 gives generic nonvanishing
of such coefficients in the stated operator classes, with qualifications in
dimension two. Their paper also discusses closed-manifold pseudodifferential
operators; the boundary conclusion cited here is the spectral problem, not
the generic closed-manifold assertion.

The candidate's current P1-C calculation instead concerns a mixed second
metric response in a flat tangent model, with a local paired projector and
the cubic/log profile hypotheses recorded in `claim-dependencies.md` and
`flat-log-coefficient-integrable-fifth.md`. Its proposed t^3 log t term is
conditional on that specific response normalization and jet class. The two
settings differ in operator, domain, observable, and mechanism: spectral
projection on smooth product data versus a rough metric-variation jet in
the paired tangent problem. Under the exact hypotheses of equation (2.2),
the listed spectral-boundary log powers are half-integers; this observation
is not a comparison with arbitrary insertions, derivatives, nonproduct
structures, or altered normalizations.

The source establishes that logarithmic heat terms for Dirac boundary
problems are already known. The mere occurrence of log t, even in a Dirac
setting, is not a defensible novelty claim. Conversely, the source does not
identify the candidate's local projector, mixed Hessian, or coefficient;
different hypotheses alone do not establish that the candidate is novel.
The singular-weight and nonsmooth-interface comparisons remain necessary,
as do physical folding and regulator identification. No Lean or numerical
certification follows from this comparison.

Remaining to-do list: complete the close-interface normalization and later
literature audit, prove the paired physical response and required limits,
resolve the paper decision, prepare the manuscript, and certify supported
claims in Lean on GCP.
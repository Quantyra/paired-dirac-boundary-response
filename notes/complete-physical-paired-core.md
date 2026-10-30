# Complete physical core for the paired heat-factor limit

This verifies the common-core hypothesis of `paired-core-strong-heat-factors.md`
for a specified complete smooth physical model, subject to the global bundle
and operator identifications below. It does not prove those identifications,
trace estimates, or the physical regulator.

Let X be the fixed physical RN exterior with the regular bolt included as a
smooth interior point and conformal infinity at infinite physical distance.
Assume the stated metric is complete, and let E be the doubled Hermitian
spin/twisting bundle with a globally defined bounded parallel unitary
involution J. Let D_0 be the smooth first-order paired Dirac expression,
and suppose A_0=i J D_0 is formally symmetric on C_c^infinity(X,E), with
principal symbol bounded by C|xi|_g. The magnetic connection is smooth on
its bundle; no global gauge potential is assumed. Let beta be real with
||beta||_infinity and ||d beta||_infinity finite, and put

  D_beta=e^(-beta/2) D_0 e^(-beta/2),   A_beta=i J D_beta.   (1)

For smooth beta the principal symbol of A_beta is bounded by
C e^(||beta||_infinity)|xi|_g. Thus the bounded-propagation-speed
essential self-adjointness theorem for symmetric first-order operators on a
complete manifold applies: the closure of A_beta on C_c^infinity is
self-adjoint and C_c^infinity is its graph core. This is the classical
[Chernoff theorem](https://doi.org/10.1016/0022-1236(73)90003-7); it
requires the stated formal symmetry, completeness and symbol bound. For a
rough W1,infinity beta, the same conclusion is not assumed from the smooth
theorem alone: it requires the applicable low-regularity theorem or a
separate approximation/core proof. The statement here is for smooth beta.

Let X_n be finite-cut subregions exhausting X, and identify their bundles
with restrictions of E. Suppose their closed paired first-order realizations
D_n satisfy D_n*=-J_n D_n J_n and are extended by zero on the orthogonal
complement in H=L2(X,E), with J_n extended as a unitary involution there.
Assume J_n->J strongly, and that for every compact set the identified local
coefficients of D_n and their first-order multipliers converge to those of
D_beta in the sense needed for

  ||(i J_n D_n-i J D_beta)phi||_2 -> 0,
                     phi in C_c^infinity(X,E).                (2)

For example, local uniform convergence of the first-order coefficients and
zero-order terms gives (2) for each fixed smooth compactly supported phi.
Each phi lies in Dom D_n for all sufficiently large n because its support
stays away from the finite-cut boundary and the smooth bolt has no boundary
condition. This does not assert equivalence of the local cut projector with
an infinity boundary condition.

The core theorem and (2) satisfy the hypotheses of
`paired-core-strong-heat-factors.md`. Hence the paired self-adjoint
generators converge in the strong resolvent sense, and the heat operators,
Dirac heat factors, and their adjoints converge strongly for each positive
time. This conclusion uses the explicit self-adjoint finite-cut domains and
common-space extensions; a formal differential match alone is insufficient.

It remains to verify the actual source's global spin/copy and magnetic maps,
formal symmetry of i J D_0, the complete physical metric and finite-cut
partner domains, and the local coefficient convergence for the chosen
rough approximants. The heat-factor conclusion alone is not a trace-class,
small-time, or common-regulator estimate. No numerical or Lean certification
is claimed.

Remaining to-do list: verify those source-specific hypotheses and rough core,
complete the mixed trace and regulator, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

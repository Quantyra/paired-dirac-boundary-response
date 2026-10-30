# Regulated high-mass integral of the RN model cut bound

This integrates the explicit comparison in
`rn-boundary-square-retained-correction.md` over a declared high-mass model
weight. It does not identify that weight with the physical determinant
regulator, control low masses, or prove a Lean theorem.

Use all hypotheses and notation of that note. Choose fixed
M_*>C_a/sqrt(2) and 0<epsilon,tau<=1. Let D_ell(M) be the symmetrically
localized angularly heat-weighted square-resolvent difference at mass M.
Consider the trace-norm majorant for the model integral

    integral_(M_*)^infinity 2M exp(-epsilon M²) D_ell(M) dM. (1)

The exponential factor is an explicitly chosen regulator. Bochner
integrability follows from the bounds below; it is not assumed from an
unregulated determinant formula.

For the retained boundary correction, the modewise norm and rank estimate
in the cited note, with k=M+A0|mu| and A0=||a||_infinity, is bounded by

 C ||u||_infinity sqrt(ell) [ M^(-3/2)
     + |mu|^(1/2) M^(-2) + |mu| M^(-5/2)
     + |mu|^(3/2) M^(-3) ].                              (2)

Constants may depend on A0. The recorded two-dimensional magnetic-sphere
heat count gives, for p>=0,

    sum_mu |mu|^p exp(-tau mu²) <= C_p tau^(-1-p/2),      (3)

including multiplicities, with finite zero modes handled separately. This
follows by splitting the heat weight in half and taking the Gaussian
supremum of |mu|^p on one half. The integrals against 2M exp(-epsilon M²)
of the four mass factors in (2) are bounded respectively by
C epsilon^(-1/4), C(1+|log epsilon|), C and C, for fixed M_* and
0<epsilon<=1. Thus the retained part of (1) is bounded in trace norm by

 C ||u||_infinity sqrt(ell) [tau^(-1) epsilon^(-1/4)
       + tau^(-5/4)(1+|log epsilon|) + tau^(-3/2)
                                      + tau^(-7/4)].      (4)

For the removed-collar term, m0²=M²-C_a²/2 and M>=M_* imply
m0>=c M for fixed c>0. The local comparison bound can be enlarged uniformly
in M by replacing coth(m0 L) with coth(c M_* L), and
1/kappa_mu<=1/(cM). Using only the angular heat count O(tau^(-1)) gives

    removed part of (1)
       <= C sqrt(U U_ell) tau^(-1) epsilon^(-1/2).         (5)

This is conservative; it does not use high angular-frequency suppression
in kappa. For a cubic boundary insertion U_ell=O(ell^4), so (4)--(5) give
an explicit sufficient joint limit whenever each displayed upper-bound term
tends to zero. For example, fixed tau and epsilon permit ell->0; joint
removal requires rates tied to both tau and epsilon. These are sufficient
conditions for this regulated model comparison, not physical cutoffs or
admission margins.

The mass interval below M_* is not covered by the local comparison used for
(5). The actual Euclidean lapse, spectral/thermal identification,
subtractions, metric vertices and physical common regulator must also be
proved separately. No numerical calculation is used.

Remaining to-do list: control low mass and the physical regulator, match
boundary and Euclidean domains, complete response and prior art, recover the
pending GCP run, prepare the manuscript, and certify supported claims in Lean.
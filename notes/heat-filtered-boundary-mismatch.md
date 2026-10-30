# Heat-filtered transported boundary mismatch

This quantifies the zero-energy model obstruction in
`transported-projector-angular-nonuniformity.md` after angular heat
filtering. It does not determine the physical frequency-dependent boundary
map or prove a heat-resolvent comparison between boundary realizations.

Let B, its eigenvalues mu_j, the collar integral A and the block projectors
P(A mu_j), P(0) be as in that note. Put D_A=P_A-P_0 and let
S_t=exp(-t B^2), acting as the identity on the two-dimensional boundary
fiber. For t>0, the exact block formula gives

 ||D_A S_t|| = sup_j ||P(A mu_j)-P(0)|| exp(-t mu_j^2)
   <= min(1/sqrt(2), |A|/sqrt(2 e t)).                        (1)

Indeed, the projector difference is bounded by min(|A mu_j|,1/sqrt(2)),
and sup_(x>=0) x exp(-t x^2)=1/sqrt(2 e t). This is operator-norm
convergence as A->0 for each fixed positive t, even though the unfiltered
projector difference has norm 1/sqrt(2) for every nonzero A.

If the angular heat trace Theta(t)=Tr exp(-t B^2) is finite, then D_A S_t
is Hilbert--Schmidt and

 ||D_A S_t||_2^2
   <= 2 sum_j min(A^2 mu_j^2,1/2) exp(-2t mu_j^2)
   <= (A^2/(e t)) Theta(t).                                   (2)

The factor 2 accounts for the two-dimensional boundary fiber and is a safe
upper bound; angular eigenvalue multiplicities are included in the j sum.
The second inequality uses x exp(-t x)<=1/(e t) for x>=0, leaving one
factor exp(-t mu_j^2). No mode truncation or interchange of an unbounded
operator with a trace is used: apply the pointwise bound to finite sums and
then take their monotone limit.

For the source spectrum in `source-angular-zero-mode-allocation.md`,
Theta(t)=q+Theta_+(t), with q zero modes and the stated multiplicities for
nonzero modes. The zero-mode contribution to D_A itself vanishes in this
specific model because P(A*0)=P(0); retaining q in the upper bound is safe.
The positive-time angular tail can be controlled by the explicit geometric
bound in `angular-tower-tail.md`. As t decreases, however, (1)--(2)
deteriorate; a common-regulator argument must compare the actual A(delta)
with the heat cutoff and account for any further trace or normal factors.

These estimates concern a block-diagonal projector at zero spectral
parameter. A physical boundary map may depend on frequency and may couple
sectors, and a boundary trace filtered by S_t is not the difference of the
associated bulk heat semigroups. Matching either requires a separate boundary
resolvent or Poisson-operator estimate, with the actual boundary conditions
and normalization. No numerical or Lean certificate is claimed.

Remaining to-do list: establish the actual spectral boundary map and bulk
comparison, match the physical LLL and conversion, prove the curved
remainder and regulator limit, resolve novelty, complete the manuscript, and
certify supported claims in Lean on GCP.

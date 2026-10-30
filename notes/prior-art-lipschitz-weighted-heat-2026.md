# Recent prior art: weighted heat traces on Lipschitz domains

This is a focused comparison for S001.2, not a novelty verdict, proof of the
paired response, or Lean certificate. The primary source is Lucas Kersten,
[Weighted heat traces of the Dirichlet Laplacian on Lipschitz domains,
arXiv:2609.16746v1](https://arxiv.org/html/2609.16746v1), dated 15 September
2026. The comparison is to that preprint version and should be refreshed
against any later version before a final paper decision.

## Result and overlap

Theorem 1.1 considers a bounded Lipschitz domain in R^n, n>=2, the scalar
Dirichlet Laplacian, and the normalized weighted heat trace

  Z_(g,alpha)(t)=(4 pi t)^(n/2) integral_Omega
                  g(x) d(x)^alpha p_Omega(x,x;t) dx.             (1)

Here d is distance to the boundary, g is bounded and continuous near the
boundary, and alpha must exceed the threshold determined by the weak Hardy
constant. For alpha>-1 the theorem gives the bulk term and a boundary term
of order t^((1+alpha)/2) with coefficient
-(1/2)Gamma((1+alpha)/2) times the integral of g over the boundary, followed
by little-o at that order. For alpha=-1 it gives a leading logarithm
-(1/2)log(t) times the boundary integral, with o(|log t|). For the permitted
alpha<-1 it gives a leading boundary power with the same gamma coefficient.
These are normalized trace powers; the unnormalized trace has an additional
factor (4 pi t)^(-n/2).

Theorem 1.8 treats certain indicator weights subject to its boundary
intersection condition. Remark 1.5 explicitly relates the smooth-boundary
result to earlier singular-weight work and notes its mixed-boundary extension.
The preprint therefore strengthens the prior-art warning: rough domain
geometry, boundary-distance weights, heat-trace localization and logarithms
are not themselves a new contribution. Its proof uses a boundary-layer
partition and half-space heat-kernel comparison, concepts relevant to the
proposed curved remainder, but its asymptotic theorem is not the missing
uniform mixed-response estimate.

## Comparison with the candidate

The theorem varies a scalar weight multiplying the heat kernel of a fixed
scalar Dirichlet Laplacian. The candidate's P1-C varies a paired Dirac
realization and its principal symbol, with first and second form vertices,
physical-half normalization and an all-frequency tangent mixed derivative.
P1-D additionally asks for a uniform subtracted curved mixed response with
moving physical regulators. The preprint does not directly furnish these
vertices, complementary first-order domains or regulator-uniform parameter
control. This distinction is a comparison of statements, not proof that the
candidate theorem is novel.

The logarithm in Theorem 1.1 occurs at the critical *singular weight*
alpha=-1. It is not automatically the t^3 log(t) mixed cubic/log jet claimed
in the flat tangent calculation. In particular, the profile y^4 log(y)
cannot be inserted as d^4 g with a bounded g=log(d), so that direct choice
fails the theorem's stated hypothesis. It can be represented as d^3 g with
g=d log(d) extended continuously by zero at the boundary; then the boundary
coefficient at the t^2 normalized order is zero. The resulting o(t^2)
remainder is not a computed t^3 log(t) coefficient and cannot be
differentiated in alpha without an additional uniform remainder theorem.
These observations concern only the fixed-weight comparator, not the Dirac
mixed variation.

## Decision impact

The paper's final prior-art discussion should include this September 2026
result alongside the earlier mixed-boundary singular-weight results. It
raises the burden for claims framed around boundary logarithms or localization.
A supported continue/narrow/merge/park decision still requires the exact
paired theorem, physical normalization, the scalar-jump normalization issue,
and a final-scope and later-literature review. No numerical check is used.

Remaining to-do list: finish the source/physical and regulator proofs,
reconcile close prior art with the final scope, decide the paper disposition,
write the supported manuscript, and certify its claims in Lean on GCP.

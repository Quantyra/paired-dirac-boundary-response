# Diagonal heat bound: sufficient input and form-comparison gap

This audits the extra hypothesis in `lapse-localized-volume-gain.md`. It does
not establish that hypothesis for the paired comparator or certify it in
Lean.

Let T(t)=exp(-tL) be a nonnegative self-adjoint heat semigroup on sections
of a rank-r Hermitian bundle over a compact d-dimensional manifold. Suppose
T(t) has a measurable heat kernel and, uniformly over the comparator family,

    ||T(t)||_(L2 -> L-infinity) <= C t^(-d/4),  0<t<=t0.   (1)

Here the L-infinity norm is the essential supremum of the fiber norm. At
almost every x, spectral expansion or kernel composition and an orthonormal
fiber basis show

    tr K(t;x,x) <= r ||T(t/2)||_(L2 -> L-infinity)^2
                 <= r C² (t/2)^(-d/2).                       (2)

Thus uniform L2-to-L-infinity smoothing suffices for the diagonal estimate
used in the volume-gain note. Existence and a measurable diagonal of the
kernel still require the usual kernel representation and a consistent
version; the inequality is an almost-everywhere statement. A uniform
pointwise domination by a scalar heat semigroup with its own Gaussian bound
would be one way to prove (1), but its boundary and form hypotheses must be
checked for the specific paired system.

The form comparison q_ell>=alpha q0 and the global trace bound do not by
themselves give such domination. Even in a two-point finite-dimensional
example, q_A>=q_B with B=0 and

    A = [[1,1],[1,1]]

does not imply |exp(-tA)f| <= exp(-tB)|f| componentwise: for f=(0,1),
the first component of exp(-tA)f is (exp(-2t)-1)/2, while the first
component of exp(-tB)|f| is zero. This example is not a counterexample to
the desired elliptic estimate; it rules out deriving positivity or pointwise
semigroup domination from the form order alone.

The abstract of Gesztesy, Mitrea and Nichols,
[arXiv:1210.0667v2](https://arxiv.org/abs/1210.0667v2), develops vector
Robin realizations but describes its Gaussian bound via positivity in the
scalar case. Taylor, Kim and Brown,
[arXiv:1303.7280v1](https://arxiv.org/abs/1303.7280v1), obtain mixed-boundary
Gaussian bounds for an elasticity system under regularity hypotheses. These
are useful routes to investigate, not automatically applicable theorems for
the fiber-projector Dirac square. The latter requires explicit boundary
regularity, coefficient and uniformity checks, including the varying
shrinking cutoff. In particular, neither citation alone proves (1).

Remaining to-do list: prove uniform smoothing or another diagonal estimate
for the actual auxiliary system, establish physical locality and the mixed
response, resolve novelty, prepare the manuscript, and certify supported
claims in Lean on GCP.
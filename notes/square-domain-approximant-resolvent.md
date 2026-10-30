# Fixed square domain and resolvent convergence for collar approximants

Status: conditional finite-cut ordinary argument, subject to review and not
Lean-certified. This combines the [square-domain criterion](square-domain-boundary-criterion.md)
with the [physical-side approximation](weighted-remainder-cutoff.md). It does
not establish a curved heat-trace or common-regulator limit.

## Claim and hypotheses

On a fixed compact smooth finite-cut manifold, assume the H¹ projector
realizations for D and D*, their first-order elliptic regularity estimates
through H², and the Clifford/projector hypotheses in the square-domain
criterion. Let real fields b_j and b have bounded W^{2,∞} norms, identical
values on the paired copies, and zero normal derivative on the boundary.
Assume b_j→b in W^{2,∞}(X). Define D_b=e^(−b/2) D e^(−b/2) and
L_b=D_b*D_b on its composition domain, and similarly for b_j.

Then all L_bj and L_b have the same operator domain Dom(L_0), and for some
C depending on the fixed geometry and the common W^{2,∞} bound,

    ||(L_bj+1)^(−1)−(L_b+1)^(−1)||_{L²→L²}
       ≤ C ||b_j−b||_{W^{2,∞}}.                              (1)

Also L_bj→L_b as bounded maps H²→L², with the same type of bound. These
are finite-cut operator statements; C is not evaluated and need not be
uniform as the geometry or outer cut changes.

## Proof

The common-domain assertion follows from the square-domain criterion, since
the normal trace vanishes for every field. The weak product rule expands
D_b into a first-order operator whose coefficients depend on b and db;
D_b*D_b is a second-order differential expression with coefficients depending
smoothly on b, db and d²b. On a finite smooth atlas, boundedness of the
coefficients and the exponential chain rule give

    ||(L_bj−L_b)ψ||₂ ≤ C ||b_j−b||_{W^{2,∞}} ||ψ||_{H²}.     (2)

The expression agrees with the composition on the common domain. The
assumed first-order elliptic estimates show this domain is contained in H²:
if ψ belongs to it then ψ∈Dom(D_b), D_bψ∈Dom(D_b*), and applying the
H¹ regularity estimate first to D_bψ and then to ψ gives

    ||ψ||_{H²} ≤ C (||L_bψ||₂+||ψ||₂),                       (3)

with C uniform for a W^{2,∞}-bounded family. To see the uniformity, use the
unperturbed estimates for D and D*, the identities D_b=E D E and
D_b*=E D* E, and the uniformly bounded H¹ and H² multiplier norms of E and
E^(−1). The intermediate ||D_bψ||₂ is bounded by the quadratic-form
identity ||D_bψ||₂²=<L_bψ,ψ> and Cauchy–Schwarz. This avoids assuming a
uniform second-order boundary estimate without reducing it to the stated
first-order estimates.

Each L_b is nonnegative self-adjoint, so ||(L_b+1)^(−1)||≤1. Equation (3)
therefore bounds its resolvent from L² to H² uniformly. Since both operators
have the same domain, the resolvent identity is legitimate:

    (L_bj+1)^(−1)−(L_b+1)^(−1)
      = (L_bj+1)^(−1) (L_b−L_bj) (L_b+1)^(−1).

Combining (2), (3), and the L² resolvent bound proves (1). No trace-norm
claim follows from this operator-norm estimate by itself.

## Applying the approximation

For the source's radial collar, the cutoff/mollification construction gives
b_j→b in W^{3,∞} on the physical collar and preserves the cubic and the zero
first jet. If the approximants are extended through the fixed finite atlas
with global W^{2,∞} convergence and uniform bounds, they satisfy the claim.
The global extension and its compatibility with the actual paired bundle
remain hypotheses; collar convergence alone cannot establish them. A moved
boundary, a noncompact limit, and heat-trace differentiation require
separate arguments. No numerical calculation is required for (1).

Remaining to-do list: verify the global atlas and seed realization, establish
the physical trace and regulator limits, complete the novelty assessment,
and certify supported operator and response statements in Lean on GCP.

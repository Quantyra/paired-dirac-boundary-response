# Zeroth bridge term: a BV fourth-order route

Status: conditional ordinary proof route, requiring independent review and
not Lean-certified. It concerns the periodic zero-image bridge model, not
the actual paired half-kernel or the full curved mixed response. It attempts
the term left open in [the quadratic BV calculation](bridge-quadratic-bv.md).

## Claim

On the 2π-periodic line let real f,v∈W^{3,∞} with f''' and v''' of bounded
variation, and let u∈W^{1,∞}. Assume m≤|f|≤F. Use the covariance-2 bridge
and the definitions A_h and V_h from the preceding note. Set

    J(h)=∫₀^{2π} u(y) E[V_h(y) A_h(y)^(−1/2)]dy.

There are local coefficients J₀,J₂,J₄ and a finite C, depending only on m,
F, the stated W^{3,∞} and BV bounds and ||u||_{W^{1,∞}}, for which

    |J(h)−J₀−h²J₂/2−h⁴J₄/24|≤C|h|⁵,    |h|≤1.          (1)

The fourth derivatives used to define J₄ are finite measures, so this
statement permits a jump in the third derivative. More precisely, J₀,J₂
are the standard h=0 derivatives and J₄ is the limit of the smooth
fourth-order coefficient under periodic mollification as described below.
The source bridge carries an additional factor 1/(2π). With t=h² and a
matching angular bound −Theta'(t)≤24C_ang/t², the weighted remainder
in (1) is O(√t). The coefficients must be reconciled with the source's
local subtractions; no such reconciliation is claimed here.

## Weak fourth derivative argument

For smooth f and v, write p=f² and

    A_h(y)=∫p(y+hξ_s)ds,   V_h(y)=∫v(y+hξ_s)ds,
    H(V,A)=V A^(−1/2).

The fourth h derivative of H(V_h,A_h) is a finite sum from the chain
rule. Its only terms involving p'''' or v'''' are, respectively,

    H_A(V_h,A_h) ∫ ξ_s⁴ p''''(y+hξ_s)ds,
    H_V(V_h,A_h) ∫ ξ_s⁴ v''''(y+hξ_s)ds.              (2)

All other terms use h derivatives of A_h and V_h of order at most three.
Because p,v∈W^{3,∞} and their third derivatives are BV, the fourth
weak derivatives p'''' and v'''' are finite signed measures. For p this
follows from p'''=2ff'''+6f'f'' and the product rule for BV functions;
its total variation is bounded by a finite expression in the stated norms
and TV(f''').

For the other chain-rule terms, a telescoping estimate controls the change
from h=0 by |h| times a polynomial in 1+sup|ξ|. Differences of shifted
third derivatives are estimated after y integration using
||g(·+a)−g||₁≤TV(g)|a| and ||u||∞; lower derivatives have Lipschitz
representatives. The lower bound A_h≥m² controls derivatives of H.

For a term in (2), change variables x=y+hξ_s. Its fourth-derivative
measure is then paired with the coefficient

    w_{h,s}(x)=u(x−hξ_s) H_A(V_h,A_h)(x−hξ_s),

or the analogous coefficient with H_V. The functions w_{h,s} are uniformly
bounded and Lipschitz in x by a polynomial in 1+sup|ξ|, with constants
controlled by ||u||_{W^{1,∞}}, the first derivatives of f,v, and m.
Their difference from the corresponding h=0 coefficient is bounded in
sup norm by |h| times another such polynomial. This follows by comparing
all shifted f,v and u values with their unshifted values before applying the
smooth H derivatives. Pairing against the finite measures p'''' or v''''
and integrating the bridge times and Gaussian moments bounds the difference
of (2) from h=0 by C|h|. This argument retains the seam atom; it does not
replace the distributional fourth derivative by an L∞ function.

Consequently, for smooth approximants with uniform W^{3,∞} and BV bounds,

    |J''''(h)−J''''(0)|≤C₁|h|,   |h|≤1.                 (3)

Odd derivatives at zero vanish by bridge reflection. Taylor's integral
formula gives (1) with C=C₁/120 for the smooth approximants.

## Passage to BV fields and limits

Periodic positive mollification preserves the sign and lower bound of f,
the relevant W^{3,∞} bounds and the total variations of f''' and v'''.
The lower-order coefficients converge by dominated convergence. For J₄,
the non-highest terms converge using L¹ convergence of third derivatives;
the highest terms pair the weak-* convergent fourth-derivative measures
with uniformly convergent continuous coefficients. Thus J₄ has a unique
limit described by the chain-rule expression with measure pairings, and the
uniform inequality (1) passes to the original fields.

This route requires the full periodic f and v BV bounds and u Lipschitz.
The weighted collar BV calculation supplies a localized contribution, but
the seed, atlas and uniform physical regulators still need verification.
A periodic image is not automatically the source's paired half-boundary
kernel, and the product-frame, thermal images, contact normalizations and
local coefficient comparison remain separate. The argument does not prove
the stronger uniform curved mixed-response estimate in S001. No numerical
calculation replaces the measure-pairing and regulator steps.

Remaining to-do list: independently review the weak fourth-order route,
verify physical coefficient and boundary hypotheses, reconcile J₄ with the
local contact, control thermal/regulator limits, and certify claims on GCP.

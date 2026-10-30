# Exact relation between the flat Dirac and scalar form factors

This sharpens `flat-dirac-scalar-form-factor-comparison.md` for the stated
translation-invariant flat models. It does not establish physical folding,
a curved response, an equivalence to every scalar perturbation, novelty, or
Lean certification.

Put a=alpha(1-alpha),

  A(x)=integral_0^1 exp(-a x) d alpha,
  F(x)=1/2+(1/2) integral_0^1 (1+a x) exp(-a x) d alpha,       (1)

where F is the complete rank-two Dirac mixed-response factor in
`flat-tangent-multiplier.md`; its multiplier is 2F(x)/(pi t). A is the
standard quadratic scalar-potential form factor in the prior comparison.
Both integrals and their derivatives are ordinary convergent integrals for
real x>=0 and extend analytically to finite complex x.

Differentiate (alpha-1/2)exp(-alpha(1-alpha)x) and integrate from zero to
one. The boundary value is 1, and (alpha-1/2)^2=1/4-a, giving

  1=(1+x/2) A(x)+2x A'(x).                                    (2)

Since F=(1+A-x A')/2, substitution in (2) yields the exact identity

  F(x)=1/4+(6+x) A(x)/8.                                      (3)

No division by x is used, so (3) also holds at x=0. This shows explicitly
that the complete Dirac multiplier is built from the *same* nonlocal scalar
form factor A, with a different polynomial prefactor and a local constant.
It is stronger and more informative than the observation that the two
Taylor series differ. The source's Dirac calculation and the scalar
comparison have different vertices and normalizations; (3) alone does not
identify their physical traces or their varying boundary domains.

## Consequences for the specific scalar reduction

The candidate in `flat-dirac-scalar-form-factor-comparison.md` takes the
linear scalar-potential direction proportional to u''. Its nonlocal factor
is x^2 A(x), up to one constant and the common t normalization. The preceding
note proves, by x^4 and x^5 coefficients, that no constant C and polynomial
P of degree at most three satisfy F=P+C x^2 A. Equation (3) shows why this
restricted mismatch is not a wholly new nonlocal function: the distinction
is the prefactor (6+x), not the underlying A.

The identity also guards against a false novelty inference. Generalized
scalar perturbations, varying principal coefficients, measure changes and
local second vertices may lead to other polynomial multiples of A and local
terms. Whether an existing prior result contains the *complete* paired
metric-response statement requires matching those vertices, parameter and
trace conventions, interface conditions and all-frequency coefficients; it
cannot be decided from the mismatch with u'' alone. The separate published
scalar-jump normalization question remains open.

For a direct consistency check, the beta-integral expansion
A=1-x/6+x^2/60-x^3/840+x^4/15120+O(x^5) substituted into (3) gives
F=1-x^2/120+x^3/840-x^4/10080+O(x^5), in agreement with the existing
flat derivation. This algebraic check does not certify the physical trace or
its cutoff normalization.

Remaining to-do list: complete the full prior-art/operator comparison and
physical response, settle novelty and scope, finish the manuscript, and
certify supported claims in Lean on GCP.

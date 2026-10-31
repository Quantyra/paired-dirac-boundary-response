# Conditional boundary-layer target for the odd-odd commutator pair

This note isolates a sufficient estimate for the surviving gradient-gradient
commutator term in the curved product model. A boundary-layer part means the
contribution selected by a boundary parametrix or localization; no Brownian
path representation is assumed for the matrix-valued heat product. The note
derives the time power from the source's cubic direction jets, but it does
not prove the needed mixed-boundary heat-kernel estimate for the physical
curved family.

## Duhamel structure

After pairing the `+mu` and `-mu` modes, the odd-gradient orbit-cross terms
cancel, while the odd-odd angular pair remains. The conjugation identity in
[`full-weyl-opposite-sign-cross-cancellation.md`](full-weyl-opposite-sign-cross-cancellation.md)
expresses its middle factor using the complementary-domain square `Q_X`.
For either ordering, write the odd-odd contribution schematically as

    mu^2 integral_(0<=s2<=s1<=t)
      Tr(e^(-(t-s1)Q) M_(u') e^(-(s1-s2)Q_X)
         M_(w') e^(-s2 Q)) ds2 ds1,

plus the ordering with `u,w` exchanged. The factor `mu^2` is explicit; the
remaining heat trace uses the corresponding orbit and complementary
realizations. The formula is at a fixed cut under the common-domain,
trace-Duhamel hypotheses already recorded in the vertex note.

## Sufficient localized trace input

Let `y` be collar distance to the seam and assume the admitted directions obey

    |u'(y)| <= U y^2,       |w'(y)| <= W y^2.

A sufficient Gaussian-localized bound for the boundary-layer part of each normalized
trace word, uniformly over the closed Duhamel simplex and massive modes, is

    |T^bl_(mu,s1,s2)(t;u',w')|
      <= C t^(-1) integral_0^delta
             exp(-y^2/(c t)) |u'(y) w'(y)| dy.             (1)

Here `T` is the trace word after factoring out `exp(-t mu^2)` and the explicit
`mu^2`; the constants must be independent of `mu,t,s1,s2`. The estimate must
hold for the actual pair `Q,Q_X`, including their complementary form domains,
not merely for two scalar semigroups with a common boundary condition.

The source jets give

    integral_0^delta exp(-y^2/(c t)) |u'w'| dy
      <= U W integral_0^infinity y^4 exp(-y^2/(c t)) dy
      = C_c U W t^(5/2).                                  (2)

The Duhamel simplex has area `t^2`. Summing the explicit mass factor uses

    sum_n d_n mu_n^2 exp(-t mu_n^2) = -Theta'(t) <= C t^(-2).

Combining (1)-(2) therefore gives the conditional boundary-layer estimate

    |R_odd-odd^bl(t)|
      <= C U W t^2 * t^(-2) * t^(-1) * t^(5/2)
      <= C_* U W t^(3/2).                                 (3)

The same bound applies to both ordered words after changing the constant.
This power count matches the scalar seam-hit target, but arises from the
weighted mixed-boundary trace estimate (1), not from scalar Brownian-bridge
factorization.

## First unsupported implication

Estimate (1) is not proved here. Establishing it requires a localized
trace-ideal or heat-kernel bound for the mixed product
`Q`/`Q_X` with their complementary boundary conditions, uniformly at the
Duhamel simplex endpoints and uniformly in the angular mass after the tower
factor is removed. The conjugation identity alone does not provide it, and a
same-domain bounded-potential comparison is unavailable at the pinned cut.
One possible route is a boundary parametrix for the two local projector
realizations with Gaussian localization; another is a cutoff localization
strictly inside the collar followed by a separate boundary-map estimate.
Either route must also be reconciled with physical density/contact terms,
boundary transgression, LLL, local restorations and the common source
regulator before (3) can be used in the P1 response.

Equation (3) is a conditional component ceiling for the boundary-layer odd-odd
term. It is not a physical admission margin, a bound for the complete curved
remainder, or evidence of wormhole existence or stability. No numerical work
or Lean certification is claimed.

Concrete claim: if the mixed-boundary Gaussian trace bound (1) holds, cubic
source jets imply (3). Ordinary argument: the weighted Gaussian integral,
Duhamel simplex area, and the `-Theta'` tower moment. First unsupported
implication: prove (1) for the actual curved source family and insert (3) into
the full common-regulator ledger. Numerical role: none.

Remaining to-do list: prove (1), match the odd-odd sector with all other
curved response terms under one regulator, complete the prior-art decision and
manuscript, and certify supported claims in Lean on GCP.


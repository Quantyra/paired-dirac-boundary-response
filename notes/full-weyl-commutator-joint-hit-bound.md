# Conditional boundary-layer target for the odd-odd commutator pair

This note isolates a sufficient estimate for the surviving gradient-gradient
commutator term in the curved product model. A boundary-layer part means the
contribution selected by a boundary parametrix or localization; no Brownian
path representation is assumed for the matrix-valued heat product. The note
derives the time power from the source's cubic direction jets, but it does
not prove the needed mixed-boundary heat-kernel estimate for the physical
curved family.

The exact flat half-cylinder analogue is already proved in
[`odd-odd-complementary-boundary-flat-estimate.md`](odd-odd-complementary-boundary-flat-estimate.md),
including bounded constant Robin data and the full antiperiodic image sum.
The present note isolates a sufficient Gaussian-weighted trace input for a
curved extension; it does not replace or re-prove the flat estimate.

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

For the boundary estimate, split the middle factor as
`exp(-r Q_X)=exp(-r Q)+(exp(-r Q_X)-exp(-r Q))`. The first term is the
same-boundary scalar-gradient pair and belongs with the bulk/tangent local
subtraction. The criterion below applies only to the boundary-condition
defect in the second term, as in the exact flat model. The non-hit part of
the full odd-odd response is not estimated by this note.

In the pinned compactified product realization, each mode square is the
corresponding mass-free square plus `mu^2 I`, and the mode-independent
projector domains are shared by the sign pair. Every heat time in the
Duhamel word sums to `t`, so the mass factors exactly as `exp(-t mu^2)`.
After removing it, the remaining `Q` and `Q_X` defect word is independent
of `mu`; its kernel constant is therefore uniform in the angular mass for
this fixed product model. This uses the mode-independent product domains
recorded in `full-weyl-mode-form-domain.md`. It does not apply to arbitrary
finite radial cuts, whose transported boundary subspace can depend on `mu`.

## Sufficient localized trace input

Let `y` be collar distance to the seam and assume the admitted directions obey

    |u'(y)| <= U y^2,       |w'(y)| <= W y^2.

Write `r=s1-s2`, `s=t-r`, and `sigma=s r/t`. Convolving the two outer
`Q` kernels and integrating the tangential variable suggests the following
bilocal Gaussian input for the boundary-layer part of each normalized trace
word of the boundary-condition defect, uniformly over the closed Duhamel
simplex and massive modes:

    |T^bl_(mu,s1,s2)(t;u',w')|
      <= C t^(-1) integral_0^delta exp(-y^2/(c t)) |u'(y)|
             integral_0^delta g_sigma(y-y') |w'(y')| dy' dy, (1)

where `g_sigma(z)=(4 pi sigma)^(-1/2) exp(-z^2/(4 sigma))`; at `sigma=0`
the inner integral is interpreted by its delta limit. Here `T` is the trace
word after factoring out `exp(-t mu^2)` and the explicit `mu^2`. The estimate
uses the middle-factor defect `exp(-r Q_X)-exp(-r Q)` and its boundary-layer
part. It must hold for the actual pair `Q,Q_X`, including their complementary form
domains, not merely for two scalar semigroups with a common boundary
condition. Its boundary localization must come from the mixed-kernel
boundary part, while the normalized Gaussian couples the two insertion
coordinates.

At the scalar kernel level, the proposed factorization follows from the
outer convolution and the reflected middle Gaussian for the defect. Put
`p=y-y'` and
`q=y+y'`, so `q>=|p|`. Since `s+r=t` and `sigma=sr/t`, a fixed fraction of
`p^2/s+q^2/r` controls `p^2/sigma+q^2/t`. Including Gaussian prefactors,

    g_s(p) g_r(q) <= C t^(-1/2) g_sigma(p) exp(-q^2/(C t)).

The integrated antiperiodic tangential factor contributes another
`C_T t^(-1/2)`. Since `q>=y`, this gives the `t^(-1) exp(-y^2/(c t))`
weight in (1). This explains the form of (1) under uniform kernel
majorants; it does not prove those majorants or the trace-ideal estimate for
the actual mixed-boundary matrix semigroups.

A same-coordinate product bound by
`integral exp(-y^2/(c t)) |u'(y)w'(y)|dy` is not assumed: the trace word
contains off-diagonal kernels and evaluates its two multipliers at `y` and
`y'`. Without an additional relation between the directions, that product
does not control contributions from separated supports.

Under the source jets and `sigma<=t`, the normalized Gaussian has second
moment

    integral_0^delta g_sigma(y-y') y'^2 dy' <= C(y^2+sigma).

Therefore the input (1) implies

    |T^bl_(mu,s1,s2)|
      <= C U W t^(-1) integral_0^infinity
             exp(-y^2/(c t)) y^2(y^2+sigma) dy
      <= C_* U W t^(3/2).                                  (2)

The Duhamel simplex has area `t^2`. Summing the explicit mass factor uses

    sum_n d_n mu_n^2 exp(-t mu_n^2) = -Theta'(t) <= C t^(-2).

Combining (1)-(2) with the simplex and tower factors therefore gives the
conditional boundary-layer estimate

    |R_odd-odd^bl(t)|
      <= C U W t^2 * t^(-2) * t^(3/2)
      <= C_* U W t^(3/2).                                 (3)

The same bound applies to both ordered words after changing the constant.
This power count matches the scalar seam-hit target, but arises from the
bilocal mixed-boundary trace estimate (1), not from scalar Brownian-bridge
factorization.

## First unsupported implication

Estimate (1) is not proved here. On the fixed product model, establishing
it requires a localized trace-ideal or heat-kernel bound for the
boundary-condition defect
`exp(-r Q_X)-exp(-r Q)`, with the two complementary realizations, uniformly
at the Duhamel simplex endpoints. Uniformity in `mu` then follows from the
scalar shift above. Extending this estimate through a moving finite cut
also requires uniform boundary-domain transfer, which is not supplied by the
fixed product result. The conjugation identity alone does not provide the
kernel estimate, and a same-domain bounded-potential comparison is
unavailable at the pinned cut.
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

Concrete claim: if the bilocal mixed-boundary Gaussian trace bound (1) holds,
cubic source jets imply (3). Ordinary argument: the normalized Gaussian
second moment, Duhamel simplex area, and the `-Theta'` tower moment. First unsupported
implication: prove (1) for the actual curved source family and insert (3) into
the full common-regulator ledger. Numerical role: none.

Remaining to-do list: prove (1), match the odd-odd sector with all other
curved response terms under one regulator, complete the prior-art decision and
manuscript, and certify supported claims in Lean on GCP.


## Prior-art applicability check: extension-independent localization

Li and Strohmaier's Theorem 1.1 proves an extension-independent
"not feeling the boundary" estimate for nonnegative self-adjoint extensions
of the componentwise Euclidean Laplacian on an open set in `R^d`, acting on
`C^N`-valued functions. The estimate compares each extension kernel with the
free Euclidean kernel and suppresses that difference exponentially in the
sum of the two points' distances to the boundary; the constants do not depend
on the selected extension. See [the published theorem and stated hypotheses](https://ems.press/journals/jst/articles/14417)
(DOI `10.4171/JST/147`).

This result does not establish (1) for the physical `Q,Q_X` pair. The source
operator has a variable curved principal metric after the physical and
conformal identifications, and its complementary boundary realizations and
finite-cut transport have not been shown to be extensions of the same
componentwise Euclidean Laplacian. Further, Theorem 1.1 compares one kernel
with a free kernel, while (1) is a bilocal, two-insertion trace-ideal estimate
for a difference of semigroups, uniform up to the closed Duhamel endpoints.
Even where both kernels could be localized to a common Euclidean model, the
polynomial time and distance factors in that theorem must be integrated
against the two insertion coordinates and the Duhamel simplex; the stated
exponential alone does not imply the required prefactor or endpoint-uniform
constant. Thus the theorem is useful motivation for localization but is not
an accepted import or a proof of the curved criterion.

The next analytic step remains either (a) prove a boundary-parametrix estimate
for the actual curved complementary projector pair with the bilocal Gaussian
weight in (1), including its trace-ideal and simplex-endpoint behavior, or
(b) establish a coefficient-stable localization theorem with an explicit
remainder strong enough to imply (1). In either route, verify the physical
bundle map and common regulator separately.

## Fixed-window boundary-layer estimate from absolute kernel bounds

The bilocal defect input (1) is stronger than needed to bound a fixed-width
`O(sqrt(t))` boundary-layer piece. Here is a separate conditional estimate
for that piece. Let `M` be the compact two-dimensional orbit surface with
smooth boundary, and assume that the kernels of `Q` and `Q_X` obey, for
`0<s<=t0`,

    ||K_j(s;z,z')|| <= C s^(-1) exp(-d(z,z')^2/(c s)),  j in {Q,Q_X}. (4)

Use the Riemannian volume measure on `M`, and suppose its local volume has
the standard uniform two-dimensional upper bound on scales at most
`sqrt(t0)`. In a fixed collar let `y` be distance to the seam and let the
admitted directions satisfy `|u'(y)|<=U y^2`, `|w'(y)|<=W y^2`. For a fixed
`R>0`, restrict both Duhamel insertion points to `0<=y,y'<=R sqrt(t)`; this
defines the fixed-window boundary-layer contribution. Write `s+r=t`,
`0<s,r<t`, and let `T_R(t;s,r)` be the absolute value of the corresponding
radial heat trace word after removing the exact angular factor
`exp(-t mu^2)` and the explicit `mu^2`.

The product of (4) has Gaussian exponent
`-(1/s+1/r)d(z,z')^2/c=-t d(z,z')^2/(c s r)`. Its integral in the second
point is at most `C s r/t` by the two-dimensional volume bound. The two
kernel prefactors `s^(-1) r^(-1)` therefore leave `C/t`, uniformly even
when either Duhamel time tends to zero. On the restricted layer,
`|u'(y)w'(y')|<=UW R^4 t^2`, and the volume of the first-point layer is at
most `C R sqrt(t)` (the seam has fixed finite length). Hence

    |T_R(t;s,r)| <= C_R U W t^(3/2),    0<s,r<t.          (5)

The same bound holds for the semigroup defect word because
`K_(Q_X)-K_Q` is bounded in norm by the sum of the two kernels. The exact
unitary-conjugation identity defining `Q_X` also gives
`||K_(Q_X)(r;z,z')||=||K_Q(r;z,z')||` when `X` is a pointwise unitary
multiplier; thus a single verified estimate for `Q` suffices for (4).

Integrating (5) over the ordered Duhamel simplex contributes `t^2`; summing
the explicit angular mass-square factor contributes
`sum_n d_n mu_n^2 exp(-t mu_n^2)=-Theta'(t)<=C t^(-2)`. The resulting fixed-
window boundary-layer contribution is conditionally `O_R(UW t^(3/2))`,
uniformly in the simplex and the sign-paired angular tower.

This argument does not prove (4), and it estimates only the layer where both
insertions are within `R sqrt(t)` of the seam. It does not show that the
complement can be replaced by the same-boundary/tangent term, does not prove
smallness of the non-hit defect, and does not address moving-cut transfer or
the physical common regulator. The next concrete kernel task is to verify a
uniform two-dimensional Gaussian upper bound for the actual pinned compact
orbit realization and its unitary conjugate, then separately prove the
boundary-decay estimate needed outside the fixed window. No physical response
or admission-margin conclusion follows from (5).

Concrete claim: under the explicit two-dimensional Gaussian kernel bounds,
the fixed `R sqrt(t)` layer of the odd-odd trace has an `O_R(t^(3/2))` bound
uniform to the Duhamel endpoints and after the angular sum. Ordinary argument:
combine the two Gaussian kernels, integrate their relative point using
`1/s+1/r=t/(sr)`, bound the two cubic jets on the fixed layer, and use the
`t^2` simplex area and `t^(-2)` tower moment. First unsupported implication:
verify (4) for the actual pinned operator and control the complementary
non-hit region and common-regulator matching. Numerical role: none.

## Gaussian kernel bound for the pinned compactified orbit square

For the pinned static zero-angle product realization, hypothesis (4) can be
verified at the fixed compactified boundary. The source derivation recorded
at parent commit `08cb71afea3f0e5310cac8a50c05d5007555641f` identifies the
orbit operator as the square of a smooth Dirac-type operator on the smooth
compact orbit disk, with a regular bolt and the local projector boundary
condition at conformal infinity. The Weitzenbock/Lichnerowicz form of this
square is Laplace type: its principal symbol is `|xi|^2 I`, and its connection
and endomorphism coefficients are smooth on the compact disk. The boundary
conditions obtained by requiring `D psi` to lie in the complementary
first-order domain are

    Pi_- psi|_boundary = 0,
    Pi_+ (nabla_n + K/2) psi|_boundary = 0.

In the inward-normal convention the Robin endomorphism is `S=-K/2`; at the
conformal boundary of this static seed, `K=0`. These are smooth local mixed
Dirichlet/Robin conditions. The established mixed-boundary setup for a
Laplace-type operator on a smooth compact vector bundle is precisely this
class; see [Branson--Gilkey--Kirsten--Vassilevich, §§1--2](https://arxiv.org/abs/hep-th/9906144),
which states the mixed decomposition and the elliptic (Lopatinski--Shapiro)
condition. The finite-cut transport caveat in `full-weyl-mode-form-domain.md`
continues to apply away from the pinned compactified boundary.

For clarity, the Gaussian estimate needed here follows from the local heat
parametrix for this fixed operator, rather than from the extension-independent
Euclidean theorem discussed above. In interior charts, use the frozen-metric
Gaussian model. In collar charts, use the direct/reflected half-space models
on the Dirichlet and Robin subbundles, with the smooth Robin endomorphism in
the reflected term. Smooth coefficients and a smooth projector give a
parametrix error of lower parabolic order. The Volterra correction series
converges for `0<t<=t0`; Gaussian convolution on the compact orbit disk
absorbs each correction after enlarging the Gaussian constant. A finite atlas
and compactness then give constants `C,c,t0>0` such that

    ||K_Q(t;z,z')|| <= C t^(-1) exp(-d(z,z')^2/(c t)), 0<t<=t0. (6)

The heat kernel is matrix-valued; the estimate is in the fiber operator norm.
Since `Q_X=X Q X^(-1)` with pointwise unitary `X`,
`K_QX(t;z,z')=X(z)K_Q(t;z,z')X(z')^(-1)` and its fiber norm obeys the same
bound. Therefore (4) holds for this pinned compactified product, and the
fixed-window estimate (5) is an unconditional ordinary estimate for that
fixed realization and the declared cubic-jet directions.

The constants in (6) depend on the pinned smooth metric, connection,
endomorphism, boundary projector and collar; this proof gives no uniformity
for a family of transported finite-cut projectors. Nor does (6) bound the
non-hit defect outside the fixed `R sqrt(t)` window or match the full source
observable. The curved common-regulator endpoint and all other response
sectors remain open. This is a fixed-product boundary-layer component result,
not a physical admission margin or a wormhole claim.

Concrete claim: the fixed pinned compactified orbit square satisfies (4), so
the fixed-window odd-odd boundary-layer component is `O_R(t^(3/2))` after
the sign-paired angular sum. Ordinary argument: verify Laplace-type and
smooth mixed-boundary hypotheses from the source domain; construct the local
interior/reflected heat parametrix and sum its Volterra corrections; transfer
the bound through exact unitary conjugation for `Q_X`; apply (5). First
unsupported implication: establish a uniform complement/non-hit subtraction
and transfer the result through the moving physical cutoff and full
common-regulator response. Numerical role: none.

## Growing-collar split for the boundary-reflected defect

The fixed-window estimate also applies with a slowly growing scaled width.
Fix `t0<1` and `A>0`, and let

    rho_t = A sqrt(t log(t0/t)),   0<t<t0/e.

The same Gaussian integration proof as (5), with `R_t=A sqrt(log(t0/t))`,
gives for the layer `y,y'<=rho_t`

    |T_layer(t;s,r)| <= C A^5 U W t^(3/2) [log(t0/t)]^(5/2),
    0<s,r<t.                                                (7)

The constant is uniform while `rho_t` stays inside the fixed smooth collar;
this holds for all sufficiently small `t`. The corresponding proper-time
integral converges:

    integral_0^(t0/e) t^(-2) |T_layer(t)| dt < infinity,

since `t^(-1/2) [log(t0/t)]^(5/2)` is integrable at zero. This is an
integrability statement for the localized odd-odd boundary-layer component,
not the stronger pointwise `O(t^(3/2))` ceiling.

In the boundary heat parametrix, the reflected correction has Gaussian decay
in the sum of the insertion points' distances to the seam. Outside this
collar, `exp(-rho_t^2/(c r)) <= (t/t0)^(A^2/c)` for every middle time
`r<=t`. Thus, after including the finite polynomial powers of `r^(-1)` in
the parametrix, choosing `A` large makes the boundary-reflected tail smaller
than any fixed target power of `t`, uniformly at the Duhamel endpoint. This
isolates the *boundary-reflected* non-hit tail for the fixed pinned operator.
It does not estimate the local interior difference
`X exp(-rQ) X^(-1)-exp(-rQ)`: pointwise unitary conjugation changes the local
connection/transport coefficients, and that contribution must be expanded
and matched to the curved tangent/source subtraction. It also gives no
uniformity under moving-cut transfer or common-regulator matching.

Concrete claim: the fixed pinned boundary-reflected defect is integrable
against `dt/t^2` after the logarithmically widened collar split, and its
outside-collar tail can be made higher order than any prescribed power under
the boundary-parametrix Gaussian. Ordinary argument: substitute
`R_t=A sqrt(log(t0/t))` into (5), integrate its logarithmic power, and use
the reflected-kernel factor `exp(-(y+y')^2/(cr))` with `r<=t` outside the
collar. First unsupported implication: compute and match the local interior
conjugation contribution, then extend to the moving physical cutoff and full
common-regulator response. Numerical role: none.

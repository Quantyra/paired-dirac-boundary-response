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

## Mixed-boundary Gaussian estimates as a candidate input

Böhnlein, Ciani and Egert prove Gaussian kernel estimates for scalar
divergence-form operators with mixed Dirichlet/Neumann boundary conditions
under ellipticity and geometric assumptions; their Theorem 1.1 relates the
Gaussian estimate to De Giorgi/Hölder regularity, and Theorem 1.2 obtains the
regularity property for real-valued coefficients in the stated geometry
([published article](https://doi.org/10.1007/s00208-024-02939-0),
[arXiv:2307.03648](https://arxiv.org/abs/2307.03648)). This is relevant
methodological prior art for the separate kernel majorants in (4), provided
the coefficient and domain hypotheses can be verified uniformly.

It does not give the bilocal defect estimate (1): it estimates an individual
semigroup kernel, while (1) needs the difference for the two complementary
projector realizations inside a two-insertion trace, with control through
the closed Duhamel simplex. Its form domains encode scalar Dirichlet and
Neumann portions of the boundary; the source's paired Dirac square has
component-coupled complementary projector domains. No reduction of those
domains to the article's form setting, and no uniform moving-cut transfer,
has been established. Accordingly this result is a screened route for
individual-kernel bounds, not a theorem imported into P1-D.

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
class; see [Branson--Gilkey--Kirsten--Vassilevich, Â§Â§1--2](https://arxiv.org/abs/hep-th/9906144),
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

## Exact interior localization of the conjugation defect

There is an exact same-domain reduction for the non-hit *interior* part; it
does not require comparing `Q_X` and `Q` as bounded perturbations on their
global domains. Let `X` be the pointwise unitary multiplier defining
`Q_X=XQX^(-1)`. Choose a smooth scalar cutoff `chi_rho(y)` that vanishes
for `y<=rho`, equals one for `y>=2 rho`, and has
`|nabla^k chi_rho|<=C_k rho^(-k)`. Set

    F_rho = chi_rho X,        G_rho = chi_rho X^(-1).

Both are smooth multipliers vanishing near the physical boundary, so they
preserve the mixed operator domain of `Q`. Since multiplication operators
satisfy `F_rho G_rho=chi_rho^2`, direct algebra gives the exact identity

    chi_rho (exp(-r Q_X)-exp(-r Q)) chi_rho
       = [F_rho, exp(-r Q)] G_rho
         + [exp(-r Q), chi_rho] chi_rho.                 (8)

No claim that `X` itself preserves the domain is used. For either cutoff
multiplier `A` in (8), common-domain Duhamel is valid:

    [A, exp(-r Q)]
       = integral_0^r exp(-(r-s)Q) [Q,A] exp(-sQ) ds.    (9)

Write `Q=nabla^*nabla+V`, where `nabla^*nabla=-nabla^i nabla_i` is the positive
connection Laplacian and `V` is a smooth endomorphism. On the smooth core,

    [Q,A] = -2 (nabla^i A) nabla_i
             - (nabla^i nabla_i A) + [V,A].             (10)

Thus (8)-(10) reduce the non-hit term to local heat-kernel words with the
usual common `Q` domain. Expanding the `chi_rho [Q,X]` contribution is the
ordinary interior calculation whose local coefficients must match the
curved tangent/source subtraction. Terms containing derivatives of
`chi_rho` are supported in the transition strip `rho<=y<=2 rho`; if the
external source insertions are restricted to `y>=3 rho`, these terms connect
points separated by at least `rho`. Gaussian off-diagonal bounds for `Q`
(and the corresponding first-derivative kernel bounds for the order-one
operator in (10)) then give exponential suppression
`exp(-rho^2/(c t))`, uniformly up to Duhamel endpoints. The logarithmic
choice of `rho_t` in the preceding section makes this cutoff-transition
error higher order than any prescribed power, after accounting for the
polynomial `rho_t^(-1)` factors.

This proves an algebraic reduction and identifies the local operator to
expand; it does not yet bound the full trace with its insertions, compute the
interior coefficient, justify the needed derivative-kernel trace ideals, or
match the result to the complete source subtraction. It also gives no
moving-cut uniformity. In particular, the global bounded-potential estimate
(13) remains unavailable because `X` does not preserve the boundary domain;
(8) only uses cutoffs that vanish at that boundary.

Concrete claim: on a fixed pinned smooth collar, the localized semigroup
defect has the exact representation (8)-(10) by common-domain Duhamel words.
Ordinary argument: introduce a cutoff that is one on the non-hit insertions
and zero near the boundary; use `F_rho G_rho=chi_rho^2` and the commutator
Duhamel identity; compute the Laplace-type commutator. First unsupported
implication: estimate the resulting trace words with insertions, compute and
match their interior coefficients, then transfer uniformly through the
physical cut and common regulator. Numerical role: none.

### Sign-convention correction

The first version of the localized commutator paragraph at commit `480572b`
used an inconsistent sign for the connection Laplacian and potential. Commit
`7592c21` supersedes that line. With the positive convention
`Q=nabla^*nabla+V`, `nabla^*nabla=-nabla^i nabla_i`, the correct formula is
`[Q,A]=-2(nabla^i A)nabla_i-(nabla^i nabla_i A)+[V,A]`. The exact cutoff
identity (8) and Duhamel orientation are unchanged.

## Interior commutator in the source orbit metric

The local operator in (10) can be written explicitly in the static orbit
collar used for the source. Let

    g = dy^2 + f(y)^(-2) d tau^2,
    e_y = partial_y,       e_tau = f(y) partial_tau,
    h(y) = f'(y)/f(y).

Choose the Clifford convention so the tangential multiplier in the odd-odd
identity is `X=epsilon c(e_tau)`, `epsilon in {+1,-1}`. Let the twisting
connection be unitary and Clifford-compatible, and write
`Q=nabla^*nabla+V` with the positive connection Laplacian. The frame bracket
is `[e_y,e_tau]=h e_tau`. Applying Koszul and using the orthonormality of
`e_y,e_tau` gives

    nabla_(e_y) e_y = 0,
    nabla_(e_y) e_tau = 0,
    nabla_(e_tau) e_tau = h e_y,
    nabla_(e_tau) e_y = -h e_tau.

The last two entries have opposite signs, as required by torsion-freeness.

The twist connection commutes with Clifford multiplication, so

    nabla_(e_y) X = 0,
    nabla_(e_tau) X = epsilon h c(e_y),
    nabla^i nabla_i X = -h^2 X.

For the last equality, the radial rough-Laplacian contribution is zero. The
tangential contribution is
`nabla_(e_tau)(epsilon h c(e_y))-nabla_(h e_y)X`
`=-epsilon h^2 c(e_tau)=-h^2 X`, which fixes the zeroth-order sign.

Substitution into (10) yields the exact smooth-collar identity

    [Q,X] = -2 epsilon h c(e_y) nabla_(e_tau)
              + h^2 X + [V,X].                         (11)

For a general Clifford-compatible orbit twist, retain the full term
`[V,X]`. In the actual static product reduction of the source, however, the
monopole connection acts on the sphere factor and is already encoded in the
angular masses `mu_n`; it is not an orbit twist in `Q`. The orbit
Lichnerowicz endomorphism is scalar, so `[V,X]=0` there. In the flat orbit
limit `h=0`, the interior commutator vanishes and `Q_X-Q` is only the
complementary-boundary defect. The flat `U_1/t` coefficient belongs to the
separate same-boundary word, as clarified below; it must not be attributed to
`[V,X]`.

Equation (11) is an interior operator identity, not yet an asymptotic trace
coefficient. The next calculation is to insert (11) into the localized
Duhamel words, use the heat-kernel derivative parametrix, and evaluate the
mixed multiplier pairing through the required order. The resulting local
coefficient must then be compared term-by-term with the curved tangent and
source contact/density/boundary subtraction. The cutoff-transition terms
remain controlled separately by (8)-(10).

Concrete claim: on the smooth static source orbit collar,
`[Q,X]=-2 epsilon h c(e_y) nabla_(e_tau)+h^2 X`; the reduced orbit
endomorphism is scalar. Ordinary argument: compute the Levi-Civita
derivatives of the orthonormal frame, use Clifford compatibility, calculate
the rough Laplacian of `X`, and note that the source monopole connection is
on the sphere factor. First unsupported implication: evaluate the curved
defect trace and match the same-boundary term plus defect to every curved
source subtraction term. Numerical role: none.

### Exact interior operator difference

On the common smooth interior core, conjugation gives

    Q_X-Q = X Q X^(-1)-Q = -[Q,X]X^(-1).

The Clifford relation `c(e_tau)^2=-I` gives `X^(-1)=-X` and
`nabla_(e_tau)X^(-1)=-epsilon h c(e_y)`. Apply the first-order operator
`[Q,X]` to `X^(-1) psi`, keeping the derivative on `X^(-1)`:

    [Q,X]X^(-1)
      = -2 epsilon h c(e_y)(nabla_(e_tau)X^(-1))
        -2 epsilon h c(e_y)X^(-1)nabla_(e_tau) + h^2 I
      = -h^2 I + 2h c(e_y)c(e_tau)nabla_(e_tau).

Consequently the exact smooth-interior differential expression is

    Q_X-Q = h^2 I - 2h c(e_y)c(e_tau)nabla_(e_tau).       (12)

The scalar potential cancels in this difference because `[V,X]=0` in the
source product reduction. Formula (12) gives the local perturbation to use
inside the cutoff Duhamel word. It does not identify a trace coefficient:
the first-order insertion, its heat-kernel contractions, and the
same-boundary word must be expanded together with density/contact terms.
Since `Q` and `Q_X` can have different boundary domains, (12) is only an
interior-core identity; use the cutoff/common-domain formulation for a
semigroup statement.

Concrete claim: the source interior conjugation changes the orbit square by
the first-order operator and scalar term in (12). Ordinary argument: combine
the verified commutator (11) with `Q_X-Q=-[Q,X]X^(-1)` and differentiate the
right multiplier before collecting Clifford products. First unsupported
implication: evaluate its localized Duhamel trace to the required order and
match it in the complete common-regulator response. Numerical role: none.

Remaining to-do list: calculate and match the localized heat-trace
coefficient; control the moving-cut/common-regulator transfer and all
response sectors; finish the novelty decision and manuscript; certify
supported claims on GCP.

### Frozen-coefficient interior trace diagnostic

There is an explicit local model for the leading contribution of (12). Freeze
`h` and the scalar insertions `a=u'`, `b=w'` at one interior point, discard
curvature and boundary effects, and take the orbit model on `R^2` with
`Q_0=-partial_y^2-partial_tau^2`. Put
`C=c(e_y)c(e_tau)`, so `C^2=-I`; (12) gives

    Q_X-Q_0 = h^2 I - 2h C partial_tau
            = -(partial_tau+hC)^2 + partial_tau^2.

The two eigenvalues of `C` are `+i` and `-i`. Thus for `s+r=t` and
`sigma=sr/t`, completing the square in Fourier momentum gives the exact
rank-two trace density

    tr_density(exp(-s Q_0) exp(-r Q_X))
       = 2/(4 pi t) exp(-sigma h^2),
    tr_density(exp(-t Q_0)) = 2/(4 pi t).

For the defect word with constant insertions, its difference is therefore
`(2/(4 pi t))(exp(-sigma h^2)-1)`. Since `0<=sigma<=t/4`, its first small-time
term is

    -(h^2/(2 pi)) (sr/t^2) + O(h^4 t).

For the ordered odd-odd word as normalized above, multiply by `ab`, the
external factor `(t-r)`, and integrate `0<=r<=t`:

    integral_0^t (t-r) (2/(4 pi t))
         (exp(-r(t-r)h^2/t)-1) dr
       = -h^2 t^2/(24 pi) + O(h^4 t^3).

The reversed word has the same frozen scalar coefficient. Restoring the
explicit angular mass factor and summing its tower therefore gives the
conditional model diagnostic

    R_defect,freeze(t)
       = -(h^2 a b t^2/(12 pi)) sum_n d_n mu_n^2 exp(-t mu_n^2)
         + O(t^3 sum_n d_n mu_n^2 exp(-t mu_n^2)),

where the error constant depends on the frozen coefficients. If
`-Theta'(t)=sum_n d_n mu_n^2 exp(-t mu_n^2) ~ C_Theta t^(-2)`, the leading
model term is the finite local density `-C_Theta h^2 a b/(12 pi)`.

For the source massive sphere tower
`mu_n^2=n(n+q)/b_S^2`, `d_n=2(q+2n)`, `n>=1`, the established Riemann-sum
limit is `C_Theta=2b_S^2`. Thus the raw rank-two orbit trace coefficient in
this component diagnostic is

    R_defect,freeze(t) -> -b_S^2 h^2 u' w'/(6 pi).

This uses the full nonzero sphere-sign multiplicity already contained in
`d_n`; it does not include the LLL. It is stated in the rank-two full-line
orbit normalization of the local Fourier trace. The source's per-exterior
physical-half normalization has an additional factor of one half relative to
that trace under its flat hypotheses, and the curved transfer of that factor
has not been proved. The expression above is therefore not yet a physical
coefficient and must not be compared directly with the source contact term.

This computation includes both the scalar `h^2` term and the ordered pair of
first-order connection-shift insertions: the exponential is their combined
Gaussian momentum integral. Keeping only the scalar term in (12) would give
the wrong model coefficient. This is not yet the curved coefficient. The
actual local parametrix has varying `h`, orbit curvature and spin connection;
the orbit measure, same-boundary word, cutoff-transition terms, source
density/contact subtraction and other response sectors have not been
included. The next ordinary check is to reproduce the frozen coefficient by
the local heat parametrix for the actual `Q,Q_X` pair and identify precisely
which additional jets contribute at the same order.

Concrete claim: in the flat frozen-coefficient rank-two model, the defect
word has the exact Gaussian factor and leading ordered-pair coefficient
displayed above. Ordinary argument: diagonalize `C`, complete the two
Fourier squares, expand `exp(-sr h^2/t)`, and integrate the Duhamel time.
First unsupported implication: show this is the corresponding coefficient
of the curved localized trace and combine it with the same-boundary and
physical source/contact ledger. Numerical role: none; the Gaussian integrals
are exact.

Remaining to-do list: derive the curved parametrix coefficient and its
same-boundary/source matching; close moving-cut/common-regulator transfer;
finish novelty and manuscript decisions; certify supported claims on GCP.

### Interior heat-kernel transport coefficient

The frozen calculation above has an invariant form in the fixed smooth
interior. Write `nabla^X=X nabla X^(-1)=nabla+B`, where
`B=X(nabla X^(-1))`. In the source orthonormal frame,

    B(e_y)=0,       B(e_tau)=h C,
    C=c(e_y)c(e_tau),  C^2=-I,
    nabla^i B_i=0,   B_i B^i=-h^2 I.

The divergence is covariant and includes the frame derivative:
`nabla_(e_tau)C=0` and `B(nabla_(e_tau)e_tau)=hB(e_y)=0`; the radial
contribution vanishes as well. These identities hold for variable `h(y)`.

Fix `eta>0` and restrict the Duhamel ratio to
`eta<=s/t<=1-eta`. At a trace point in a compact interior set, choose normal
coordinates and radial gauge for `nabla`. For relative displacement `v`,
the product of the leading parallel transports for the `Q` and `Q_X` kernels
is

    I - B_i v^i - (1/2)(nabla_j B_i)v^j v^i
      + (1/2) B_i B_j v^i v^j + O(|v|^3).

The convolved Gaussian has covariance
`E[v^i v^j]=2(sr/t)g^(ij)`. The linear term integrates to zero. The scalar
potential and scalar-curvature first heat amplitudes cancel against the
same-boundary product since the two heat times sum to `t`. Thus the first
relative transport coefficient is

    (sr/t) tr(B_iB^i - nabla^i B_i) = -2(sr/t)h^2,

and the mixed-minus-same-boundary trace density has leading term

    -(h^2/(2 pi)) (sr/t^2).                               (15)

This agrees with the exact Fourier calculation in the preceding frozen
model. Multiplying by the external Duhamel factor `s=t-r` and integrating
the leading coefficient over `0<=r<=t` gives `-h^2 t^2/(24 pi)` for one
ordering and `-h^2 t^2/(12 pi)` for both orderings, before the angular
mass-square sum and the insertion product `u'w'`.

At commit `415ca4b`, equation (15) had only been derived for ratios in
compact subsets of the open simplex, and the endpoint remainder was left
open. The endpoint-uniform fixed-interior argument below supersedes that
limitation. The same-boundary word and physical source/contact ledger remain
separate obligations.

Concrete claim at that stage: the coefficient (15) on compact subsets of
the open simplex. The endpoint limitation is superseded below. First
unsupported implication: match this fixed-interior defect with same-boundary
and source terms under the common regulator. Numerical role: none.

Remaining to-do list: establish the physical moving-cut and common-regulator
bridge; match all response sectors; certify supported claims on GCP.

### Endpoint-uniform fixed-interior parametrix

Fix a smooth cutoff supported a positive distance from the seam, and let
`s+r=t`, `0<s,r<t`. In the fixed compactified product model the semigroups
are exact unitary conjugates in the interior, so

    K_QX(r;y,x) = X(y) K_Q(r;y,x) X^(-1)(x).

Choose normal coordinates at the trace point and radial gauge for `nabla`.
Let `v` be the separation of the two insertion points and
`P(y,x)` parallel transport from `x` to `y`. After conjugating back to the
fiber at `x`, the relative transport factor in the trace word is

    P(x,y)X(y)P(y,x)X^(-1)(x)-I
      = -B_i v^i
        + (1/2)(B_iB_j - nabla_i B_j) v^i v^j
        + (1/6)D_ijk v^i v^j v^k + O(|v|^4),

where `B_i=X(nabla_iX^(-1))`. The convolved Gaussian has covariance
`E[v^i v^j]=2 sigma g^(ij)`, `sigma=sr/t`, with
`0<=sigma<=t/4` on the *closed* Duhamel simplex. The linear term vanishes
under fiber trace because `tr B_i=0` for `X=epsilon c(e_tau)`. The quadratic
term gives `sigma tr(B_iB^i-nabla^iB_i)=-2 sigma h^2`.

The two local heat-kernel prefactors convolve to `(4 pi t)^(-1)` uniformly
in `s,r`. Their scalar Van Vleck and first heat-amplitude terms are common
to `Q` and `Q_X`; the relative factor already vanishes to first order in
`v`, so these amplitude corrections change the defect only by
`O(t sigma)`. The displayed cubic Taylor polynomial is odd in `v`; after
Gaussian integration it vanishes, and the fourth-order Taylor remainder is
`O(sigma^2)`. Scalar insertion gradients times the linear transport term
also vanish because `tr B_i=0`. Consequently,
for smooth scalar insertions `a=u'`, `b=w'`, the localized defect trace
density obeys the endpoint-uniform expansion

    T_def(s,r;t;a,b)
      = -a b (h^2/(2 pi)) (sr/t^2)
        + O((sigma^2+t sigma)/t)
      = -a b (h^2/(2 pi)) (sr/t^2) + O(t),              (16)

uniformly for `0<=r<=t`; the endpoints are interpreted by their semigroup
limits. Gaussian tails outside the normal-coordinate neighborhood and
boundary-reflected terms are exponentially small because the cutoff support
has positive seam distance. The constants depend on the fixed cutoff,
smooth coefficient bounds and `t0`, not on the angular mass. The exact
`exp(-t mu_n^2)` factor can therefore be restored mode by mode.

Multiplying (16) by the external Duhamel factor `s=t-r` and integrating
over the entire simplex gives for both orderings

    R_defect,int(t)
      = -(h^2 a b t^2/(12 pi))
          sum_n d_n mu_n^2 exp(-t mu_n^2) + O(t).

The `O(t)` follows from `O(t)` per mode, the simplex integral
`integral_0^t s dr=t^2/2`, and the sphere-tower bound
`sum_n d_n mu_n^2 exp(-t mu_n^2)=O(t^(-2))`. With the recorded tower
constant `2b_S^2`, the raw rank-two orbit coefficient is
`-b_S^2 h^2 a b/(6 pi)`.

This closes the local endpoint asymptotic only for a fixed smooth interior
cutoff in the pinned compactified product model. It does not bound cutoff
transition terms uniformly as the cutoff approaches the seam or a moving
physical cut, and it does not give the source's per-exterior physical-half
normalization. It also does not include the same-boundary word, density,
source contact, boundary transgression or LLL. Thus (16) is a component in
the technical ledger, not the source's full `r_curved` remainder and not a
physical admission margin.

Concrete claim: under the fixed-model smooth parametrix hypotheses, (16) is
uniform through both Duhamel endpoints and yields the displayed interior
defect contribution after the angular sum. Ordinary argument: use exact
unitary kernel conjugation, expand the relative parallel transport through
second order, exploit `tr B_i=0`, integrate the relative Gaussian with
variance `2sr/t`, and apply the mode-independent mass shift. First
unsupported implication: transfer this component through the seam/moving
cut and match every source term under the common regulator. Numerical role:
none.

Remaining to-do list: prove uniform seam and moving-cut localization; obtain
the physical-half source matching and full response subtraction; finish the
novelty decision and certify supported claims on GCP.

### Same-boundary plus defect: zero insertion-jet ledger

The defect coefficient must be combined with the same-boundary word before
it is compared with the source subtraction. This combination can be done
locally when `a=u'` and `b=w'` are constant near the trace point. In the
interior the orbit square is the two-dimensional spin Laplacian
`Q=nabla^*nabla+R/4`. Its first scalar heat coefficient is

    a_1(Q)=R/6-R/4=-R/12=(h^2-h')/6,
    R=2f''/f-4h^2=2(h'-h^2).

For the same-boundary word, the two heat times combine to `t`. Subtract its
flat `a_0` term; the remaining local trace density per ordering is
`a b a_1/(2 pi)+O(t)`, using rank two. The external Duhamel factor `s=t-r`
integrates to `t^2/2` per ordering. Summing both orderings and restoring
`S_2(t)=sum_n d_n mu_n^2 exp(-t mu_n^2)~2b_S^2/t^2` gives the same-boundary
local coefficient

    R_same,int(t;z) = (b_S^2/pi) a_1(Q;z) a(z)b(z) + O(t)
                    = (b_S^2/(6 pi))(h^2-h') a b + O(t).

The defect contribution from (16) is

    R_defect,int(t;z) = -(b_S^2/(6 pi))h^2 a b + O(t).

Therefore this paired odd-odd sector, after subtracting its flat `a_0`
term and for zero insertion jets, has the combined local coefficient

    R_same+defect,int(t;z)
        = -(b_S^2/(6 pi)) h'(z) a(z)b(z) + O(t).          (17)

In particular the apparent `h^2` obstruction from the defect alone cancels
against the first smooth heat coefficient of the same-boundary word. This
is a real local cancellation within the paired odd-odd sector. It does not
remove the residual `h'` term, treat nonconstant insertion jets, or establish
that (17) is part of (or canceled by) the source's prescribed tangent
subtraction. The source's flat tangent multiplier has no `h'`; its cutoff
and restoration terms still need an exact same-regulator expansion. The
physical-half factor, boundary, density/contact, LLL, and moving-cut sectors
also remain outside (17).

Concrete claim: in the fixed smooth product interior, the zero-insertion-jet
same-boundary heat coefficient cancels the `h^2` part of the odd-odd defect,
leaving (17) in raw rank-two normalization. Ordinary argument: use the
rank-two interior `a_1` coefficient, the two-ordering Duhamel factor, the
massive-tower limit, and (16). First unsupported implication: match the
residual `h'` coefficient, derivative-insertion terms, physical-half
normalization and source cutoff/restoration ledger. Numerical role: none.

Remaining to-do list: derive the integrated variable-insertion odd-odd local
coefficient and source cutoff match; control seam and moving-cut terms;
complete the all-sector common-regulator comparison and GCP certification.

### Integrated variable-insertion odd-odd coefficient

Let `a=u'` and `b=w'` be smooth scalar insertions compactly supported in the
fixed smooth interior, so no seam or spatial-boundary term enters the
integrated heat expansion. In the same-boundary word, the two heat times
combine to `t`; the relative-point Gaussian has covariance
`2 sigma g^(-1)`, `sigma=sr/t`. After integrating over the orbit, its
rank-two trace through the terms that can survive the tower limit is

    (1/(2 pi t)) [ integral (a b) dmu
       + t integral (a_1 a b) dmu
       - sigma integral (nabla a . nabla b) dmu ] + O(t),

where the displayed `O(t)` is after the two-ordering Duhamel integration
and the massive-tower sum, with fixed smooth coefficients and insertions.
The gradient sign follows by expanding the two insertions at separated
points and integrating the Gaussian; equivalently its Fourier multiplier is
`exp(-sigma |xi|^2)=1-sigma |xi|^2+O(sigma^2 |xi|^4)`. The coefficient of
`t a_1` is the same scalar heat coefficient used above.

An exact flat check fixes the normalization without the local-coordinate
parametrix: for `Q_0=-Delta` on the orbit plane, one ordering has integrated
trace

    (1/(2 pi t)) integral a (exp(sigma Delta)b) dmu.

Taylor expansion of this semigroup and integration by parts give
`integral (a b) dmu - sigma integral (nabla a . nabla b) dmu + O(sigma^2)`.
Thus the gradient coefficient and sign above agree with the exact Fourier
convolution. The two orderings satisfy
`2 integral_0^t (t-r) sigma dr=t^3/6`, which reproduces the stated
`-b_S^2/(6 pi)` coefficient after the rank-two prefactor and tower limit.

Multiplication by the external Duhamel factor `s=t-r`, integration in `r`,
and summation over both orderings give the same-boundary coefficients

    (b_S^2/pi) integral (a_1 a b) dmu
      - (b_S^2/(6 pi)) integral (nabla a . nabla b) dmu + O(t).

Indeed, the derivative term uses
`2 integral_0^t (t-r)(sr/t) dr=t^3/6`; the rank-two heat prefactor is
`1/(2 pi t)`, and `S_2(t)~2 b_S^2/t^2`. The defect's linear insertion
gradient term vanishes by `tr B_i=0`; its first derivative-dependent terms
are in the `O(t)` remainder after the tower. Adding its coefficient from
(16) to the same-boundary `a_1=(h^2-h')/6` term therefore yields the
spatially integrated paired-sector expression

    R_same+defect,int(t)
      = -(b_S^2/(6 pi)) integral [ h' a b + nabla a . nabla b ] dmu
        + O(t)
      = -(b_S^2/(6 pi)) integral [ h' u'w' + u''w'' ] dmu + O(t).

This is raw rank-two normalization for the fixed interior, compactly
supported insertions, after subtracting the flat `a_0` term. It does not
assert a pointwise density formula for the gradient part; integration by
parts or removing the compact-support condition would introduce boundary
terms. At `h=0`, its remaining `u''w''` term also shows that this odd-odd
sector alone is not the full flat response: other vertices and the source
subtraction must be included. Nothing here identifies either term with the
source's tangent/cutoff restoration or proves the physical `t^(3/2)`
remainder.

Concrete claim: the integrated fixed-interior odd-odd pair has the displayed
coefficient for compactly supported smooth scalar insertion jets. Ordinary
argument: expand the same-boundary relative-point Gaussian to second order,
retain its first heat coefficient, use `tr B_i=0` for the defect's linear
term, and integrate the two Duhamel orderings against `S_2(t)`. First
unsupported implication: match this paired-sector coefficient and every
other vertex, contact, cutoff restoration, and boundary term under the
source's common regulator. Numerical role: none.

Remaining to-do list: independently audit the variable-insertion expansion
and its normalization; match the full local ledger to the source; control
seam and moving-cut terms; complete all-sector common-regulator comparison
and GCP certification.

### Endpoint check in the exact frozen model

For constant `h,a,b`, the Fourier calculation gives the complete one-ordering
time integral, including both Duhamel endpoints:

    I_h(t) = (a b t/(2 pi))
             integral_0^1 (1-x)(exp(-t h^2 x(1-x))-1) dx.

This follows by setting `x=r/t` in the exact product-kernel formula, without
using an interior-simplex expansion. For `z>=0`,
`0<=exp(-z)-1+z<=z^2/2`. The beta integrals

    integral_0^1 x(1-x)^2 dx = 1/12,
    integral_0^1 x^2(1-x)^3 dx = 1/60

then give

    I_h(t) = -a b h^2 t^2/(24 pi) + E_h(t),
    |E_h(t)| <= |a b| h^4 t^3/(240 pi).

Thus the frozen model's endpoint remainder is uniform on the full closed
simplex; the reversed ordering has the same result. This verifies that the
factor `s^2 r/t^2` makes the *leading coefficient* integrable at both ends.
It does not prove an endpoint-uniform remainder for the variable-coefficient
curved heat kernels. A route for that proof is to retain the exact Gaussian
convolution of the two local parametrices, rather than estimating the two
heat factors separately; the resulting relative Gaussian has variance
`2sr/t` and remains an approximate identity as either endpoint is approached.
The Volterra-parametrix remainder must be shown to preserve this uniform
relative-Gaussian bound before (15) can be integrated for the actual source.

Concrete claim: the frozen-coefficient defect expansion and remainder bound
above hold uniformly for `0<=r<=t`. Ordinary argument: rescale to `x=r/t`,
use the exact Fourier factor, and apply the elementary exponential remainder
bound with the displayed beta integrals. First unsupported implication:
propagate this endpoint-uniform remainder through the actual curved
complementary-domain parametrix. Numerical role: none.

Remaining to-do list: prove the variable-coefficient endpoint parametrix
bound; match the resulting fixed-interior defect with the same-boundary and
source terms; close physical moving-cut/common-regulator transfer and GCP
certification.

### Sector scope for the interior commutator

The localized identity (8) is for the boundary-condition/conjugation defect
`exp(-r Q_X)-exp(-r Q)` only. The full odd-odd vertex word splits exactly
into the same-boundary term with `exp(-rQ)` plus this defect. The
same-boundary term belongs in the complete tangent/local subtraction and
must be retained when assembling the response. In particular, for the flat
constant-`X` product, `Q_X=Q` in the interior and the localized defect
vanishes, while the directly computed flat gradient-gradient
`U_1/t` coefficient is carried by the same-boundary word. Therefore (11)
only governs the *additional curved interior defect* produced by variation
of `X` and the endomorphism connection; it is not a re-derivation or
re-allocation of the full flat commutator coefficient. The curved ledger must
combine the same-boundary tangent term and the localized defect with the
source subtraction under the same regulator.

### Correction to the orbit potential identification

An earlier version of (11) assigned a monopole-curvature endomorphism to the
orbit potential `V` and claimed a nonzero `[V,X]` term in the flat source
limit. That identification is incorrect for the source's product
decomposition: the monopole connection belongs to the sphere Dirac operator
and its spectrum `mu_n`; the orbit square `Q` has only its scalar
Lichnerowicz endomorphism. The corrected source-specific commutator therefore
has `[V,X]=0`, and is `-2 epsilon h c(e_y) nabla_(e_tau)+h^2 X`. The flat
constant-`X` interior defect vanishes; the known flat `U_1/t` coefficient
comes from the same-boundary word. Keep `[V,X]` only when discussing a
hypothetical additional orbit twist, not the source RN product.

# Prior-art comparison: derivative jumps and the tangent coefficient

Status: focused primary-source comparison, not a complete novelty verdict.
The source is Bordag and Vassilevich, [Nonsmooth backgrounds in quantum
field theory, arXiv:hep-th/0404069v2](https://arxiv.org/html/hep-th/0404069v2),
sections II and III. It must be compared with the final paper statement and
with any later applicable literature. The candidate's boundary result is
summarized in [the conditional coefficient derivation](flat-boundary-coefficients.md).

## Existing result

The source studies a flat manifold (a torus or R^n with suitable decay), a
flat codimension-one interface, and a Laplace operator perturbed by a scalar
potential E that is smooth on either side but can have a normal-derivative
jump. Section III.2 derives the quadratic-in-E trace contribution. Its
Eq. (20) expresses the leading surface coefficient in terms of the squared
jump of the pth normal derivative, at coefficient a_(2p+5); its Eq. (32)
gives gamma_p=(-1)^(p+1) 2^(-2p-5). Eq. (22) is the quadratic Duhamel
trace and Eqs. (23)-(31) calculate it using the flat heat kernel.

Using the source's expansion convention t^((k-n)/2), the case n=2 and p=1
has a7 multiplying t^(5/2). With its own one-sided-normal and quadratic
coefficient conventions, gamma_1=1/128 and the scalar a7 surface integrand
has factor (4pi)^(-1/2)/128=1/(256 sqrt(pi)) times the squared derivative
jump. The source's E is a potential; signs of E versus V disappear in that
square. A mixed Hessian comparison must still account for the factor from
polarizing/differentiating the quadratic expression.

This paragraph reports the value stated by the source; it is not an
independently verified coefficient. The subsequent
[normalization audit](scalar-jump-normalization-audit.md) identifies an
apparent mismatch between the source's intermediate expansion and its
stated jump formula, and an independent Duhamel calculation gives a
different candidate value. The discrepancy remains open and prevents using
either numerical value as a settled benchmark.

For direct four-dimensional `a7` power counting, the independently derived
two-dimensional one-interface scalar coefficient in
[`scalar-jump-general-order.md`](scalar-jump-general-order.md) tensorizes with
the two extra free tangential heat densities. It gives
`J^2/[2048 pi^(3/2)] t^(3/2)` per scalar fiber and interface for the coefficient
of `lambda^2`; substituting `p=1` in the preprint's Eq. (32) gives twice this
value. This is a scalar-potential comparison only. It does not identify any
vertex in P1's full-Weyl Dirac variation, and the discrepancy remains
unsettled against the paywalled published equation text.

## Overlap and necessary comparison

The existence of a half-integer surface term arising from a nonsmooth field,
its t^(5/2) scaling, use of the full Gaussian kernel, and the general notion
of a coefficient determined by a normal-derivative jump are not by themselves
new. The candidate's cubic seam b~c|y|^3 has a jump in its third derivative;
a normal second derivative of b is proportional to |y| and has a first
normal-derivative jump. This makes the source's p=1 scalar-potential result a
particularly close comparator in power counting. It does not, by itself,
identify the Dirac metric variation with a scalar potential problem.

For a valid term-by-term comparison, derive the exact transformed Dirac
square, including its variable principal symbol, first-order Clifford terms,
second/density vertex, and all normalizations. Determine whether a permitted
conjugation or field redefinition reduces the mixed variation to the scalar
potential model plus explicit extra terms. Compare its jump convention,
fiber rank, half/folded trace, quadratic-versus-bilinear factor and the
candidate coefficient -15/(1024 sqrt(pi)). Do not compare the two numerical
coefficients by simply substituting a guessed effective potential or dropping
principal-symbol contributions.

The prior source's finite jump formula does not, on its face, evaluate the
candidate's mixed cubic/logarithmic t^3 log(t) coefficient, nor does this
observation prove that coefficient is novel. Its assumptions require smooth
one-sided data at the relevant order; the logarithmic jet has its own
regularity. Search for and compare prior logarithmic polyhomogeneous or
singular-coefficient heat expansions before making any independent novelty
claim for that term. The source also does not supply the candidate's changing
paired first-order domain or a regulator-uniform curved metric remainder.

## Singular-weight comparison

Van den Berg, Gilkey and Kirsten, [Heat Trace Asymptotics with Singular
Weight Functions II](https://people.maths.bris.ac.uk/~mamvdb/pdfs/Publication91.pdf),
J. Geom. Anal. 21 (2011), Theorems 1.4 and 1.6, treat a smooth Laplace-type
operator with mixed boundary conditions and a weight F=r^(-alpha) times a
smooth collar function, for Re(alpha)<1. They derive boundary powers
t^((ell-alpha)/2), relative to the boundary prefactor, and compute the first
three boundary invariants. This is directly relevant to the mixed boundary
setting and shows that analytic families of singular boundary weights are
established prior art. Differentiating a power in alpha formally produces a
logarithmic weight and a log(t) term, but interchanging that differentiation
with the full asymptotic remainder requires its own uniformity proof.

The candidate's log profile enters the operator's metric variation and its
mixed second response, including principal-symbol and density vertices; it is
not merely a fixed weight multiplying an unchanged smooth heat operator. The
cited theorem therefore does not by itself give the candidate coefficient,
nor does that distinction establish novelty. A complete comparison needs the
relevant differentiated weighted coefficients, permitted boundary
regularity, and any further prior work on varying nonsmooth metrics.

## Decision impact

The prior result materially raises the novelty bar for the leading cubic
term. The strongest supported difference, if any, must survive the explicit
normalization and transformed-operator comparison above. If the result is a
specialization of known discontinuity formulas, credit that dependence and
assess whether the logarithmic term, paired realization and complete
all-frequency estimate together still warrant a standalone paper. This
comparison is preliminary; no continue, merge or park decision follows yet.

Remaining to-do list: complete the exact transformed-operator comparison,
check the applicability of the logarithmic prior art against the final
operator/domain claim, audit the paired physical scope and rough limits, and
formalize the supported contribution on GCP.

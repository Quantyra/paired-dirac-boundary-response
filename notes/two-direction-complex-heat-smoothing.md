# Two-direction complex heat smoothing on a fixed comparator

This verifies the sectorial and smoothing inputs of
`mixed-localized-heat-cauchy-bound.md` for a fixed compact comparator under
explicit first-order form hypotheses. It does not verify the physical bundle,
common regulator, angular sum, or small-time subtracted response.

Let D be a closed first-order realization on a common domain V in H, with
||v||_V equivalent to ||Dv||+||v||. Assume real bounded scalar multipliers
with bounded weak derivative, including their inverses when bounded away from
zero, preserve V. Assume the product rule

    ||[D,a]v|| <= C ||da||_infinity ||v||

and that the same estimates hold for the complex scalar multipliers below.
Fix a real b in W1,infinity and write E_b=exp(-b/2), D_b=E_b D E_b.
Assume the real square form q_0(v,v)=||D_b v||² is closed on V and that

    q_0(v,v)+c_0 ||v||² >= c_1 ||v||_V²                 (1)

for positive constants. Let real u_ell and w_ell satisfy
||u_ell||_(W1,infinity)+||w_ell||_(W1,infinity) <= K ell².
For complex z,w set E_(z,w)=exp[-(b+z u_ell+w w_ell)/2] and
D_(z,w)=E_(z,w) D E_(z,w). The form

    q_(z,w)(v,h) = <D_(z,w)v, D_(bar z,bar w)h>

uses the slot convention making it holomorphic in z,w and satisfies
q_(0,0)=q_0.

There is a constant C depending on b, K and the fixed product-rule/graph
bounds, but not on ell, such that for

    delta = (|z|+|w|) ell² <= 1,

multiplication and the product rule give

    ||(D_(z,w)-D_b)v|| <= C delta ||v||_V.              (2)

Indeed, the exponential difference is O(delta) in W1,infinity, and each
commutator contains only one weak derivative of the exponential. Applying
(2) to both factors yields

    |q_(z,w)(v,h)-q_0(v,h)| <= C' delta ||v||_V ||h||_V. (3)

Choose a fixed r>0 small enough that 2r C' <= c_1/2. Then on
|z|,|w| <= r ell^(-2), the forms are uniformly bounded and, by (1) and
(3), uniformly shifted coercive with a common sector angle strictly below
pi/2. Closedness follows from the fixed complete form domain V. The
associated operators L_(z,w) generate bounded analytic semigroups with
uniform constants on the smaller polydisc; in particular, for 0<t<=1,

    ||T_(z,w)(t)|| <= C_2,
    ||L_(z,w) T_(z,w)(t)|| <= C_2 t^(-1).              (4)

These are standard consequences of the uniform sectorial form theorem;
the shift is absorbed into the constants on this time interval. For
v=T_(z,w)(t)f, the form representation and coercivity give

    c ||v||_V² <= |<L_(z,w)v,v>| + C ||v||²
                  <= C' t^(-1) ||f||².

Thus ||T_(z,w)(t)||_(H -> V) <= C'' t^(-1/2) uniformly, without a
square-root-domain identification. Holomorphy into V also follows: the
H-valued semigroup is holomorphic in the form parameters, its V norms are
locally uniformly bounded by this estimate, and weak holomorphy in V follows
by approximation of V-dual functionals by restrictions of H-dual
functionals; local boundedness then gives V-valued holomorphy. The same
argument applies to each f, and local boundedness gives operator-valued
holomorphy H -> V.

If, additionally, V -> H belongs to Schatten S_n for an integer n, the
factorization and Cauchy argument in the preceding note now apply with
constants uniform in ell. It gives the mixed trace-class derivative bound
C ell^4 t^(-n/2). On a fixed compact d-dimensional smooth domain, the
standard H1 embedding is in S_n for n>d; identifying V with the relevant
H1 projector domain is a separate hypothesis. The conclusion remains a
fixed-comparator bound, not the sharp subtracted t^(3/2) estimate required
for the curved response. No numerical calculation is used.

Remaining to-do list: match these fixed-domain hypotheses to the physical
paired realization and regulator; establish angular, complement and
subtracted-response bounds; resolve novelty; prepare the manuscript; and
certify the supported claims in Lean on GCP.

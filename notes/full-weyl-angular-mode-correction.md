# Four-dimensional Weyl congruence changes the angular mode

This is an ordinary operator calculation identifying an application limit of
`product-square-domain-summability.md`. The [GCP mode real-mass receipt](../evidence/gcp-mode-real-mass-20261030/README.md)
certifies the orbit-only mode endpoint under abstract assumptions, but does
not certify the full-Weyl correction below or a physical trace calculation.
The distinction matters for P1-A through P1-C:
the pinned rough-variation source applies scalar congruence to the *full*
four-dimensional first-order operator, while the product factorization uses
an orbit-only variation with a fixed angular coefficient.

The conditional finite-cut argument deriving these common mode domains from
the four-dimensional product projector realization is in
[`full-weyl-mode-form-domain.md`](full-weyl-mode-form-domain.md).

Start from a product-mode seed P_mu=D+i mu G on Dom D=V, with real mu,
a bounded self-adjoint involution G, and the complementary-domain relation
D* G=G D on V. Let m be a positive real scalar multiplier with m and 1/m
bounded in W^{1,infinity}, commuting with G and preserving V and Dom D*.
Set D_m=m D m, M=m². The full congruence is

    P_mu,m = m P_mu m = D_m + i mu M G,       Dom P_mu,m=V.   (1)

It is generally *not* D_m+i mu G. The latter describes an orbit-only
congruence with a separately fixed sphere operator, not the full Weyl
congruence. In particular, even constant m=c changes the squared angular
shift from mu² to c^4 mu².

Using the same bounded-congruence adjoint argument as for D_m gives
P_mu,m*=D_m*−i mu M G on Dom D_m*. Because M G maps V into Dom D_m*,
the composition-domain condition is still

    Dom(P_mu,m* P_mu,m)=Dom(D_m* D_m).                       (2)

Indeed, for u in V the term i mu M G u already belongs to the linear
subspace Dom D_m*. On that domain the action is

    P_mu,m* P_mu,m u
      = D_m*D_m u + mu² M² u + i mu G [D_m,M]u.             (3)

Here [D_m,M]u=D_m(Mu)−M D_m u. To justify the cross term, Mu lies in V,
so D_m* G(Mu)=G D_m(Mu), and M commutes with G. For a Dirac-type D,
the weak product rule makes [D_m,M]=m² c(dM) as a bounded multiplication
operator under the stated multiplier regularity. Equation (3) is valid on
the actual composition domain and remains meaningful without imposing an
unchanging domain as m varies.

The commutator term vanishes for constant m but the angular mass is still
rescaled. For nonconstant m, it is generally nonzero. For example in a flat
orbit chart with D=c(d) and m=m(y), it contains the local term
m² M'(y) G c(dy). The full square therefore does not generally equal
L_m tensor 1 plus 1 tensor B², and its heat trace does not generally factor
as a fixed angular heat trace times the orbit heat trace. Equation (3)
exhibits the missing angular-dependent vertex, but by itself does not
calculate the mixed response or its regulator limit.

The product-domain and heat-factorization results remain valid for the
explicitly constructed family D_m+i mu G and for the unvaried product
seed m=1. They cannot be used to differentiate the full congruence family
by holding its angular term fixed. A complete physical response must keep
the variations of M² and the commutator term, along with density and second
vertices, the specified sectors and common regulator. The pinned source's
four-dimensional fixed-space congruence is in `stationary-paired-dirac-phase.md`
and `current-rough-paired-variation.md` at commit f0eab590.

No numerical calculation is needed for this operator distinction. The
physical bundle identification and the mode/domain assumptions are still
separate obligations.

Remaining to-do list: incorporate these angular-dependent vertices in the
full response and regulator audit; verify physical geometry, decide novelty,
prepare the manuscript and certify the supported claims in Lean on GCP.

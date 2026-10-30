# Scaled off-diagonal Hilbert--Schmidt bound from operator bounds

This supplies the Schatten step in `scaled-collar-duhamel-integral.md` from
operator-norm locality and a global heat trace bound. It is an ordinary
conditional argument on one fixed compact auxiliary or physical model; it
does not verify the physical bundle, the operator bounds, or Lean proof.

Let T(t)=exp(-tL), with L nonnegative self-adjoint, and assume uniformly
for 0<t<=1 and the family under consideration,

    ||T(t)||_2 <= H t^(-d/4),                              (1)
    ||1_B T(t) 1_E|| <= C exp[-c dist(B,E)²/t].           (2)

Here ||.||_2 denotes the Hilbert--Schmidt norm. Let C_ell be a first-order
commutator supported in F_ell, with 0<ell<=1. Assume its heat estimates

    ||C_ell T(t)|| <= C ell^(-2) t^(-1/2),                (3)
    ||1_F C_ell T(t) 1_E||
       <= C ell^(-2) t^(-1/2) exp[-c dist(F,E)²/t]       (4)

whenever dist(F,E)>=c0 ell, with constants independent of ell. The
ell^(-2) power is consistent with a scaled smooth cutoff and its first two
derivatives, but (3)--(4) must be proved for the actual graph/domain and
coefficient family. The energy method in `paired-weighted-derivative.md`
indicates a route; it does not by itself verify these uniform constants.

Suppose dist(F,K)>=c0 ell. Put N={x:dist(x,F)<dist(F,K)/2}. Split
T(t)=T(t/2)(1_N+1_(N complement))T(t/2). For the first term, F and the
complement of N are separated; for the second, N and K are separated.
Applying (2) to the separated half and (1) to the other half gives

    ||1_F T(t) 1_K||_2
       <= C' t^(-d/4) exp(-c' ell²/t).                    (5)

For the commutator, the same split gives

  1_F C_ell T(t/2) 1_(N complement) T(t/2) 1_K
  + 1_F C_ell T(t/2) 1_N T(t/2) 1_K.

In the first term use the separated operator bound (4) and the global
Hilbert--Schmidt bound (1). In the second use (3) and apply (5) to the
separated sets N,K at time t/2. Schatten ideal inequalities yield

    ||1_F C_ell T(t) 1_K||_2
       <= C' ell^(-2) t^(-1/2-d/4) exp(-c' ell²/t).     (6)

The same reasoning with adjoints gives the reversed orientation when its
corresponding operator estimates hold. For 0<t,ell<=1, (5)--(6) imply the
two common-form Hilbert--Schmidt hypotheses in
`scaled-collar-duhamel-integral.md` with a=2 and N=1/2+d/4, after adjusting
constants. The interval t<=c ell² needed for that note's endpoint estimate
is then available along ell=t^p, 0<p<1/2.

The global trace bound is available for the fixed auxiliary comparator under
the seed and multiplier assumptions in `lapse-comparator-trace-bound.md`;
an analogous uniform bound for the physical family is an independent input.
The scaled derivative locality estimate (4), common cutoff-domain mapping,
physical pullback, fixed-insertion complement and all mixed vertices remain
to be verified. Thus neither the physical response nor regulator limit is
established. No numerical calculation is used.

Remaining to-do list: prove the scaled operator estimates for the physical
and auxiliary families, match domains and response vertices, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
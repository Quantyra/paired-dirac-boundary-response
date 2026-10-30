# Compact-double approximation to the rough flat tangent Hessian

This combines the fixed compact form theorem in
`compact-positive-time-derivatives.md` with the free Fourier and thermal
formulas in `fixed-period-flat-hessian-images.md`. It identifies a canonical
compact-exhaustion limit with the Fourier-defined rough flat Hessian. It does
not identify that limit with a separately constructed noncompact relative
trace, the physical bolt or source, a curved remainder, or a Lean certificate.

## Setup and claim

Fix a thermal period T>0 and a fixed periodic or antiperiodic thermal spin
structure. Let u,v be real even compactly supported functions of y, with
u,v in H3(R) and W1,infinity(R), supported in [-R,R]. For L>2R view them
as periodic functions on the radial circle of length 2L. On the flat compact
cylinder use the same rank-two Clifford representation, reflection and
half-domain convention as `rough-compact-flat-folding.md`. Let H_(L,T)(t)
be the actual mixed heat-trace derivative at the free seed, on the half
cylinder divided by T. The trace is finite on each compact cylinder; the
uniformly elliptic fixed-domain form theorem gives the mixed derivative for
the rough W1,infinity directions.

Let H_T^Fourier(t) be the fixed-period noncompact Fourier-defined bilinear
form in `fixed-period-flat-boundary-coefficients.md`. For every 0<t0<t1,

  sup_(t0<=t<=t1) |H_(L,T)(t)-H_T^Fourier(t)| -> 0 as L->infinity. (1)

More precisely, for sufficiently large L there are C,c>0 depending on
T,t0,t1 and the fixed flat conventions, such that

  sup_(t0<=t<=t1) |H_(L,T)(t)-H_T^Fourier(t)|
    <= C exp(-c L^2) ||u||_(H2(R)) ||v||_(H2(R)).              (2)

The constants are independent of L and the particular profiles with the
specified common support. The second fixed point of the radial reflection is
included in H_(L,T); (2) shows its winding contributions vanish in this
exhaustion rather than dropping it by fiat.

## Winding comparison at the smooth seed

First take smooth even compact u,v. Periodic radial Fourier modes have
p_j=pi j/L and k_n=pi n/L. The first square vertex and the time derivative
are those in `flat-tangent-multiplier.md`; the thermal direction contributes
one fixed lattice index because u,v do not depend on tau. The finite-volume
Duhamel trace is an absolutely convergent mode sum at each positive t. After
completion of the radial square its basic internal Gaussian is

  (2L)^(-1) sum_(j in Z) exp[-t(p_j+alpha k_n)^2]
   = (4 pi t)^(-1/2) sum_(m in Z) exp(-m^2 L^2/t)
                                  exp(2 i m L alpha k_n).      (3)

Polynomial momentum factors are obtained by differentiating the shifted
Gaussian or using Gaussian moments; the thermal momentum square is retained
as in `fixed-period-flat-geometric-images.md`. The m=0 term gives exactly
the noncompact fixed-period multiplier sampled at k_n, with the corresponding
periodic Fourier pairing. The m!=0 terms are radial windings.

For t in [t0,t1] and 0<=alpha<=1, differentiating the displayed Gaussian
and once in t introduces only a fixed polynomial in |k_n|, |m|L and inverse
powers of t; its degree in k is at most four. The thermal Gaussian sums and
their first two t derivatives are uniformly finite on this interval. For
L sufficiently large, the sum over m!=0 of each such polynomial times
exp(-m^2 L^2/t) is bounded by C exp(-L^2/(2t1)). Cauchy--Schwarz and
periodic Parseval control the resulting weighted sum by
C ||u||_H2 ||v||_H2, uniformly in L because the profiles vanish near the
identified radial seam. This gives the winding part of (2), including the
mixed second vertex through the complete positive-time variation identity.

For the m=0 term, the periodic external-mode sum is a periodization of the
noncompact Fourier pairing. Its image estimate can be made explicit without
assuming a uniform Taylor expansion in k. By I=(1+A)/2, the fixed-period
Hessian multiplier is a t-dependent linear combination of 1, A(x) and x A'(x),
with x=t k^2; its coefficients contain only W_T,W_T',W_T'' and powers of t.
They are bounded on [t0,t1]. In real space these three pieces are respectively

  integral u v,
  integral_0^1 <u, exp(a t partial_y^2)v> d alpha,
  -t integral_0^1 a <u', exp(a t partial_y^2)v'> d alpha,      (4)

where a=alpha(1-alpha), and the first term is local. The integrals are
understood with the full-line L2 pairing. Periodizing replaces the Gaussian
K_(a t)(y-z) by its sum over shifts 2Lm. For the m!=0 terms, y,z in the
common support [-R,R] imply

  |y-z+2Lm| >= 2L|m|-2R >= (2|m|-1)L,  L>2R.                  (5)

The local term has no nonzero image because the supports are disjoint. For
the Gaussian terms, Young's inequality and the one-dimensional Gaussian tail
bound give, uniformly for a in [0,1/4] and t in [t0,t1],

  ||1_(|x|>=d) K_(a t)(x)||_1 <= C exp[-d^2/(C t1)],           (6)

with the a=0 endpoint interpreted as the delta kernel, which has no image
at positive separation. Applying (6) to u,v and to u',v', then summing m,
bounds the sampling error by C exp(-c L^2)||u||_H1||v||_H1. Thus the
constant is independent of R once L>2R; it may depend on T,t0,t1. The
thermal and t-dependent coefficients are fixed during this radial estimate.
This explicitly includes the external-mode sampling error rather than
inferring a rate from pointwise convergence of Fourier coefficients.

Combining this with the internal-winding estimate proves (2) for the smooth
profiles. The radial half factor is exactly one half on each compact double
under the folding hypotheses.
## Rough directions

Choose smooth even compact approximants u_j,v_j with the same enlarged support,
converging to u,v in both W1,infinity and H2; the weighted mass/log profiles
admit such approximants because their even reflections are W3,infinity and
compactly supported, as in the weighted-cutoff notes. For each fixed L, the
compact form theorem gives convergence of the mixed heat derivatives in trace
norm uniformly on [t0,t1]. The Fourier-defined noncompact form is continuous
in H2, and (2) holds for the approximants with constants independent of j.
Passing j->infinity therefore proves (2) and (1) for the rough directions.
The argument is a positive-time compact exhaustion; no uniform t0->0 claim
or interchange with the ultraviolet subtraction follows.

Consequently the fixed-period cubic and conditional cubic-log coefficients
in `fixed-period-flat-boundary-coefficients.md` describe the small-time
asymptotics of this compact-exhaustion bilinear form after the stated common
subtraction. This remains a defined flat model limit. Equality with the
physical noncompact relative trace, global bundle and boundary data, source
normalization and curved regulator must be proved separately.

Remaining to-do list: establish physical response and regulator matching,
settle novelty and scope, complete the manuscript, and certify supported
claims in Lean on GCP.

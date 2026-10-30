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

For the m=0 term, the periodic external-mode sum is the Poisson periodization
of the noncompact Fourier pairing. Equivalently, its difference from the
integral is a sum of translations of the smooth free heat kernels between
supports separated by at least 2L-2R. The same Gaussian derivative estimates
bound those images by C exp(-c L^2) times the H2 norms for L>2R, with c
chosen from t1. This also accounts for the sampling error: it is not inferred
from pointwise convergence of Fourier coefficients. These estimates apply
before the radial half factor, which is exactly one half on each compact
double under the folding hypotheses.

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

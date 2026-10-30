# Explicit angular-vertex sum at the product seed

This estimates the angular-only part of the mixed heat response at the
unvaried product seed. It does not estimate terms pairing an angular vertex
with an orbit-square vertex, the physical normalization, or the subtracted
curved remainder. The argument is ordinary mathematics, not Lean-certified.

Use the constructed product model, real sphere eigenvalues mu_j, and the
full-congruence angular vertices from `full-weyl-angular-vertices.md` at
b=0. Let H_j=L+mu_j² with L>=0 and let e^(-tL) be trace class. Suppose
u,w and c(du),c(dw) are bounded; define U=||u||∞, W=||w||∞,
U1=||c(du)||∞ and W1=||c(dw)||∞. Since G is a unitary involution,

    ||A_u,j|| <= 2 mu_j² U + |mu_j| U1,
    ||A_uw,j|| <= 4 mu_j² U W + 2 |mu_j|(U W1+W U1).     (1)

For each fixed mode consider only the second angular vertex and the two
ordered products of the first angular vertices in the heat mixed derivative.
Their trace magnitudes satisfy

    |R_j(t)| <= e^(-t mu_j²) Tr(e^(-tL))
       [t ||A_uw,j|| + t² ||A_u,j|| ||A_w,j||].             (2)

The second-vertex term gives the first contribution by cyclicity. For an
ordered pair, Schatten Hölder with exponents t/a, t/b, t/c for heat
factors e^(-aH_j), e^(-bH_j), e^(-cH_j), a+b+c=t, bounds the trace by
||A_u,j||||A_w,j|| Tr(e^(-tH_j)); endpoint values follow by limits. The
two time simplices have total area t², yielding (2). This estimate concerns
bounded angular vertices; orbit form vertices cannot be inserted into it as
if they had finite L² operator norm.

For the recorded massive sphere tower let mu_n²=n(n+q)/b0² and
d_n=2(q+2n), with q>=0, b0>0, n>=1. Define moments

    S_p(t)=sum_(n>=1) d_n |mu_n|^p exp(-t mu_n²),  p>=0.

For p>0, x^(p/2)e^(-x) <= (p/e)^(p/2)e^(-x/2), so

    S_p(t) <= (p/(e t))^(p/2) Theta(t/2),
    S_0(t)=Theta(t),                                       (3)
    Theta(t) <= 2 b0²/t + (q+2) sqrt(pi) b0/sqrt(t).

The last bound is the one in `angular-weighted-locality.md`. Substituting
(1) into (2) and summing all massive modes gives the explicit majorant

    Tr(e^(-tL)) {t[4 U W S_2 + 2(U W1+W U1) S_1]
      + t²[4 U W S_4 + 2(U W1+W U1) S_3 + U1 W1 S_2]}. (4)

Equations (3)--(4) show absolute convergence for each t>0, without a mode
cutoff or a cancellation between opposite signs. The zero sector is separate:
its A_u and A_uw vanish, so it contributes zero to this angular-only piece.
Its orbit response is not zero in general and must remain in the full trace.

On a compact two-dimensional orbit, an assumed bound Tr(e^(-tL))<=C t^-1
makes (4) at most O(t^-2) for bounded direction norms as t tends to zero.
That crude unsubtracted bound is far too weak to establish an integrable
renormalized remainder; cancellations and local counterterms cannot be
inferred from it. Nor does it control variable b, changing physical domains,
angular-orbit cross insertions, a finite-cut-to-infinity limit, or the common
regulator. Numerical application would additionally need the constants and
all omitted sector and orbit-vertex bounds.

Remaining to-do list: control the mixed orbit/angular terms and full physical
subtraction, establish the geometry and regulator limits, decide novelty,
prepare the manuscript, and certify supported claims in Lean on GCP.

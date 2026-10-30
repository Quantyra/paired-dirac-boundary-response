# Scalar surface form factor versus the complete flat Dirac response

This comparison connects the explicit candidate vertex decomposition to Franchino-Viñas, [arXiv:2208.11979v2](https://arxiv.org/html/2208.11979v2), Theorem 3 and Eq. (4.2). It concerns the flat whole-frequency model and the conditional physical-half convention in [the component calculation](flat-vertex-component-form-factors.md). It is not a novelty verdict, a physical paired-domain theorem, or a Lean certificate.

Set the semitransparent coupling of the scalar comparator to zero. Its quadratic potential trace is the standard two-insertion Duhamel form; Theorem 3 relates its bulk quadratic form factor to its first-order smeared form factor. For normal Fourier transfer k in the two-dimensional rank-two Dirac calculation, the isolated scalar-potential part of the first Dirac vertex is V_u=u''/2. At mixed-derivative order, with x=tk² and A(x)=integral_0^1 exp[−alpha(1−alpha)x]d alpha, the full-plane multiplier of the V_u,V_w pair is

    H_pot(t,k)=x² A(x)/(8pi t).                               (1)

This is exactly the scalar bulk two-insertion Gaussian form factor with the candidate's rank, Fourier and mixed-derivative conventions. The physical-half convention divides (1) by two. Thus this piece of the candidate calculation is directly represented by the known scalar form-factor mechanism; the appearance of A(x) and resummation over all normal frequencies are not independently novel.

The full flat first vertex also has principal, scalar first-order and Clifford pieces. A single Clifford insertion has zero spin trace, but the Clifford pair has full-plane multiplier x A(x)/(4pi t); the remaining scalar differential pieces and all their cross terms form a nonzero additional kernel. The genuine second variation must also be included. The exact formulas and their Gaussian derivation are in [the component calculation](flat-vertex-component-form-factors.md) and [the second-vertex calculation](flat-second-vertex-trace.md). A pointwise scalar multiplication conjugation preserves the leading symbol and therefore cannot alone transform a nonconstant conformal principal symbol to a fixed flat Laplacian. More general coordinate or operator transformations are not excluded by this observation and require their own domain and trace comparison.

For the pure cubic/log directions and the convention of [the seam decomposition](cubic-log-vertex-decomposition.md), subtracting each component through x³ gives the t³ log(t) coefficients, multiplying C=c_u d_w+d_u c_w,

    potential pair  +3/(20pi),   Clifford pair −3/(140pi),
    remaining scalar differential terms −1/(7pi),
    total −1/(70pi).                                           (2)

The second vertex is polynomial of degree at most one in x in this flat calculation and has no contribution to this particular x⁴ remainder. Equation (2) shows that importing the scalar-potential form factor alone does not reproduce the candidate's complete mixed coefficient in the declared grouping. It does not establish that the total is new: a broader known reduction may include the differential terms and local vertices, and the prior scalar theorem neglects total derivatives under its stated assumptions. Nor does this comparison settle the physical folding factor, the log-jet hypothesis for general weighted fields, the separate scalar jump normalization discrepancy, or the common regulator.

Remaining to-do list: investigate complete reductions and later applicable literature, verify the physical domain and response, decide the paper scope, prepare the manuscript and certify supported claims in Lean on GCP.

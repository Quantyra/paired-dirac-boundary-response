# Weighted cubic/log fields in the contact-limit hypotheses

This verifies the field-norm portion of
`physical-contact-joint-cut-approximants.md` for the physical-side weighted
cutoff on a fixed RN collar. It does not prove the uniform heat, boundary,
source-normalization or proper-time hypotheses of that result.

Let g=u^(-2) ghat in four dimensions, with compact boundary variables and
smooth positive compactified density, and y comparable to u near u=0. Let
v=c y^3+r(y), where |r^(k)(y)|<=C y^(4-k)(1+|log y|) for k=0,1.
Choose a smooth q with q=0 near 0 and q=1 for argument >=2, and set

  v_e=c y^3 + q(y/e) r(y).                              (1)

The cubic is retained exactly. The difference v_e-v is supported in y<2e,
and the conformal metric gives |df|_g <= C u |partial_y f| for radial f.
The cutoff product rule, including q'/e, yields

  |v_e-v| + |d(v_e-v)|_g
     <= C u^4 (1+|log u|) on the support.               (2)

For the transition u comparable to e this follows directly; where q is
constant, the remainder estimates give the same bound. Since the physical
volume is comparable to u^(-4)du dz, integration gives

  ||v_e-v||_2 + ||d(v_e-v)||_2
      <= C e^(5/2)(1+|log e|),                         (3)

and the supremum norm of the difference and its physical gradient is
O(e^4(1+|log e|)). The constants depend on the fixed collar and common
weighted bounds, not on e. Independently, |v|=O(u^3) and bounded interior
extensions give v in L2 intersect L-infinity. The same statements hold for
base b and directions u,v when each has the displayed common weighted
bounds and the same fixed interior extension. For approximants that also
smooth the field elsewhere, one must add their actual L2 and W1,infinity
errors; (3) does not assert a rate for an unspecified smoothing step.

Consequently, for these raw physical-side cutoffs, the L2 convergence and
uniform L-infinity conditions on the insertions in the joint contact note
hold, and the base-field W1,infinity convergence holds. The common local
higher-regularity, semigroup comparison, uniform finite-cut heat diagonals,
and physical trace identification remain independent hypotheses. Subject to
those hypotheses, the joint positive-time contact limit applies to these
profiles. Neither this check nor the contact estimate controls the individual
linear L1 trace: a nonzero cubic coefficient may still give logarithmic
volume divergence, as shown in `weighted-fields-physical-norms.md`.

No numerical run or Lean certificate is claimed.

Remaining to-do list: prove the uniform analytic and physical normalization
assumptions, handle the remaining vertices and proper-time regulator, resolve
prior art, prepare the manuscript, and certify supported claims in Lean on GCP.
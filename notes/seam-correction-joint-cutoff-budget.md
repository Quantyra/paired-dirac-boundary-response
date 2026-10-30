# Joint-cutoff budget for the seam corrections

This inserts the explicit cubic-field and RN-metric corrections into the
conditional bounds of `joint-model-conversion-finite-part-transfer.md`. It
checks their rates; it does not establish that the corrected auxiliary and
the physical source use the same operator or trace.

Let delta be the moved cut, e the field smoothing scale, and t the source
proper-time cutoff. Under the hypotheses of
`moving-cut-rn-metric-seam-correction.md` and
`moving-cut-cubic-seam-correction.md`, use the corrected even metric and
cubic/log fields with the same fixed periodic patch. Combine their collar
estimates with the uncorrected W1 and W3 cutoff rates. If the fixed patches,
interior extensions, coordinate identifications and all field derivatives
satisfy the cited uniform bounds, the differences can be bounded by

  eta <= C[delta+e^3(1+|log e|)],
  D <= C[delta^(1/2)+(delta+e)(1+|log e|)].             (1)

Here eta is the W1-sized form/insertion comparison parameter, including the
O(delta) metric correction and O(delta^2) cubic corrections. D is the
piecewise W3 coefficient/insertion distance, including the O(delta^(1/2))
metric correction. Neither symbol represents a heat time. Equality of the
coefficient coordinate, measure and physical source normalization is an
additional condition, not a consequence of (1).

Assume the complete unsubtracted model expression and its local subtraction
obey the conditional estimates from the finite-part transfer note, using
these same corrected data and common regulator:

  |J_eta(t)-J_0(t)| <= C eta^(1/4) t^(-3),
  |S_eta(t)-S_0(t)| <= C D(t^(-2)+t^(-1)+1).          (2)

The second bound allows for an unmatched leading inverse-square coefficient;
when exact cancellation has been established, its t^(-2) term can be removed.
For the example e=t^9, delta=exp(-4L/t), L>0, every term on the right of
(2) tends to zero. In particular the algebraic field term in the first bound
is O(t^(15/4)(1+|log t|)^(1/4)), the e/t^2 term is
O(t^7(1+|log t|)), and the delta terms decay exponentially despite any fixed
negative power of t. Thus the new W3 metric correction does not spoil this
specified sufficient model path.

The local coefficient note requires a single periodic coefficient and
insertions with its declared full-circle measure; the orbit response note
uses a half-orbit with a bolt. A fixed auxiliary patch and a common model
identification must be constructed and verified before asserting that (2)
applies to both sides of the physical conversion. Likewise, (2) alone does
not prove existence of the limiting subtracted expression or uniform
small-time remainder. The physical bundle map, source terms and finite
counterterms remain open. No numerical run or Lean certificate is claimed.

Remaining to-do list: establish the common operator and subtraction matching,
prove the limiting physical response, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
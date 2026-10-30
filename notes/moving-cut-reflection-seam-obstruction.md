# A seam-regularity obstruction for a naively reflected moving cut

This checks a missing compatibility in
`joint-model-conversion-finite-part-transfer.md`. It concerns a naive
reflection construction, not a proof that every auxiliary comparison fails.

Let f(y)=c y^3+r(y) for y>=0, with
|r'(y)|<=K y^3(1+|log y|), and consider a cut y=delta>0. If the physical
coefficient on y>=delta is translated to x>=0 and reflected evenly by the
most direct prescription, the two-sided coefficient is

  F_delta(x)=f(delta+|x|).                              (1)

Its one-sided derivatives at the new seam are

  F_delta'(0+)=f'(delta),  F_delta'(0-)=-f'(delta),
  [F_delta']_0=2 f'(delta).                             (2)

Distributionally, F_delta'' contains 2 f'(delta) delta_0. Hence if
f'(delta) is nonzero, F_delta is not W^(2,infinity) locally and cannot be
the W^(3,infinity) even coefficient assumed in
`compact-reflected-auxiliary.md` and
`conversion-local-coefficient-cutoff-rate.md`. For c nonzero,

  f'(delta)=3c delta^2+O(delta^3(1+|log delta|)),        (3)

so the jump is nonzero for all sufficiently small delta. The fact that its
magnitude tends to zero does not turn a delta distribution into an
L-infinity derivative at any fixed positive cut. If c=0, the weighted bound
alone does not decide whether the derivative vanishes.

The orbit product coefficient used for the actual metric and each scalar
variation must be checked independently: (1)-(3) apply to any one-sided
profile with the stated nonzero jet. For a generic smooth positive product
coefficient, the same conclusion follows whenever its normal derivative at
the moved cut is nonzero, regardless of the cubic example.

Thus one cannot justify the auxiliary W3 local-coefficient comparison by
simply translating the moved boundary and evenly reflecting its data while
preserving the entire physical profile up to that seam. A valid alternative
must either construct a modified collar profile with the required matching
and quantify the resulting heat/contact and subtraction errors, or use a
piecewise boundary theory that retains the new delta term and its coefficient.
The finite-cut half-orbit need not itself be reflected, and its independent
positive-time estimates are not invalidated by this observation.

In particular, the assumed common seam-preserving periodic construction in
the finite-part transfer remains unproved; the existing conditional rate
cannot be promoted to a physical finite-part theorem on the basis of naive
reflection. No numerical run or Lean certificate is claimed.

Remaining to-do list: construct and bound a compatible auxiliary or analyze
the induced seam term, identify the physical operator and regulator, resolve
prior art, prepare the manuscript, and certify supported claims in Lean on
GCP.
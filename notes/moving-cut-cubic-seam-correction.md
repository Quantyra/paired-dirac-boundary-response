# A small correction for a moved cubic seam

This constructs an even W3 auxiliary extension of a moved cubic profile,
addressing one obstruction in `moving-cut-reflection-seam-obstruction.md`.
It changes the profile near the moved seam and does not prove that the
physical heat response or its subtraction is unchanged.

Let f_e(y)=c y^3+r_e(y) on y>=0, with common weighted cutoff bounds through
order four, so |f_e'(delta)|<=C delta^2 and
|f_e^(4)(y)|<=C(1+|log e|) on the relevant smooth side. Assume common W3
bounds and smooth cutoff approximants. Choose a fixed smooth chi supported
in [0,2], equal to 1 near 0, and set ell=delta^(1/2). For x>=0 define

  g_delta,e(x)=f_e(delta+x)-f_e'(delta) x chi(x/ell).  (1)

Then g_delta,e'(0)=0, g_delta,e agrees with the translated physical field
for x>=2ell, and its even extension g_delta,e(|x|) has no first-derivative
jump. Its value and second derivative also match across the seam, so its
weak derivatives through order three are bounded on a fixed collar; its
third derivative may jump. A fixed even cutoff can patch it into a periodic
auxiliary with the same local regularity, subject to the usual matching of
periodic extensions and positivity where the profile is a metric coefficient.

For k=0,1,2,3 the correction term satisfies

  ||partial_x^k[f_e'(delta) x chi(x/ell)]||_infinity
       <= C delta^2 ell^(1-k).                          (2)

In particular its W1 norm is O(delta^2), and its W3 norm is O(delta) for
the chosen ell. On each side, the translation error through third order is
bounded by C delta(1+|log e|), using the common fourth-derivative bound.
Thus, relative to the even reference extension f_e(|x|),

  ||g_delta,e(|x|)-f_e(|x|)||_W3,infinity
        <= C delta(1+|log e|).                          (3)

The W3 norm in (3) is the essential-supremum norm of weak derivatives on
the fixed collar; the W3 membership follows from the matched jets just
noted. The same construction applies separately to cubic/log base and
direction profiles with their own coefficients. The rate is uniform only
under the stated common bounds. If an additional field smoothing error is
present it must be added to (3).

This does not preserve the translated physical profile on 0<x<2ell.
The O(delta^2) W1 change can be inserted into a form/semigroup comparison
when the other common-domain hypotheses hold, but its effect on all local
coefficients, contacts and physical source matching must be proved on the
same regulator. In particular a generic product metric coefficient may
have f'(delta)=O(1), for which this cubic rate and uniform W3 control do not
follow. Equation (3) therefore resolves only the stated cubic-field seam,
not the full operator/subtraction compatibility. No numerical run or Lean
certificate is claimed.

Remaining to-do list: analyze the product metric seam and physical collar
comparison, propagate correction errors through the full regulated response,
resolve prior art, prepare the manuscript, and certify claims in Lean on GCP.
# Why matched-collar locality does not transfer the flat bound

This checks the missing implication between `flat-conversion-weighted-uniform.md`
and `angular-weighted-locality.md`. It identifies a concrete curvature term
that must be handled before the flat endpoint estimate can be used for the
physical curved conversion. It is an audit of the stated assumptions, not a
Lean certificate or a proof of a new curved heat expansion.

The locality theorem compares a physical model with an auxiliary model
whose first-order expression, paired boundary domains, bundles and scalar
fields agree *exactly* on a common collar containing the insertions. Its
exponentially small error concerns changes outside that collar. The
auxiliary model constructed for this purpose retains the curved collar
coefficient; it is not the flat tangent plane unless that coefficient and
the required connection data actually agree with the flat model on the
collar. Matching merely a boundary value or finitely many jets does not
satisfy the locality hypothesis.

The frozen `current-variable-contact-conversion.md`, equation (5), records
for the curved contact a local term

    I_t(u,w) = (1/(4pi)) { ... - (t/6) integral R u w + ... }.

The flat contact in `flat-product-contact.md` has R=0. Thus, in a common
coordinate, density and insertion convention, the displayed curvature
contribution to the difference of the contacts is

    -t/(24pi) integral R u w.                                (1)

Multiplication by the source's 2 Theta'(t) weight gives

    -t Theta'(t)/(12pi) integral R u w
       = C/(12pi t) integral R u w + O(1),    C=2b0²,       (2)

using the angular estimate in `angular-weighted-cubic-log-seam.md`.
This isolates one coefficient in the stated source expansion; it does not
claim that the complete conversion has the divergence in (2), since its
geometric term, local subtraction, measure differences and other curvature
terms may cancel or change it. Nor is it a proof of the frozen curved
coefficient: that source expansion remains subject to its existing audit.

Equations (1)--(2) show why an exponentially small matched-collar locality
error cannot by itself identify the curved contact with the flat one. A
valid bridge must either retain and subtract the matching curvature-dependent
local terms and bound the resulting remainder, or prove a direct comparison
adapted to the actual difference of the collar coefficients. It must also
combine the smeared geometric variation with the contact before drawing a
conclusion about the conversion observable. The flat Taylor subtraction
alone does not establish that cancellation.

Conditional on the matched-collar hypotheses, the earlier locality result
still removes the effect of replacing the geometry away from the collar,
including the auxiliary far boundary and bolt, up to an exponentially small
weighted error. It does not establish the curved-to-flat step inside the
collar, the source's physical bundle identification or a uniform varying
atlas. The flat bound therefore remains useful as a tangent diagnostic, not
a bound for the complete curved conversion. No numerical computation is
needed for this implication check.

Remaining to-do list: prove the curvature-dependent local subtraction and
uniform remainder on the actual collar, match the physical regulator and
domains, decide novelty, prepare the manuscript, and certify in Lean on GCP.

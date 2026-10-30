# Locality bridge after the moved-seam correction

This assembles a conditional three-model comparison for the source conversion.
It explains how to use the seam correction without claiming that it agrees
with the physical coefficient near the cut. It does not prove the required
complex-family locality bound or the physical bundle/source identification.

Let P be the stipulated product-orbit finite-cut model with its translated
physical coefficients. Let P^c be the same orbit, Hilbert space and
first-order projector domain after replacing its outer-collar metric and
scalar fields by the corrected profiles of
`moving-cut-rn-metric-seam-correction.md` and
`moving-cut-cubic-seam-correction.md`. Let A^c be the compact reflected
auxiliary made from those corrected profiles and a fixed distant patch.
Choose their scalar insertions and coordinates so P^c and A^c agree exactly
on a common open collar containing their supports; this includes the region
where P and P^c differ. The distant patch and the physical bolt are not
identified. Their trace normalizations must be chosen consistently as in
`reflected-conversion-normalization.md`.

Assume the common-domain form and trace estimates of
`seam-correction-orbit-form-bound.md` and
`product-geometric-source-cutoff-rate.md` apply to P versus P^c. For the
RN and cubic corrections their form/insertion difference is bounded by
eta_c<=C delta (with the more precise direct form bound in the form note).
Thus at t=epsilon the difference of their *unsubtracted model conversion
expressions* is bounded by C eta_c^(1/4) epsilon^(-3), using the source
angular weights and the contact and geometric rates already derived.

For P^c versus A^c, the real contact locality result in
`fixed-seed-collar-contact-locality.md` gives, under its uniform collar,
trace and graph hypotheses, an error C t^(-N) exp(-c/t). To extend the same
statement to the geometric variations, additionally assume the uniform
complex-family locality estimate in `geometric-locality-vertex.md` on a
fixed disk, or prove an equivalent direct vertex estimate. Cauchy's formula
then yields the corresponding geometric error with the same exponential form.
Multiplication by the full angular factors, bounded by powers of t^(-1),
preserves exponential decay. This is an explicit extra hypothesis: real
contact locality alone does not imply differentiated locality.

The triangle inequality gives a conditional P-to-A^c error bounded by the
sum of the algebraic seam-correction error and a polynomial times exp(-c/t).
On delta=exp(-4L/epsilon), both vanish after the displayed angular weights,
provided the constants and common collar separation are uniform in the
field cutoff and cut. The auxiliary may match P^c on a fixed collar only if
its chosen patch and the moving-coordinate maps are constructed uniformly;
the source cutoff and all normalizations must be the same in the comparison.

This bridge retains both contact and geometric terms, but it does not prove
the complex-family estimate, account for local subtraction differences, or
show that the stipulated P is the physical source realization. Correcting
P is a comparison device, not a change to the physical geometry. No
numerical run or Lean certificate is claimed.

Remaining to-do list: prove complex-family or direct geometric locality,
construct uniform common collars and physical maps, match subtractions and
the regulator, resolve prior art, prepare the manuscript, and certify
supported claims in Lean on GCP.
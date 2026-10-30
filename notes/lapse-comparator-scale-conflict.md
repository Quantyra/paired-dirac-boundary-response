# Scale conflict in the shrinking-lapse trace comparison

This checks whether the two currently available sufficient bounds can be
combined to remove the heat cutoff. It concerns the proposed auxiliary
method, not the truth or falsity of the physical response theorem, and is
not Lean-certified.

In `lapse-comparator-trace-bound.md`, the compact d-dimensional comparator
trace-norm error is bounded by

    C1 ell² t^(-d/2).                                       (1)

To make this bound vanish along a joint path ell,t->0 requires
ell²/t^(d/2)->0. A standard shrinking-collar locality bound of the type
`euclidean-collar-cutoff-comparison.md`, if proved with separation
rho ell and constants independent of ell, instead has the form

    C2 ell^(-a) t^(-N) exp[-c ell²/t],                       (2)

where rho,c>0 and a,N are fixed nonnegative powers accounting for cutoff
derivatives and heat factors. Such uniform constants and the actual power a
remain hypotheses. A sufficient condition for (2) to vanish is
ell²/t dominating the logarithms of 1/ell and 1/t. In particular that
condition requires ell²/t->infinity.

For d>=2, (1)'s vanishing condition gives

    ell²/t = (ell²/t^(d/2)) t^(d/2-1) -> 0.                (3)

Thus the two simple sufficient strategies conflict: (1) asks ell²/t to
vanish (or faster in d>2), while the standard exponential-locality
strategy asks it to diverge. This conclusion is already present for the
two-dimensional orbit trace, d=2. For d<2 the powers need separate analysis.

This is a limitation of the *bounds and proof route*, not a no-go theorem
for a sharper comparison. An upper bound that fails to vanish need not be
sharp; the localized insertion may supply powers of ell, subtractions may
cancel leading terms, and a different comparator or ordered limit may avoid
the conflict. Conversely one cannot claim a joint physical limit merely by
choosing ell small and invoking both displayed estimates. The lapse
comparator changes the operator outside the collar, so the missing
physical-to-comparator step cannot be dropped.

The possible cutoff-order alternatives must retain the actual angular and
thermal normalization and prove convergence of the subtracted coefficients.
The endpoint conversion and P1-D's proper-time integrand are different
observables; this calculation proves neither. No numerical computation is
used.

Remaining to-do list: obtain sharper localized/subtracted comparison or a
justified ordered limit, verify physical domains and regulator, decide
novelty, prepare the manuscript, and certify supported claims in Lean on GCP.

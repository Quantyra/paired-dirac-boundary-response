# Rough H³ insertions in the periodic quadratic bridge

Status: ordinary periodic model estimate, subject to review and not
Lean-certified. It strengthens [the shifted-insertion calculation](bridge-shifted-insertion.md)
to H³ insertions, including the regularity of a localized even cubic seam.
The nonlinear prefactors and physical paired boundary remain outside this
result.

## Claim

For real 2π-periodic f,u,v∈H³, let ξ be the centered Brownian bridge with
covariance 2(min(α,β)−αβ), and define B_h and Q_{u,v} exactly as in the
shifted-insertion note. There is a finite universal constant C such that

    sup_{h∈R} |Q_{u,v}^(6)(h)|
       ≤ C ||u||_{H³} ||v||_{H³} ||f||_{H³}².             (1)

Q_{u,v} is even and C⁶, so its Taylor remainder after the h⁴ term is at
most |h|⁶/720 times the right side. The H³ norms are on the full periodic
line and include all cutoff transitions. This result requires no finite
fourth-weight Fourier ℓ¹ norm for the cubic directions.

## Frequency estimate

For finite Fourier sums, the same Gaussian calculation as before gives a
sixth-derivative majorant proportional to

    Σ_{m+n+k+l=0} |u_m v_n f_k f_l| |kl|
                       (|k|+|l|+|n|)⁴.                  (2)

The proportionality constant includes the finite supremum of the sixth
derivative of s²e^(−s²) and the three bridge-time integrals. It is uniform
in h and uses no angular or frequency truncation.

Write w_p=1+|p|. Among the four weights w_m,w_n,w_k,w_l let K be the
largest and L the second largest. Frequency conservation gives K≤3L: the
absolute value of the largest frequency is at most the sum of the other
three. Also |k|+|l|+|n|≤3K. Choose one pair attaining K,L, with a fixed
tie-breaking rule. Then

    |kl| K⁴ ≤ 9 K³ L³ × product of w_p over f-factors
                                      outside the chosen pair.           (3)

To verify (3), distinguish whether zero, one or both of k,l are in the
chosen pair. If both are in it, |kl|≤KL and K⁵L≤9K³L³. If one is in it,
retain the other f weight explicitly; the remaining K⁵ is at most
9K³L²≤9K³L³. If neither is in it, retain both f weights and use
K⁴≤9K²L²≤9K³L³. These estimates also cover ties and zero frequencies.

There are six possible chosen pairs. For each pair, give each chosen
Fourier coefficient the weight w³ and give each unchosen f coefficient
weight w; unchosen u or v coefficients need no weight. For fixed values of
the two unchosen frequencies, the conservation relation determines the
sum of the chosen frequencies. Cauchy–Schwarz bounds the sum over that
pair by the product of the two weighted ℓ² norms. Sum the remaining two
frequencies in ℓ¹. The elementary inequality

    Σ_p w_p |g_p| ≤ (Σ_p w_p^(−4))^(1/2) (Σ_p w_p⁶|g_p|²)^(1/2)

and its unweighted version bound each unchosen factor by its H³ norm.
Summing the six pair estimates proves (1) for finite Fourier sums. These
same absolute majorants control Fourier tails, so truncations converge
uniformly in h for sixth derivatives and locally uniformly for lower
derivatives. This extends the C⁶ statement to H³. Reflection ξ→−ξ makes Q
even, and Taylor's integral formula gives the h⁶ remainder.

## Relation to the paper

A localized even |y|³ profile belongs to H³ on the periodic double; it
need not satisfy the earlier ℓ¹ fourth-derivative Fourier condition. Thus
(1) removes that particular mismatch for the isolated quadratic bridge
term, without smoothing away the cubic. Uniform application to a family
still requires a proved bound of the periodic H³ norms in terms of the
paper's physical-side norms and cutoff data.

The nonlinear A_h^(−1/2) and full exponential, their correlations with
insertions, half-boundary terms, thermal images and common-regulator limit
are not handled. In particular (1) does not prove the proposed curved
mixed-response estimate. No numerical check replaces this all-frequency
argument.

Remaining to-do list: verify the H³ norm mapping, control the coupled
nonlinear bridge and physical boundary, resolve the regulator and domain
hypotheses, complete the novelty audit, and certify supported claims on GCP.

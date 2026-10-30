# Localized heat convergence in Hilbert–Schmidt norm

Status: ordinary positive-time result for the separated changing-cut model
with angular heat smoothing and a bounded radial insertion supported away
from the endpoint. It builds on [the local heat bound](localized-radial-heat-bound.md)
and [strong heat convergence](changing-cut-heat-strong.md). It is not an
unsmoothed physical trace or Lean certification.

## Statement

Assume the bounded real W^{1,∞} radial coefficient, complete discrete
angular tower and local cut realizations in those notes. Let u∈L∞ have
compact support in the interior of the full radial half-line, at positive
distance from its outer endpoint. For t,τ>0, define on the fixed full space

    B_ℓ(t)=M_u J_ℓ* e^(-tH_ℓ²/2) J_ℓ e^(-τA²),
    B(t)  =M_u e^(-tH²/2) e^(-τA²).

Then ||B_ℓ(t)-B(t)||₂→0 as ℓ↓0. In particular, the trace-class operators
B_ℓ(t)*B_ℓ(t) converge to B(t)*B(t) in trace norm, and their traces
converge. All angular eigenspaces, including zero modes, are included.

## Fixed angular mode

Fix μ. For sufficiently small ℓ, the support of u lies a fixed distance
inside the cut. Choose a bounded interval I and χ∈C_c^∞(I) with χ=1 on
supp(u), such that I lies strictly inside every retained half-line for all
such ℓ. The heat factor maps L² uniformly into the first-order domain:

    ||H_μ e^(-tH_μ²/2)|| ≤ (e t)^(-1/2),
    ||∂x e^(-tH_μ²/2)|| ≤ (e t)^(-1/2)+|μ| ||a||∞.

The same bounds hold on every cut. Hence χ times each embedded heat factor
is uniformly bounded from L² into H¹(I). The compact embedding
H¹(I)→L²(I) is in Schatten class S_p for every p>1, so
M_u times the heat factors have uniformly bounded S_p norms for any
1<p<2. Multiplication by bounded u acts after the embedding.

The same local H¹ bound makes the family of M_u times the heat factors
collectively compact in output L²: the image of the unit ball is contained
in the bounded multiplier image of a relatively compact set. Strong
convergence of the heat factors and their adjoints gives strong convergence
of these localized operators and their adjoints. Collective compactness
plus strong adjoint convergence implies convergence in operator norm: a
counterexample would have output vectors with a convergent subsequence,
whose inner products with every fixed vector tend to zero. The full-limit
operator is compact by the same argument.

For the difference X_ℓ, the uniform S_p bound and singular-value
interpolation give

    ||X_ℓ||₂² ≤ ||X_ℓ||^(2-p) ||X_ℓ||_p^p → 0.

This proves Hilbert–Schmidt convergence for each fixed angular mode,
including its finite degeneracy.

## Complete angular sum

The local heat bound gives a cut-independent summable majorant for the
squared Hilbert–Schmidt norms, proportional to
exp(-2τμ²+tG|μ|) times the mode multiplicity. The limit operator has the
same bound. The triangle inequality bounds each squared difference by twice
the sum of the two squares. Dominated convergence over the discrete tower
therefore proves the claim with no angular cutoff. Finally,

    ||B_ℓ*B_ℓ-B*B||₁
       ≤ (||B_ℓ||₂+||B||₂) ||B_ℓ-B||₂ → 0.

## Scope

The insertion is radial, bounded and supported a positive distance from the
outer endpoint. The angular heat factor is essential to the stated tower
majorant. No conclusion here removes it, controls t↓0, includes a varying
metric derivative or identifies the physical Euclidean bundle and trace
normalization. The assumptions also require the cut model's first-order
and square domains to be the ones already specified. No numerical
calculation is used.

Remaining to-do list: extend to the physical boundary-supported response and
common regulator; verify bundle and domain identifications; complete the
novelty audit and Lean certification.

# Heat-smoothed inhomogeneous collar source

Status: a fixed-positive-time angular smoothing estimate for the source term
in [the inhomogeneous collar identity](finite-cut-inhomogeneous-transport.md).
This is an operator bound for that term, not the full resolvent comparison,
a common-regulator theorem, or a Lean certificate.

## Statement and proof

In the separated collar setting of that identity, let A be the self-adjoint
magnetic sphere Dirac operator, ℓ the collar length, δ=∫|a|, and z∈ℂ.
Let K_z map a collar source f to the affine boundary contribution

    K_z f = -∫[x₀,x₁] V(x₀,s)iσ₂ f(s) ds.

For every τ>0, applying an angular heat multiplier to the source gives

    ||K_z e^(-τ A²)||_(L²(collar)→L²(boundary))
       ≤ sqrt(ℓ) exp[|z|ℓ + δ²/(4τ)].                 (1)

Here the heat multiplier acts on the angular variable and leaves the radial
and two-component spin variables unchanged. In each angular mode μ, the
inhomogeneous transport bound is sqrt(ℓ) exp(|μ|δ+|z|ℓ); multiplying by
exp(-τμ²) and completing the square gives

    |μ|δ-τμ² ≤ δ²/(4τ).

Taking the supremum over modes proves (1), including zero modes and all
multiplicities. This estimate does not require any angular cutoff. For the
classical RN collar of [the preceding note](rn-cut-smoothed-transport.md),
ℓ,δ=O(R⁻¹); hence for fixed τ>0 and bounded z the right side is O(R^(-1/2)).

The unsmoothed K_z need not be bounded uniformly across modes under this
estimate: the exponential propagation bound grows in |μ|. The factor
exp(δ²/(4τ)) is finite at each τ>0 but is not a uniform estimate as τ→0
with δ fixed. Its appearance reflects the chosen simple propagation bound;
it is not a claim that the true resolvent has this divergence.

## Relation to a resolvent

For a physical source restricted to the excised collar, (1) controls its
contribution to the cut boundary value after a specified angular heat
smoothing. The full solution still includes the homogeneous boundary line,
the interior response to the resulting boundary data, and the source
inside the retained region. To combine these estimates one needs bounded
interior Poisson/trace maps in matching spaces and a common-Hilbert-space
identification. The smoothing must arise from the actual observable or be
removed with a separate uniform bound; it cannot simply be inserted into
an unregularized resolvent. The τ→0, thermal, angular and proper-time
limits remain separate obligations.

No numerical computation is needed for the completed-square estimate.

Remaining to-do list: prove the interior boundary-to-solution estimates and
the physical regulator limit; verify the global copy map; complete the
response and novelty audits; and certify supported claims in Lean on GCP.

# Scalar-potential and Clifford components of the flat first vertex

Status: ordinary smooth flat full-plane calculation using the same rank-two
and Fourier conventions as [the first-vertex kernel](flat-first-vertex-kernel.md).
It resolves the trace-level decomposition of two specific vertex pieces; it
does not resolve the scalar-jump source discrepancy, the physical folding,
rough limits, novelty or Lean certification.

## Decomposition before Gaussian integration

For the Fourier transfer k in the normal direction, the first variation
V_u has four terms:

    principal: -2(p_y²+p_τ²),
    scalar first order: -2kp_y,
    scalar potential: -k²/2,
    Clifford: -k p_τ Γ,

multiplying û(k), with the reverse transfer changing the signs of k in the
corresponding vertex. The first three scalar terms combine to -S as in the
first-vertex note. Since tr Γ=0, every product with exactly one Clifford
factor has zero spin trace. The Clifford–Clifford product contributes
+2k²p_τ² to the rank-two spin trace because Γ²=-I. The scalar-potential
pair contributes 2(k⁴/4)=k⁴/2 to that trace. All remaining scalar products
are grouped below as the principal/first-order remainder; no individual
term is discarded.

## Exact form factors

Let x=tk², a=α(1-α), and

    A(x)=∫₀¹ e^(-a x)dα.

The two ordered Duhamel terms, together, have the t²∫₀¹dα weight explained
in the first-vertex note. Since
∫ d²P/(2π)² exp(-tP²)=1/(4πt) and the normalized Gaussian average of
P_τ² is 1/(2t), their scalar-potential pair and Clifford pair have
multipliers

    H_pot(t,k) = [x²/(8πt)] A(x),
    H_Γ(t,k)   = [x/(4πt)] A(x).                           (1)

The Clifford contribution is nonnegative for real profiles after pairing,
though its effect on a locally subtracted seam coefficient depends on the
subtraction. Cross terms with one Γ vanish before any angular integration.
The exact first-vertex multiplier from the prior note is

    H_first=(1/(2πt))∫₀¹e^(-a x)
        [8+(4(1-2α)²+1/2)x+((1-2α)⁴/4)x²]dα.

Subtracting (1) gives the complete remainder containing the principal,
scalar first-order and their cross terms, including their cross terms with
the scalar potential. This subtraction is exact at every real k and t>0;
it does not claim a decomposition invariant under field or coordinate
transformations.

## Relation to the scalar comparator

H_pot is precisely the rank-two, mixed-derivative quadratic Duhamel kernel
for the isolated potential V_u=(1/2)u'' in the same full-plane convention.
For u=c_u|y|³ near the seam its potential has the first-derivative jump
already analyzed in [the scalar normalization audit](scalar-jump-normalization-audit.md).
The difference between H_first and H_pot contains the explicit Clifford
kernel H_Γ as well as all remaining scalar differential vertices. The
local second vertex must then be added to recover the complete Dirac
response; it is calculated separately in [the second-vertex note](flat-second-vertex-trace.md).

This calculation connects the candidate to known scalar all-frequency
form factors but does not resolve the published scalar jump normalization
or show that the remaining Dirac contribution is novel. The physical-half
and per-exterior factors, thermal trace, rough seams and common regulator
are separate. No numerical computation is needed.

Remaining to-do list: evaluate the grouped non-potential seam contribution,
resolve the benchmark and physical normalization, complete the novelty and
response audits, and certify supported claims in Lean on GCP.

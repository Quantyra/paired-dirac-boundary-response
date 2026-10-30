# Unsmoothed moving-cut contact for the classical RN reference

Status: ordinary fixed-positive-time result in the separated canonical
RN-AdS half-line model, under the stated local-projector and angular-sector
identifications. It applies the conditional [local angular bound](local-angular-decay.md)
to remove the additional angular heat factor from the changing-cut contact.
It does not identify the full Euclidean physical trace, prove a curved
regulator limit, or supply a Lean certificate.

## Checking the radial hypotheses

Write the pinned reference metric as

    f(r)=1+r²/L₄²-2M/r+Q²/r²,
    dx/dr=1/f(r),       a(x)=sqrt(f(r))/r,

on the exterior r>r_+, with f>0, x→-∞ at the horizon and x→0 at
conformal infinity. Differentiation in x gives

    a'/a = f'/2-f/r = -1/r + 3M/r² - 2Q²/r³.             (1)

Hence |a'|≤Ca globally, for example with
C=1/r_+ +3|M|/r_+²+2|Q²|/r_+³. The coefficient a is bounded, tends to
1/L₄ at infinity and tends to zero at the horizon. Every compact K in the
canonical half-line, including a set touching x=0, has a relative
d-neighborhood on which a is bounded below by a positive a₀. These are
fixed-reference statements; no uniformity over a family of parameters is
claimed.

## Cut limit with no added angular heat factor

Let u,v be bounded radial L² functions supported in a common compact K of
the canonical half-line; K may touch x=0. Let T_ℓ and T be the cut and
full heat operators of the separated H² model, zero embedded on a common
full space as in the earlier cut notes. For fixed t>0, define

    I_ℓ(t)=∫₀ᵗ Tr[M_u T_ℓ(t-s) M_v T_ℓ(s)] ds,
    I(t)  =∫₀ᵗ Tr[M_u T(t-s) M_v T(s)] ds.              (2)

Then I_ℓ(t)→I(t) as the cut approaches x=0. Here the trace includes the
full discrete angular tower, its multiplicities and zero modes. The result
uses no auxiliary exp(-τA²) factor.

## Proof

For each mode, localized heat convergence in Hilbert–Schmidt norm follows
from the fixed-mode part of [the localized convergence proof](localized-heat-hs-convergence.md).
If the support reaches the endpoint, approximate u and v in L² by bounded
insertions supported a positive distance inside; the modewise local heat
bound in [the angular-decay note](local-angular-decay.md) makes this
approximation uniform in the cut. Thus each mode converges at positive heat
time.

The same angular-decay note bounds the squared Hilbert–Schmidt norm of a
localized heat half-factor by a constant times ||u||²₂ times

    r^(-1/2) exp(C²r/2)
      [exp(-μ²a₀²r/4)+2 exp(-d|μ|a₀/(2√2))].          (3)

The monopole sphere is compact and its angular counting function is
O(1+Λ²), so the sum of (3) over the full angular spectrum is bounded by
C_K exp(C²r/2) r^(-1/2)(1+r^(-1)) for 0<r≤t. Consequently, for bounded
L² insertions, the Hilbert–Schmidt factorization of
[the smoothed contact proof](changing-cut-smoothed-contact.md), now with
Q=I, bounds the contact integrand in trace norm by

    C_(K,t) ||u||₂||v||₂
      [r^(-1/4)+r^(-3/4)] [s^(-1/4)+s^(-3/4)],      (4)

where r=t-s. This is integrable for 0<s<t and uniform in the cut. The
modewise Hilbert–Schmidt convergence and the summable majorant (3) give
full-tower Hilbert–Schmidt convergence for each positive r. The same
factorization and strong convergence of the remaining heat factor give
trace-norm convergence of each interior integrand. Dominated convergence
with (4) proves (2), including both endpoint neighborhoods.

## Scope

This establishes a model contact trace for fixed t on the classical RN
reference, not the full physical four-dimensional Euclidean contact: the
spin/bundle and sector identification, thermal trace, physical-half
normalization and relation between this Hamiltonian square and the
paper's tangent operator remain to be proved. The constants in (4) are not
uniform as t↓0 and do not establish the common-regulator or curved
subtraction limit. No numerical computation is used.

Remaining to-do list: match the physical paired contact and geometry,
control the short-time regulator and full response, complete novelty review,
write the supported manuscript, and certify its claims in Lean on GCP.

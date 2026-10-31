# Contact observable matching: canonical Hamiltonian versus product-frame heat

Status: source-to-operator comparison at the pinned commit, not a proof of
physical equality, a novelty verdict or Lean certification. It records why
[the unsmoothed RN cut result](rn-unsmoothed-cut-contact.md) cannot yet be
substituted into [the common-regulator conversion](tangent-regulator-normalization.md).

## Two different operators

The RN cut result treats, for each sphere Dirac eigenvalue μ, the canonical
Lorentzian-time Hamiltonian

    H_μ=-iσ₂∂_(x*)+μ a(x*)σ₁,
    H_μ²=-∂_(x*)²+μ²a²-μa'σ₃,       a=sqrt(f)/r.

Its contact uses exp(-tH_μ²) and sums the eigenvalue multiplicities in
the trace. The norm and trace use the canonical radial half-density and a
local first-order projector at each specified cut. This is a valid declared
operator problem, but the angular eigenvalue enters the variable radial
potential.

The pinned [conformal-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md),
section "Exact product separation and the proper Euclidean gap", instead
uses the Euclidean fixed-sphere product frame and records

    L₄=L₂⊗1+1⊗D_(S,q)²/b²,

with orbit domain independent of the sphere eigenspace. The Euclidean
orbit operator includes the thermal circle and the regular bolt. The
[variable-contact conversion](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md)
defines I_t using K_t=exp(-tL₂), and separately supplies the angular factor
Θ'(t) in the complete cutoff identity. The actual action further uses its
specified physical-half and time-reduced normalization.

Thus the canonical H_μ² contact already includes μ in its operator and
angular sum, whereas the source's I_t is an orbit trace before multiplying
by Θ'(t). Multiplying the former by Θ or Θ' would count a different object
and can double-count angular information. The finite-cut canonical H²
result does not by itself prove the product-frame orbit I_t, its thermal
trace, or the mixed response J''_t.

## Why the conformal change needs a proof

At a finite cut the pinned conformal-domain note states the Dirac conformal
covariance and the transformation of the boundary realization. That is a
relation between first-order operators and weighted spinor spaces, not by
itself a unitary equality of heat semigroups for their squares at the same
proper time with the *bare product-frame square*. The finite-cut unitary map
does give an exact equality with the transported full-Weyl square
`P^*P=(E D_hat E)^*(E D_hat E)`, including its actual composition domain and
physical density; see [`physical-product-contact-operator-gap.md`](physical-product-contact-operator-gap.md).
That square is the one used in P1's full-Weyl mode response, not the orbit
operator used in the variable-contact conversion. The four-dimensional
conformal factor `r/b` is unbounded as the cut tends to infinity, so
finite-cut bounded multiplier arguments alone do not provide a uniform
outer-limit heat-trace comparison. A full comparison must still specify the
transformed square domains, coincidence vertices, thermal modes and common
cutoff, and relate the full-Weyl observable to the conversion and canonical
Hamiltonian trace.

Likewise, a canonical Hamiltonian trace is integrated over a Lorentzian
spatial radial Hilbert space, while the Euclidean product-frame orbit trace
contains a periodic time coordinate and a regular interior bolt. A direct
spectral relation would need its actual time-dependent metric coefficients
and boundary/bolt conditions; formal time separation alone does not supply
it. The canonical RN estimate is therefore supporting analysis for a
separate operator and cannot be used as evidence of the target response
without this bridge.

## Implication for the paper

The positive-time RN result is useful for an explicitly stated canonical
cut comparison, and its local angular-killing method may inform a direct
Euclidean estimate. The paper's target remains the paired product-frame
orbit contact and its geometric variation, including Θ, Θ', the half-trace
factor, zero-mode allocation and complete regulator subtraction. No
numerical computation can replace the operator/domain identification.

Remaining to-do list: prove the Euclidean product-frame contact and its
physical cut/bolt matching directly or provide a precise justified bridge;
complete the full response, novelty audit, manuscript and GCP Lean work.

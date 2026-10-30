# Smoothed two-insertion contact convergence at a moving cut

Status: ordinary positive-time result for the separated half-line model. It
uses the boundary-reaching Hilbert–Schmidt convergence and retains both
integration endpoints by an integrable bound. Angular heat smoothing is
explicit; this is not the physical common-regulator response or a Lean
certificate.

## Statement

Use the full/cut model and assumptions of
[the boundary-reaching note](boundary-reaching-heat-convergence.md). Let
u,v be bounded radial L² functions, possibly nonzero at the endpoint. For
τ,t>0 put Q=exp(-τA²), let T_ℓ(r) be the zero-embedded cut heat operator
for H_ℓ², and T(r) the full heat operator. Define

    I_ℓ(t)=∫₀ᵗ Tr[M_u T_ℓ(t-s) M_v T_ℓ(s) Q²] ds,
    I(t)  =∫₀ᵗ Tr[M_u T(t-s) M_v T(s) Q²] ds.            (1)

The integrals are defined through trace-class products for 0<s<t; endpoint
values do not affect the integral. Then I_ℓ(t)→I(t) as the cut approaches
the endpoint. The full angular tower and zero modes are included.

## Trace bound

Write r=t-s. The heat semigroup property on the retained subspace, the
commutation of Q with radial multipliers and separated heat operators,
and Schatten Hölder give the exact factorization

    M_u T_ℓ(r) M_v T_ℓ(s) Q²
      =[M_u T_ℓ(r/2) Q]
       [T_ℓ(r/2) M_v T_ℓ(s/2) Q] T_ℓ(s/2).

For r,s>0, the first bracket is Hilbert–Schmidt by the local radial heat
bound; the second is Hilbert–Schmidt because the heat factor on its left
is bounded and M_v T_ℓ(s/2)Q is Hilbert–Schmidt. The last factor is a
contraction. Let

    Z_t=Tr_sphere exp(-2τA²+tG|A|),
    C_t=(2/√π)^(1/2) Z_t^(1/2).

For 0<r,s≤t the local bound yields

    ||M_u T_ℓ(r) M_v T_ℓ(s) Q²||₁
       ≤ C_t² ||u||₂ ||v||₂ (rs)^(-1/4).                (2)

The right side is independent of the cut, includes all angular
multiplicities and is integrable in s on (0,t). The same bound applies to
the full operator. It is not a bound uniform as t or τ tends to zero.

## Limit

For fixed 0<s<t, the first localized Hilbert–Schmidt factor converges by
the boundary-reaching result. The factor M_v T_ℓ(s/2)Q also converges in
Hilbert–Schmidt norm; strong convergence and uniform boundedness of
T_ℓ(r/2) transfer that convergence to the second bracket. The final heat
factor converges strongly. A fixed trace-class operator multiplied by a
uniformly bounded strongly convergent sequence converges in trace norm
when the adjoints also converge strongly; this holds for the self-adjoint
heat factors. A telescoping product therefore gives trace-norm convergence
of the integrands for each 0<s<t. Dominated convergence using (2) proves
(1), without dropping either endpoint neighborhood.

## Physical scope

The extra Q² is an explicit angular regulator in this model. The physical
source's contact term uses its own angular/thermal normalization and common
proper-time regulator; identifying or removing Q² requires additional
bounds, including the full geometric variation and contact contributions.
The model also assumes the separated self-adjoint domains and their bundle
identification. The result does not establish the short-time curved
remainder or a wormhole claim. No numerical calculation is used.

Remaining to-do list: match the physical contact and geometry, remove or
justify the extra angular regulator, complete the novelty audit and certify
the supported paper claims in Lean on GCP.

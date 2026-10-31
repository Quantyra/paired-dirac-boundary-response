# Vanishing of the local Weyl boundary Hessian for cubic/log directions

Status: ordinary consequence of the exact finite-cut boundary functional in the pinned source, for two Weyl variations at fixed product-frame background. It is not a determinant-limit theorem, a boundary-ensemble choice, or Lean certified.

## Source formula and claim

Use the total parity-even local boundary functional in the finite-cut source note `stationary-exterior-boundary-weyl.md`, equation (7), with its notation

    W_partial,total = 4 pi b0^2 P_f integral dU N Ccal,
    Ccal = sigma A(a,a')
      - 6 a' s - (24/7) a^2 s - 6 a s'
      - (96/7) a s^2 - 18 s s' - (85/21) s^3,
    A(a,a') = 12 a a' + 44 a^3/7 + 10 a Y,
    s = partial_x sigma,  a = partial_x N/N,  Y=b0^(-2).

The product-frame background `N`, `a`, and `Y` are held fixed along the two Weyl directions. Let the moving cut approach the conformal boundary at collar distance `epsilon`, with `N` and `a` uniformly bounded there and the background obeying `s=O(epsilon^(-1))`. These conditions hold in the stated smooth RN compactified collar, where `B(0)>0` and `sigma=-log(u)`.

Let `eta` and `zeta` be two real Weyl directions satisfying, for a fixed finite logarithmic weight,

    |partial_x^j eta| + |partial_x^j zeta|
       <= C_j epsilon^(3-j) (1+|log epsilon|),  j=0,1,2,

on the cut. If the Paper 1 direction is the Weyl field in this finite-cut family and its collar coordinate is related to the admitted physical-side coordinate by a uniformly smooth nondegenerate change (`x = c y + O(y^2)`, `c != 0`), then the admitted jets `c_3 y^3 + d_4 y^4 log y + r`, with the source's weighted remainder bounds, satisfy this condition. That coordinate and field identification is an explicit hypothesis to verify. Under it, the mixed Hessian of the local boundary functional tends to zero, with bound

    |delta_eta delta_zeta W_partial,total|
       <= C epsilon^3 (1+|log epsilon|)^2 -> 0.

The constant may depend on the fixed log weight, collar bounds, period, and direction norms. This is a boundary-local statement; it does not bound the bulk trace response.

## Ordinary calculation

Only the quadratic and cubic terms in `s` contribute to the mixed Hessian. Direct differentiation at fixed `N,a,Y` gives

    delta_eta delta_zeta Ccal
      = -(192/7) a eta' zeta'
        - 18(eta' zeta'' + zeta' eta'')
        - (170/7) s eta' zeta'.

The `sigma A` term is linear in `sigma`; the terms linear in `s` and `s'` have zero second variation. The displayed remainder is therefore exact, not a truncation. At the cut,

    eta', zeta' = O(epsilon^2 L),
    eta'', zeta'' = O(epsilon L),
    s = O(epsilon^(-1)),
    L = 1+|log epsilon|.

Each term is `O(epsilon^3 L^2)` or smaller. Multiplication by the bounded `N` and integration over the fixed thermal circle preserve the bound. If the directions are specified by smooth physical-side approximants, apply the calculation at each finite cut and pass to the same weighted-jet bounds; no reflected smooth cubic extension is used.

## Scope and implication for Paper 1

This removes one specific possible missing term conditionally: the local anomaly/conversion boundary Hessian vanishes in the outer-cut limit for cubic/log Weyl directions if the stated collar coordinate and Weyl-field identification with P1-C are verified. The result uses the **total** finite-cut boundary functional, including all conversion fluxes; dropping those fluxes before differentiating would not justify the formula.

It does not specify an independent physical mouth ensemble, prove equality of the physical and product-frame nonlocal determinants, control a common proper-time regulator, or establish the uniform subtracted curved mixed-trace remainder. It also does not cover variations that change `N` or the boundary data, or arbitrary boundary jets. The first unsupported response implication therefore remains the full source/observable identification plus its nonlocal regulator estimate, not this local boundary Hessian.

Source: the frozen finite-cut derivation at `Quantyra/quantyra-wormhole-semiclassical`, `notes/stationary-exterior-boundary-weyl.md`, especially equations (6)-(8), and its conformal compactification in `notes/stationary-exterior-conformal-domain.md`. No numerical computation or Lean invocation is required for this algebraic boundary estimate.

Remaining to-do list: verify this boundary estimate against the exact P1-C parameterization and its cutoff path; then close the nonlocal observable identification, common-regulator/curved-trace and novelty audits, and certify the supported paper claims on GCP.

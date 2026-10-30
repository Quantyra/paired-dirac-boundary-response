# RN asymptotic collar and heat-smoothed boundary transport

Status: an ordinary bound for the pinned classical RN-AdS asymptotic collar,
combined with the separated boundary-line transport estimate. This is not a
physical changing-cut resolvent or regulated response theorem, and has not
been Lean-certified.

## Collar length in the source coordinate

The pinned [RN higher-mode source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/rn-higher-mode-boundary-spectral-control.md)
uses dx_*/dr=1/f(r), x_*=0 at conformal infinity, and the angular
coefficient a(x_*)=sqrt(f(r))/r. Its reference metric has

    f(r)=r²/L₄²+1-c/r+d/r²

for fixed finite coefficients c,d and L₄>0. For sufficiently large R₀,
f(r)≥r²/(2L₄²)>0 for every r≥R₀. If the finite cut is at R≥R₀, put

    ℓ_R=∫[R,∞) dr/f(r),
    δ_R=∫[R,∞) dr/[r sqrt(f(r))].

Both integrals converge, and direct comparison yields

    ℓ_R ≤ 2L₄²/R,       δ_R ≤ sqrt(2)L₄/R.              (1)

These are fixed-geometry asymptotic bounds. R₀ and the constants are not
asserted uniform over a varying family of RN parameters. The source's
radial half-density convention is essential: (1) concerns the canonical
coefficient and tortoise distance, not proper distance to infinity.

## Angular heat smoothing

Let A be the self-adjoint magnetic sphere Dirac operator and P_(R,z) the
direct sum of transported zero-angle lines for the separated collar
problem in [the spectral transport note](finite-cut-spectral-transport.md).
Let P₀ be the corresponding endpoint projection, s>0 and C=2(e-1). Applying
the modewise estimate to the angular spectral multiplier gives

    ||(P_(R,z)-P₀)e^(-s A²)||
       ≤ C [δ_R / sqrt(2 e s) + |z| ℓ_R].             (2)

Indeed sup_(u≥0) u exp(-s u²)=1/sqrt(2es), and the projection difference
is block diagonal in the angular eigenspaces. For the trace norm, split the
heat factor in half and use the trace-class ideal property:

    ||(P_(R,z)-P₀)e^(-s A²)||₁
       ≤ C [δ_R / sqrt(e s) + |z| ℓ_R]
           · Tr_boundary exp[-(s/2) A²].                (3)

The boundary trace includes the finite two-component radial factor and all
angular multiplicities, including zero modes. It is finite for fixed s>0
on the compact sphere. Inserting (1) makes both bounds O(R⁻¹) for each fixed
s>0 and bounded z.

## What the estimate permits

This gives explicit high-angular-mode control after inserting a specified
sphere heat factor. It does not justify inserting that factor into an
arbitrary physical resolvent or trace, prove equivalence of domains on a
changing manifold, or control an unbounded spectral contour. The factor
Tr exp[-(s/2)A²] and s^(-1/2) are not uniform as s tends to zero; the
common proper-time regulator and its subtractions require separate estimates.
Nor does the source's classical RN asymptotic alone establish uniform
constants for the full rough metric family. No numerical computation is
needed for these comparisons.

Remaining to-do list: derive the actual resolvent comparison using the
correct boundary trace maps; prove the thermal and short-time regulator
bounds; verify the global copy map; complete novelty and Lean certification.

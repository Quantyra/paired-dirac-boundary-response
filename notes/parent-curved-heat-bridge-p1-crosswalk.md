# Parent curved-heat result: scope crosswalk for P1

This compares the committed parent curved-heat argument with P1's full-Weyl response claim. It imports no parent files and does not modify the parent workstream.

## Parent result and provenance

The parent source at commit `08cb71afea3f0e5310cac8a50c05d5007555641f`, blob `dc647c3553f8f32fed859568efd9f2efda4847a5`, records `notes/current-curved-paired-heat-bridge.md`. Its sections 2--7 construct an exact two-dimensional orbit collar heat formula for W3 coefficients, obtain a uniform localized subtracted remainder, patch it through the finite physical geometry including the regular bolt, and prove for bounded admitted stationary families

    |D_uw r_sub(g;t)| <= C_A ||u||_A ||w||_A t^(3/2), 0<t<=.001.

It states positive-time convergence and dominated common-regulator removal for the first two metric variations, retaining thermal images, finite local restorations, and the LLL's original kernel/phase allocation. The constant is finite by an ordinary construction but its full numerical value is not evaluated. The result is limited to the admitted stationary scalar family and does not supply a third-variation or nonlinear X-ball bound.

This is significant progress toward P1-D: the curved trace remainder rate, cutoff endpoint integration, and regulator removal are no longer open for the observable and tangent subtraction actually covered by that parent construction.

## Observable comparison

The parent collar formula explicitly uses the orbit operator

    L_orbit=-partial_y^2-f^2 partial_tau^2-gamma_y gamma_tau f' partial_tau,

then carries the sphere tower through an external angular heat weight. That proves a curved remainder statement for the orbit-sector variation with the stated separated tower prescription. P1's full four-dimensional Weyl congruence has, in angular mode mu,

    P_(mu,m)=m(D+i mu G)m=D_m+i mu m^2 G,
    P_(mu,m)^*P_(mu,m)=D_m^*D_m+mu^2 m^4+i mu G[D_m,m^2].

P1 therefore varies the angular mass and has the mode-dependent commutator vertex, along with density and mixed second vertices. The exact mode calculation is in `full-weyl-angular-mode-correction.md`; the parent orbit formula does not display or bound these extra P1 vertices as part of its `r_sub` estimate. The new [`full-Weyl/orbit correction vertex note`](full-weyl-orbit-correction-vertices.md) differentiates their exact difference at the seed and writes the positive-time Hessian difference, including both ordered cross terms and the angular-correction pair. Retaining an external `Theta(t)` factor or the LLL prescription does not by itself prove the mixed response for a field-dependent angular tower.

## First unsupported implication for P1

To import the parent `t^(3/2)` bound into P1, prove a decomposition of P1's full-Weyl response into (i) the parent orbit-sector response plus its already controlled local conversion and (ii) the angular-mass/commutator correction whose vertices and mixed Duhamel terms are recorded in `full-weyl-orbit-correction-vertices.md`. Its localized, subtracted mixed trace must have a uniform integrable bound under the same proper-time regulator. The correction must retain physical density/contact, boundary transgression, thermal images and the separate LLL/anomaly block. The operator decomposition is now explicit, but no P1-specific uniform bound or source-observable matching is established.

The conditional note [`full-weyl-opposite-sign-cross-cancellation.md`](full-weyl-opposite-sign-cross-cancellation.md)
proves that, when the two signs have the same identified orbit seed, vertices,
domains and trace density, the odd-in-angular-mass gradient pieces cancel in
the orbit-angular cross Duhamel terms. This reduces that part of the curved
estimate to the even scalar `mu^2 u`/`mu^2 w` insertions. It does not remove
the even `O_u O_w` angular-angular product or supply a subtracted bound. The
source's pinned compactified conformal-boundary product realization records
the common orbit/sphere separation, sign-independent projector and equal
positive/negative massive multiplicities, so the cancellation applies there
under those product identifications. It does not assign the same projector
to arbitrary finite radial cuts, where the collar transport calculation
gives an angular-dependent subspace.

For the scalar angular-mass part, the conditional
[`curved scalar tower formula`](full-weyl-curved-scalar-tower-formula.md)
puts `Theta(t S_b)` inside the parent's exact Brownian bridge expectation and
retains all antiperiodic images. This is an exact representation for the
subfamily `L_b+mu^2 exp(-2b)`. The joint bridge-hit note now derives the
source-coordinate path jets for `A_h,B_h`, controls derivatives on the
zero-image orbit factor and differentiated thermal images, and compares the
curved scalar hit component with its constant-radius tangent block at
`O(t^(3/2))`. The estimate remains restricted to seam-hit paths and its
identification with the source's full localized subtraction is open. It
does not bound the non-hit local response, the full contact/density/LLL
allocation, or the commutator sector and its surviving odd-odd pair, which
still need their own matrix insertion estimate.

The joint scalar-hit result is detailed in
[`full-weyl-curved-scalar-joint-hit-bound.md`](full-weyl-curved-scalar-joint-hit-bound.md).
Thus the parent result plus this scalar component do not yet close P1-C/P1-D.
This crosswalk is an ordinary scope comparison; the parent argument has not
been independently rederived here and no Lean certification of the
heat-kernel estimate is claimed.

Remaining to-do list: derive and bound the P1 angular correction under the common regulator; finish the theorem-specific novelty decision and manuscript; certify supported claims on GCP.

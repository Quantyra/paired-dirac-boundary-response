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

Thus the parent result closes a closely related curved-response theorem but does not yet close P1-C/P1-D. This crosswalk is an ordinary scope comparison; the parent argument has not been independently rederived here and no Lean certification of the heat-kernel estimate is claimed.

Remaining to-do list: derive and bound the P1 angular correction under the common regulator; finish the theorem-specific novelty decision and manuscript; certify supported claims on GCP.

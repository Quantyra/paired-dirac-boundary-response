# Source scope of the moving physical-cut realization

This audit compares the moving-cut hypotheses in the conditional physical locality argument with the pinned paired-source model. It does not change the finite-cut theorem or establish a source-to-trace limit.

## What the pinned source specifies

The frozen `stationary-paired-dirac-phase.md` at scientific commit `f0eab59063422c80ccc7c8e281170c75cc3afc71` starts with identical stationary magnetic exteriors, a fixed pulled-back spin and monopole bundle identification, and a smooth finite spherical outer cut at zero constant source angle. It gives the complementary first-order domains

    Dom D: Pi_- gamma psi=0,    Dom D*: Pi_+ gamma phi=0,

and the composition boundary condition for `D*D`. Its partner argument uses the common bundle identification and regular bolt. Separately, `coupled-fermion-domain.md` places canonical finite boundary data at conformal infinity in a common conformal frame and explicitly says arbitrary finite cuts require their own matching and are not new physical boundaries.

Thus the source establishes a specified smooth finite-cut model and the canonical source data. The finite-cut domain calculation is valid at that model's scope; it does not by itself prescribe a family of physical boundary realizations for every radial cut in the RN-AdS exhaustion used in the locality notes.

## First unsupported implication

The conditional comparison in `physical-cut-interior-operator-locality.md` needs compatible bundle identifications and first-order domains over the moving-cut family, uniform graph/product estimates, and a domain-preserving cutoff Duhamel identity. These operator inputs have now been instantiated for an explicitly imposed auxiliary RN spherical-cut family in [`rn-spherical-auxiliary-cut-family-instantiation.md`](rn-spherical-auxiliary-cut-family-instantiation.md). The RN geometry, matched monopole transitions, uniform trace/graph route, scalar weight preservation and Davies bound are assembled there.

The remaining source gap is narrower and decisive: the auxiliary spherical-cut response is not yet proved to be the canonical conformal-infinity source response under the same proper-time regulator. The source finite-cut conformal covariance equation is a domain identity, not a determinant identity or uniform heat-trace limit. Close this by proving the auxiliary-to-canonical trace/regulator conversion with all boundary, density/contact and LLL terms, or by deriving a direct trace comparison that avoids the auxiliary family. Uniform graph or scalar Davies estimates alone do not supply that trace conversion.

## Consequences for the paper claim

The finite-cut paired-domain and partner identities remain available under the recorded source hypotheses. The moving-cut L2 locality estimate, H5/Schatten response comparison, physical density/contact/LLL normalization and common-regulator equality remain conditional until the above implication and the later trace/observable steps are proved. No wormhole existence or stability conclusion follows. This is an ordinary source-scope audit; no numerical computation or Lean certificate is claimed.

Remaining to-do list: construct or replace the moving-cut/source matching; establish the localized mixed-response and common-regulator bridge; complete prior-art review and manuscript; certify the supported final claims on GCP.

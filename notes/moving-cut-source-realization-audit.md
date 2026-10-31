# Source scope of the moving physical-cut realization

This audit compares the moving-cut hypotheses in the conditional physical locality argument with the pinned paired-source model. It does not change the finite-cut theorem or establish a source-to-trace limit.

## What the pinned source specifies

The frozen `stationary-paired-dirac-phase.md` at scientific commit `f0eab59063422c80ccc7c8e281170c75cc3afc71` starts with identical stationary magnetic exteriors, a fixed pulled-back spin and monopole bundle identification, and a smooth finite spherical outer cut at zero constant source angle. It gives the complementary first-order domains

    Dom D: Pi_- gamma psi=0,    Dom D*: Pi_+ gamma phi=0,

and the composition boundary condition for `D*D`. Its partner argument uses the common bundle identification and regular bolt. Separately, `coupled-fermion-domain.md` places canonical finite boundary data at conformal infinity in a common conformal frame and explicitly says arbitrary finite cuts require their own matching and are not new physical boundaries.

Thus the source establishes a specified smooth finite-cut model and the canonical source data. The finite-cut domain calculation is valid at that model's scope; it does not by itself prescribe a family of physical boundary realizations for every radial cut in the RN-AdS exhaustion used in the locality notes.

## First unsupported implication

The conditional comparison in `physical-cut-interior-operator-locality.md` needs `D_delta` and the complete `D` to have compatible bundle identifications and first-order domains over the moving-cut family, with uniform graph/product estimates and a domain-preserving cutoff Duhamel identity. The RN geometry and local-gauge notes bound the metric, connection coefficients and cut derivatives once those identifications are chosen. The source's one finite-cut model and its fixed pulled-back bundle map do not establish that the physical regularization uses that same realization at every moving cut, nor that it is the same regularization as the canonical infinity data.

This is a source/realization matching gap, not an obstruction to defining auxiliary matched finite-cut problems. To close it, one needs either (i) an explicit construction of the full moving-cut bundle/projector family and proof that it represents the declared physical source regulator, or (ii) a direct source-to-complete trace comparison that does not rely on that identification. A uniform finite-cut graph estimate or a scalar Davies estimate alone cannot supply the missing identification.

## Consequences for the paper claim

The finite-cut paired-domain and partner identities remain available under the recorded source hypotheses. The moving-cut L2 locality estimate, H5/Schatten response comparison, physical density/contact/LLL normalization and common-regulator equality remain conditional until the above implication and the later trace/observable steps are proved. No wormhole existence or stability conclusion follows. This is an ordinary source-scope audit; no numerical computation or Lean certificate is claimed.

Remaining to-do list: construct or replace the moving-cut/source matching; establish the localized mixed-response and common-regulator bridge; complete prior-art review and manuscript; certify the supported final claims on GCP.

# Source-to-reflection and partner hypothesis audit

Status: evidence comparison at source commit
`f0eab59063422c80ccc7c8e281170c75cc3afc71`; not a Lean certificate or a
new assertion of physical existence. This compares the hypotheses in
[the global reflection construction](global-fixed-flux-reflection.md) and
[the elliptic domain bridge](finite-cut-elliptic-domain-bridge.md) with the
actual pinned statements.

| Required input | Pinned source evidence | Disposition |
| --- | --- | --- |
| Static disk-sphere warped metric | [Recentered constraints, sections 2–3](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/recentered-stationary-constraints.md) uses g=exp(2L)(dx²+dφ²)+r²dΩ² with radial functions and a fixed thermal period. | Matches the displayed warped form away from the bolt. Smooth extension and positive sphere radius at the center are separately needed. |
| Finite cut and regular bolt | [Paired phase, problem and domains](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md) assumes a finite smooth spherical outer cut and a smooth bolt with regular thermal spin structure. | Matches the model as an assumption. The cylindrical coordinate x=-infinity is not itself a smooth bolt chart. |
| Fixed-flux reflection | Recentered constraints, section 2, specifies U=1⊗σ₁⊗c_S, no sphere reflection, and asserts smooth Cartesian extension and closed-domain covariance. | Exact intended local lift is identified. The global construction supplies an ordinary argument on the specified product model; the source assertions are not independent checks of its physical realization. |
| Magnetic connection | Paired phase assumes no electric field and identical pulled-back monopole connections. [Coupled domain](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md) says the pulled-back monopole bundles agree in global angular coordinates. | Matches a common static sphere-pulled-back monopole connection when the stated identification is implemented. It does not cover an arbitrary additional orbit connection or a changed gauge map. |
| Spin/copy identification | Paired phase explicitly assumes the fixed pulled-back spin and monopole identification, identical clocks and metric jets. Coupled domain fixes the boundary spin/bundle map to the identity in the chosen frames. | A specified identification is part of the source model. The cited passages do not display its full transition functions or an explicit global copy diffeomorphism, so they do not by themselves independently verify the hypotheses of the product construction. |
| Projector and partner | Paired phase states χ=τ₃γn, complementary first-order domains, J=τ₁⊗σ₁, and the closed identity D†=-JDJ. | The asserted local algebra is compatible with the argument. Independent application still requires the actual global transition and connection matching and identification of the physical H¹ projector realization; the closed identity cannot be inferred from the matrices alone. |

The time reflection R and the partner J perform different operations: R
covers a reflection of the disk and preserves χ, while J acts between the
folded copy sectors and reverses χ. Neither existence statement identifies
R with the physical copy pullback. A proof of J for the assumed common
bundle may use the overlap and connection criterion in the elliptic bridge;
applying it to the original construction requires an explicit account of
the actual transitions or a clearly stated common-bundle construction.

This audit is evidence for the finite-cut seed assumptions only. It does not
prove uniformity along rough metric paths, the tangent response, the curved
trace remainder or an existence or stability statement. Numerical checks
cannot settle the bundle and domain identifications.

Remaining to-do list: construct the actual common folded bundle and check J
and its domain; resolve the tangent response and novelty decision; write the
supported manuscript; and certify the relevant claims in Lean on GCP.

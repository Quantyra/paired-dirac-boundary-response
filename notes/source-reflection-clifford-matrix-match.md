# Source Clifford matrices and the reflected mixed domain

This checks the concrete matrix and geodesic-boundary part of `reflected-cylinder-mixed-domain-from-form.md` against the frozen [paired Dirac phase source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md) and [stationary boundary-layer source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md). It does not independently establish the global physical composition domain or bolt gluing.

The phase source uses Hermitian Euclidean Clifford matrices, copy Pauli matrices tau_i and orbit matrices sigma_i, with identity sphere factors suppressed:

  gamma_tau=-tau_3 tensor sigma_3,  gamma_n=1 tensor sigma_1,
  C=chi=tau_3 gamma_n=tau_3 tensor sigma_1,
  A=gamma_n gamma_tau= i tau_3 tensor sigma_2.             (1)

The last identity uses sigma_1 sigma_3=-i sigma_2. Define Gamma=i A=-tau_3 tensor sigma_2. The Pauli relations give directly

  C*=C, C²=1, A*=-A, C A C=-A,
  Gamma*=Gamma, Gamma²=1, C Gamma C=-Gamma, [Gamma,A]=0.   (2)

Thus the source's C meets the mixed-form reflection hypotheses, and Gamma meets the grading hypotheses for the separated square. Reflection in y does not act on the constant matrices, so J=C times reflection anticommutes with Gamma. For an even f, the form calculation in the cited model note makes J and Gamma commute with the closed form and its associated self-adjoint operator. Scalar stationary insertions commute with both matrices; their even extensions commute with J.

The source defines Pi_plus=(1+C)/2 as the allowed trace, Pi_minus=(1-C)/2 as the Dirichlet trace, and records the square condition Pi_plus(nabla_n+K/2)psi=0. At its geodesic outer boundary K=0. The radial half-density transformation is multiplication by sqrt(a), with f=1/a; because a'(0)=0, the scalar transformation has zero normal derivative at the boundary and preserves the Neumann condition there. With the source's normal orientation reconciled by the fact that zero derivative is orientation-independent, these are the same projector labels as the reflected form: Pi_minus h=0 and Pi_plus partial_y h=0.

The source states that its reduced square has expression -partial_y²-f² partial_tau²-A f' partial_tau. Under the identical copy, fixed thermal spin and magnetic-bundle assumptions recorded there, (1)--(2) verify the matrix algebra and show the geodesic mixed boundary data coincide with the model. The scalar angular mass shifts the separated square by a constant and commutes with the reflection; its multiplicities and the zero sector retain the source's separate allocation.

This does not replace an independent proof of the source's closed first-order and composition domains, the global equality to the auxiliary capped cylinder, the trace normalization, or a gluing estimate. The finite cutoff may have nonzero K and cannot be silently treated as this geodesic boundary. No Lean certification is claimed.

Remaining to-do list: complete the source-domain and trace audit, prove gluing and full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
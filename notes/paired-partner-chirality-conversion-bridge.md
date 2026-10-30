# Partner and chirality bridge to the graded conversion model

This connects the abstract graded conversion in
`graded-mass-conversion-positive-cut.md` to the paired-domain hypotheses of
`orbit-chirality-domain-bridge.md` and `common-folded-bundle-partner.md`.
It applies to the stipulated compact product orbit with its actual
complementary domains, not automatically to the original physical pullbacks
or regulator, and it is not Lean-certified.

Let D be closed and densely defined with V=Dom D, and suppose J and G are
bounded self-adjoint unitary involutions satisfying the *closed-domain*
conditions

  D*=-JDJ,  G V=Dom D*,  D* G x=G D x (x in V),
  JG=GJ.                                                  (1)

The first identity includes Dom D*=J V. The second is the orbit chirality
intertwining of `orbit-chirality-domain-bridge.md`. Define

  Q=J D on V,     H=J G.                                 (2)

Then Q is skew-adjoint: Q*=D*J=-JD=-Q with equality of domains. Since J and
G are commuting self-adjoint involutions, H is a self-adjoint unitary
involution. Both J and G exchange V and Dom D*, so H preserves V: if x is
in V, Gx is in Dom D*=JV and hence JGx is in V; H^2=1 gives equality.

For x in V, the domain identity D*=-JDJ applied to Gx gives

  D(JGx)=-J D*(Gx)=-J G D x.                             (3)

The expression on the left is defined because JGx is in V. Using (3) and
JG=GJ,

  Q H x=J D JGx=-G D x,
  H Q x=JGJ D x=G D x.                                  (4)

Thus HQ=-QH on V, including the domain preservation required by the graded
conversion model. Its positive square is Q*Q=D*D=-Q^2 on the natural
composition domain. Any scalar field commuting with J and G also commutes
with H. If a positive scalar multiplier m and its inverse preserve both
first-order domains, Q_m=m Q m and H Q_m=-Q_m H on V by the same argument.
This does not assert that the square domains are constant in m.

## Recorded local matrices

In the orientation-aware radial frames of the common-bundle note, the orbit
matrices are gamma_n=1 tensor sigma_1 and gamma_tau=-tau_3 tensor sigma_3,
while J=tau_1 tensor sigma_1. With the orbit orientation used in the
chirality note,

  G=i gamma_n gamma_tau=-tau_3 tensor sigma_2,
  H=JG=-tau_2 tensor sigma_3.                              (5)

The Pauli multiplication rules show JG=GJ, H*=H and H^2=1. Reversing the
orbit orientation changes the sign of G and H but not the anticommutation
or the grading cancellation. These local calculations supplement, rather
than replace, the global transition and connection arguments: equation (1)
must hold as a closed-operator statement on the actual bundle.

Under (1), and the compact heat trace and Duhamel hypotheses explicitly
listed in `graded-mass-conversion-positive-cut.md`, its Gamma can be taken
to be H=JG and its skew-adjoint Q can be taken to be JD. The model's
positive-cut mixed identity, including the Theta-prime contact, therefore
applies to this paired-domain model. Scalar insertions commute with H, so
the grading-odd commutator has zero scalar-smeared trace under those trace
hypotheses. This bridges the model to the paired *abstract* domain algebra;
it does not establish that the physical copy pullbacks and conformal product
realize it, that the source's physical-half/time-reduced normalization matches,
or that the rough small-time remainder and common regulator are controlled.

The [GCP Lean check](../evidence/gcp-partner-chirality-20261030/README.md)
verifies the domain-aware anticommutation algebra in (4) from explicitly
assumed domain and intertwining hypotheses. It does not establish those
hypotheses, skew-adjointness, or the physical conversion.

Remaining to-do list: verify the global physical bundle and cut realization,
match source normalization and subtractions, complete the novelty audit and
manuscript, and certify supported claims in Lean on GCP.
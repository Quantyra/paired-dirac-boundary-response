# Fixed-space identification for orbit conformal variations

This is an ordinary local-to-global calculation for the orbit-only conformal family used in [the mixed identity](paired-positive-time-mixed-identity.md). It supplies a concrete fixed-Hilbert-space map under explicit smooth-bundle and domain hypotheses. It does not establish that every physical four-dimensional variation has this form, nor prove the common-regulator limit or a Lean certificate.

Let (X,g) be an oriented two-dimensional compact spin manifold with boundary, with a fixed Hermitian twisting bundle and compatible connection. Let g_b=e^(2b)g for real smooth b. Identify the spin bundles by the canonical conformal orthonormal-frame identification, and write D_g,D_(g_b) for the corresponding twisted Dirac expressions. The geometric L2 measures satisfy dvol_(g_b)=e^(2b)dvol_g. The map

    U_b : L2(g_b) -> L2(g),     U_b psi=e^b psi                (1)

is unitary under that fiber identification. In two dimensions the conformal covariance formula for a Dirac operator gives

    D_(g_b)=e^(−3b/2) D_g e^(b/2),
    U_b D_(g_b) U_b^−1=e^(−b/2) D_g e^(−b/2).              (2)

The twisting connection is held fixed under the bundle identification. The formula is local and may be checked in orthonormal frames; the global statement requires these conformal spin identifications to patch and the twisting data to match.

For a scalar function u fixed on the underlying manifold, U_b M_u U_b^−1=M_u exactly. Consequently, for any trace-class heat operator K_b on L2(g_b),

    Tr_(L2(g_b))[M_u K_b]
       = Tr_(L2(g))[M_u U_b K_b U_b^−1].                    (3)

The geometric volume factor is already included in U_b. Differentiating (3) in a conformal parameter with u fixed as a function on X therefore introduces no additional derivative of the measure or of M_u in the fixed-space trace. This is not a statement that the second vertex vanishes: differentiating the conjugated Dirac square gives all terms in [the mixed vertex inventory](mixed-heat-vertex-inventory.md).

For the paired boundary condition, suppose the copy involution T and the geometric normal Clifford map are identified across the conformal family. The g_b-unit normal is e^(−b) times the g-unit normal, and conformal Clifford identification carries its Clifford action to that of the g-unit normal. Thus the involution chi=T c(n) and its projectors have the same fiber matrices on the fixed bundle. Scalar U_b commutes with them. If the actual first-order and complementary adjoint realizations are the corresponding H1 projector domains, U_b transports those domains to the same fixed H1 trace spaces. This conclusion uses the actual domain identifications; pointwise projector covariance alone does not prove them. Positive squares are then transported with their actual composition domains, not assumed constant.

The result also applies to a product with an unchanged compact spectator factor when the Hilbert-space measure scales only through this two-dimensional orbit factor and the separated operator has the stated orbit conformal covariance. A general four-dimensional conformal rescaling instead has a different volume exponent and must not be substituted into (1)–(2). If a direction is defined using a parameter-dependent proper-distance coordinate rather than fixed underlying coordinates, its pulled-back multiplier u_b can move; equation (3) then has the additional insertion derivative M_(partial_b u_b). A moving angular factor, period, boundary identification or twisting connection likewise requires a separate term or hypothesis.

The pinned source describes scalar congruence on a fixed seed space and fixed clock, consistent with this construction for the declared orbit model. Its exact global spin/copy map, spectator separation, physical coordinate convention and regulator still require verification. No equality of the full physical action with the fixed-orbit model is asserted.

Remaining to-do list: match the physical copy and coordinate maps and any moving insertions, complete the tangent and regulator proof, decide novelty, prepare the manuscript and certify supported claims in Lean on GCP.

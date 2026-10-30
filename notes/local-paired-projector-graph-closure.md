# Graph closure of the local paired projector realization

This verifies the H1 graph-closure hypothesis used in `source-first-order-square-reflected-form.md` for the stipulated half-cylinder. It does not identify the source's global maximal realization or regular bolt domain.

Let D=gamma_y partial_y+gamma_tau f(y) partial_tau on (0,infinity) x S1_T, with the Hermitian Clifford matrices and constant complementary projector Pi_minus in that note. Assume real f in W1,infinity and 0<m<=f<=M. Let C be smooth spinors compactly supported in the radial direction, smooth with the chosen periodic or antiperiodic thermal spin structure, and satisfying Pi_minus psi(0)=0.

The boundary cancellation established in the preceding note gives, on C,

 ||D psi||²=||partial_y psi||²+||f partial_tau psi||²
                   +<psi,-A f' partial_tau psi>,          (1)

with A=gamma_y gamma_tau skew-adjoint. Young's inequality yields

 |<psi,-A f' partial_tau psi>|
    <= (m²/2)||partial_tau psi||²+C ||psi||².              (2)

Together with the trivial upper estimate, (1)--(2) give constants c,C'>0 such that

 c||psi||_H1 <= ||D psi||+||psi|| <= C'||psi||_H1.        (3)

The constants depend on m,M,||f'||_infinity and the Clifford representation, not on a cutoff at infinity. No positive spectral gap is asserted.

The H1 closure of C is exactly V={psi in H1: Pi_minus trace psi=0}. For the Pi_plus part use an even extension across y=0, and for the Pi_minus part use an odd extension, followed by smooth convolution and radial cutoff; then project back onto the corresponding C eigenspaces. The zero trace guarantees the odd extension is H1. Thermal convolution respects the specified spin structure, and radial cutoffs approximate globally in H1. Thus (3) proves that the graph closure of D on C has domain V and acts by the distributional expression. In particular, this realization is closed and its composition square is the mixed form realization identified in the preceding note.

The same calculation applies to the complementary constant projector, interchanging the eigenspaces. The formal adjoint is -D, and Green's boundary form has normal Clifford gamma_y. Because gamma_y commutes with C, the annihilator of the allowed trace is the complementary trace. This establishes the boundary pairing; equality of the full maximal adjoint domain with the complementary H1 space requires the usual local elliptic regularity argument, as in `finite-cut-elliptic-domain-bridge.md`, or an independent proof for this noncompact realization.

For the frozen source this closes the graph-norm and core issue for the explicitly identified auxiliary collar, provided the physical local realization is the graph closure of that core. A different maximal extension, the magnetic/copy bundle transitions, the global bolt and finite-cut Robin terms remain separate. No Lean certification is claimed.

Remaining to-do list: identify the physical maximal and adjoint domains and gluing, control the response and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
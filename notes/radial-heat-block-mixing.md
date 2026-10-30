# Radial variation obstructs automatic transport block cancellation

This tests the extra hypothesis in `transport-signed-block-cancellation.md`
against the radial Hamiltonian in `finite-cut-boundary-transport.md`. It is
an interior differential-expression calculation, not an identification of
the full Euclidean paired heat operator or a Lean certificate.

On a nonzero angular eigenmode mu, take the recorded radial expression

    H_mu=-i sigma_2 partial_x + mu a(x) sigma_1,

with real C¹ a. On compactly supported smooth spinors in the collar, Pauli
algebra and the product rule give

    H_mu² = -partial_x² + mu² a(x)² - mu a'(x) sigma_3.    (1)

The first-derivative cross terms cancel; the derivative of a remains. The
transport projector basis is the sigma_1 eigenbasis. In that basis sigma_3
interchanges v_+ and v_-, so (1) is not block diagonal there when mu a' is
nonzero. Explicitly,

    [H_mu²,sigma_1] = -2 i mu a'(x) sigma_2.               (2)

For any self-adjoint realization L whose action agrees with H_mu² on the
interior compactly supported core, and whose domain contains that core,
nonzero mu a' on an open set makes (2) nonzero on a suitable core vector.
If every heat operator exp(-tL) commuted with sigma_1, the spectral theorem
would make sigma_1 commute with the resolvent and L on its domain, contrary
to that core calculation. Thus the heat family is not block diagonal for
all positive times in this basis. This argument does not require asserting
that sigma_1 preserves an arbitrary boundary condition: the test vector and
its sigma_1 transform are supported away from the boundary.

The source writes a=exp(sigma)/R in its general radial Hamiltonian and also
uses a constant-a product collar as a special model. The displayed argument
applies wherever the actual a has nonzero derivative; it does not establish
that fact for every seed or cutoff. A constant coefficient removes the bulk
mixing term, but boundary conditions can still prevent the heat realization
from being block diagonal. Nor does noncommutation alone determine the sign
or size of the complete traced response.

Therefore the quadratic signed estimate of
`transport-signed-block-cancellation.md` cannot be applied to this radial
heat family solely from the zero-angle projector algebra. A physical proof
must control the off-diagonal orbit block, or establish a separate symmetry
or cancellation in the actual observable. The zero-energy boundary transport
and the Euclidean heat problem are distinct constructions whose matching is
still open. No numerical computation is used.

Remaining to-do list: identify the physical boundary and heat realization,
control its off-diagonal response and regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.
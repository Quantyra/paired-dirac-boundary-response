# Weighted reference traces for the mixed second vertex

This connects the existing weighted form estimate in `conformal-weighted-second-vertex.md` to the reference traces in `conformal-second-vertex-all-positions.md`. It discharges the latter's A_t hypothesis under the explicit smoothing and form-trace assumptions below; it does not prove its unsandwiched B_t hypothesis, the ordered first vertices, or the physical regulator.

On a smooth finite cut let L=D*D, H=exp(-tL/2), and let q_uw be the Hermitian mixed square form represented in a finite Galerkin approximation by V. Let b be the real bounded cutoff of the conformal logarithm. In the finite matrix approximation, trace cyclicity gives the exact identities

 Tr(b K_t V)=Tr(H V b H)=sum_j q_uw(b H e_j,H e_j),
 Tr(b V K_t)=conjugate[Tr(b K_t V)].                     (1)

The form convention is linear in its first slot. The second identity uses Hermiticity of b, V and K_t. In the infinite-dimensional setting, assume the Galerkin/form-trace limit and cyclicity required by (1); the convergence must be shown for the chosen operator and boundary, not inferred from the matrix identity alone.

The four mixed-square form terms and scalar product rule in the weighted note give, via Hilbert--Schmidt Cauchy--Schwarz,

 |Tr(b K_t V)| <= C_t [N_b(u)N(w)+N(u)N_b(w)+N(u)N(w)], (2)
 N(v)=||v||_2+||dv||_2,  N_b(v)=||b v||_2+||b dv||_2.

The constant depends on the weighted heat and derivative diagonal bounds, the base multiplier and ||[D,b]||, not on ||b|| itself. The corrections arising when D or a Dirac variation acts on b are included in the cited form proof. Thus, if those diagonal estimates and commutator bounds are uniform in a cut or approximation family, if the direction norms on the right are uniformly bounded, and if (1) is justified uniformly, A_t in equation (4) of the all-positions note may be taken to be twice the right side of (2). Its integrand is localized by the direction coefficients; this is different from the divergent bare logarithmic heat trace.

For the fixed RN source, the cubic directional estimates in `conformal-log-direction-physical-volume.md` establish finiteness and controlled tails of the corresponding physical L2 quantities under the stated radial and interior hypotheses. They do not themselves establish uniform heat diagonals up to moving boundaries, the form-Galerkin limit, or physical partner identification. Equation (2) is for each fixed t; no small-time remainder or large-time rate follows.

The correction in the all-positions reduction still requires ||V K_s||_1 and ||K_s V||_1, or a different valid form-level estimate. Trace class of H V H and a bound on its trace do not by themselves imply these unsandwiched bounds. No Lean certification is claimed.

Remaining to-do list: prove the boundary-uniform smoothing and unsandwiched or alternative correction estimate, handle ordered first vertices and regulator, complete the novelty audit and manuscript, and certify supported claims on GCP.

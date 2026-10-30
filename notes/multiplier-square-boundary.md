# Smooth multiplier and the composed square boundary condition

Status: conditional ordinary argument at a smooth compact finite cut, not a
rough-limit theorem or Lean certification. The seed paired projector and
normal conventions are recorded in the pinned
[conformal-domain note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md),
Eqs. (8)--(9). The argument below assumes that its Gauss decomposition and
the H1 first-order domain identifications have been established for the
particular seed; it does not establish them.

Let D have first-order domain Pi_- trace psi=0 and adjoint domain Pi_+
trace phi=0. Assume chi=tau_3 gamma_n, that gamma_n commutes with chi,
and that the intrinsic boundary Dirac expression maps chi=+ traces into
chi=- traces, as in the source. With its normal convention, assume

    D=gamma_n (nabla_n+K/2)+D_intr.

Let b be a real smooth scalar on the compact manifold, identical on the
paired copies, and E=exp(-b/2). The first-order multiplier argument gives
Dom(D_b)=Dom(D), Dom(D_b*)=Dom(D*) for D_b=E D E. Its positive square
has the composition domain {psi in Dom(D): D_b psi in Dom(D*)}.

Assume additionally the elliptic H2 regularity and boundary trace results
needed to identify that composition domain with H2 sections satisfying its
two local boundary conditions, and the converse. Then the conditions are

    Pi_- psi=0,
    Pi_+ (nabla_n+K/2-(1/2) partial_n b) psi=0.          (1)

Indeed, for an H2 section obeying the first condition, E psi has the same
allowed trace. The Gauss decomposition and the intrinsic chirality flip give

    Pi_+ D(E psi)
       = gamma_n Pi_+ (nabla_n+K/2)(E psi)
       = E gamma_n Pi_+ (nabla_n+K/2-(1/2) partial_n b) psi.

Multiplying by E, which commutes with the projectors, shows that
Pi_+ D_b psi=0 is equivalent to the second condition in (1), since E and
gamma_n are invertible. No tangential derivative of b enters this projected
boundary term: the tangential operator sends the allowed trace to the
opposite eigenspace. This conclusion depends on the assumed intrinsic flip.

If partial_n b vanishes at the finite cut, (1) agrees with the seed's mixed
conditions. Under the same H2 identification for both operators, their square
domains then coincide as sets. Without that normal-jet condition the Robin
term generally changes. This special smooth finite-cut observation does not
justify freezing square domains for arbitrary rough families, nor does it
prove the H2 characterization or uniformity in a limiting cut.

Remaining to-do list: verify H2 mixed-boundary regularity and the intrinsic
flip for the actual global paired bundle; connect the selected mass/log jets
to the boundary trace; audit rough and cut limits; and certify supported
operator statements on GCP.

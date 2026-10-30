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

Under the elliptic hypotheses detailed below, that composition domain is
the H2 space satisfying the two local boundary conditions

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

## Intrinsic flip and its bundle assumptions

The source's orientation-aware representation has gamma_n=1 tensor sigma_1
and tangential gammas carrying a sigma factor anticommuting with sigma_1;
the copy involution tau_3 commutes with each of these gammas. Consequently
chi=tau_3 gamma_n anticommutes with every tangential gamma pointwise. For
the intrinsic boundary spin connection, Clifford compatibility and its
normal-parallel construction imply nabla^boundary_a gamma_n=0. If the
connection on the two pulled-back copies also preserves tau_3, then
nabla^boundary_a chi=0. For D_intr=sum_a gamma_a nabla^boundary_a this
gives, on smooth boundary spinors,

    chi D_intr psi = -D_intr(chi psi).

The equality extends to the Sobolev traces used above by continuity of the
first-order tangential operator. In particular, it explains why a tangential
derivative of scalar E produces no Pi_+ term for an allowed trace. The
identical-copy magnetic connection recorded in the source is compatible with
this argument provided its pulled-back bundle identification really makes
the copy involution parallel. The global identification, spin structure at
the regular bolt and the stated Gauss formula are still source hypotheses,
not independently established by this pointwise calculation.

The parallel-copy part has a direct bundle formulation. Before choosing a
common trivialization, let the folded bundle be E_L direct-sum E_R with
connection nabla_L direct-sum nabla_R, and define tau_3 to act by +1 on
E_L and -1 on E_R. For a section (s_L,s_R),

    nabla[tau_3(s_L,s_R)]
      = (nabla_L s_L,-nabla_R s_R) = tau_3 nabla(s_L,s_R).

Thus tau_3 is parallel for any block-diagonal connection; equality of the
two connections is not needed for this particular statement. A unitary
bundle identification is still needed for the source's common matrix
representation and for copy-exchanging operators, and it must intertwine
the relevant structures when those operations are used. The pinned
[coupled-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md)
states a fixed spin-frame and magnetic-bundle map and matching pulled-back
bundles; it does not by itself establish every global geometric hypothesis
of this paper. Off-diagonal connection terms would invalidate the simple
parallelism argument and need to be checked separately.

## H2 regularity from the first-order theorem

Assume the smooth compact finite-cut setting and the D-elliptic projector
realization established conditionally in the
[finite-cut bridge](finite-cut-elliptic-domain-bridge.md). For any
psi in Dom(D_b* D_b), the first-order domain identification gives
psi in H1 and D_b psi in Dom(D_b*) subset H1. Since smooth E^-1 preserves
H1 and D_b psi=E D(E psi), it follows that D(E psi) is in H1. The field
E psi lies in Dom(D), so Bar--Ballmann
[Theorem 4.9](https://arxiv.org/html/1307.3021v2), with k=1, yields
E psi in H2 locally up to the boundary. Compactness and smooth multiplication
by E^-1 give psi in H2 globally. Thus the trace of D_b psi is an H^(1/2)
boundary trace and its projected condition is meaningful.

Conversely, if psi is H2 and satisfies both conditions in (1), then psi is
in Dom(D_b); smooth coefficients give D_b psi in H1, and the calculation
above shows Pi_+ trace(D_b psi)=0. The H1 characterization of the adjoint
domain then gives D_b psi in Dom(D_b*), proving membership in the square
domain. This establishes the H2 identification from the stated first-order
regularity inputs; it is still conditional on their applicability to the
actual paired realization and the source's Gauss decomposition.

If partial_n b vanishes at the finite cut, (1) agrees with the seed's mixed
conditions. Under the same H2 identification for both operators, their square
domains then coincide as sets. Without that normal-jet condition the Robin
term generally changes. This special smooth finite-cut observation does not
justify freezing square domains for arbitrary rough families or prove
uniformity in a limiting cut.

## Collar normal jet and the explicit log smoothing

For the source's physical-side collar b(y)=c y^3+r(y), with |c|<=K and
|r'(y)|<=100 K y^3 (1+log(1/y)), one has

    |b'(y)| <= 3 K y^2 + 100 K y^3 (1+log(1/y)) -> 0.

Hence the limiting physical-side y derivative has zero trace. If the normal
derivative is a bounded scalar multiple of partial_y in the relevant collar
chart, it also tends to zero. This does not say b' vanishes at a finite
positive cut: at y=eta the displayed expression only bounds its size.
Comparing square domains at different cuts also requires identifying their
Hilbert spaces and domains, not merely comparing this coefficient.

For a pure logarithmic jet, the source's smoothing replaces y^4 log y by
g_epsilon(y)=y^4 log(sqrt(y^2+epsilon^2)). Define g(0)=g_epsilon(0)=0.
For 0<y<=delta and epsilon>0, log(1+z)<=z gives

    |g_epsilon(y)-g(y)| <= (epsilon^2/2) y^2,
    |g_epsilon'(y)-g'(y)| <= 3 epsilon^2 y.

The derivative estimate follows by differentiating the difference; both
first derivatives extend by zero at y=0. Thus this explicit replacement
preserves the zero first jet and converges in W1,infinity on the fixed
physical-side collar. The cubic term is left unchanged. This argument covers
the explicit logarithmic term only; the source's claimed regularization of a
general weighted remainder and uniform higher-derivative bounds still require
their own construction and verification.

Remaining to-do list: verify first-order elliptic hypotheses and the intrinsic
flip for the actual global paired bundle; audit general remainder smoothing,
rough and cut limits; and certify supported operator statements on GCP.

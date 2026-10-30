# Euclidean thermal frequency in canonical boundary transport

This is a first-order differential-expression comparison using
`canonical-euclidean-lapse-square.md` and
`finite-cut-spectral-transport.md`. It narrows a model identification gap;
it does not identify the physical heat or square-resolvent boundary problem,
the global domains, or a Lean certificate.

In the stationary product collar use the explicit convention of the lapse
note,

    gamma_tau D_mu/f = partial_tau + H_mu,              (1)

where f>0 is time-independent and H_mu is the corresponding canonical radial
Hamiltonian. For the regular disk's antiperiodic thermal spin frame, write
psi(tau,s)=exp(i nu_k tau) phi_k(s), nu_k=2pi(k+1/2)/T. The homogeneous
first-order Euclidean equation D_mu psi=0 is, mode by mode,

    (H_mu+i nu_k)phi_k=0,      H_mu phi_k=z_k phi_k,
    z_k=-i nu_k.                                        (2)

The sign changes with the Fourier convention, but |z_k|=|nu_k|. This is a
calculation for the zero-eigenvalue Euclidean Dirac equation: multiplying by
f^-1 is legitimate on the fixed positive-lapse collar. It does not say that
z_k is the canonical spectral parameter in every square-resolvent or heat
problem.

For the separated radial expression and local boundary line in
`finite-cut-spectral-transport.md`, apply its all-complex-parameter estimate
with z=z_k. The difference between the line transported through a finite
collar and the local line obeys

    ||P_(mu,-i nu_k)-P_0||
       <= C [|mu| integral |a| + |nu_k| ell].           (3)

Thus the thermal-lattice Gaussian sum in
`frequency-dependent-collar-transport.md` retains its displayed upper
bound when the spectral argument is corrected from z=nu_k to z=-i nu_k:
the proof uses only |z|. The same is true of the fixed RN rate in
`rn-thermal-cut-transport-rate.md`, subject to its other angular, units and
collar hypotheses. This supplies a concrete first-order reason for the
absolute-frequency factor; it is not a physical trace-norm estimate.

The correction is not an equality of transported lines. For instance, at
mu=0 the transport generator is i z sigma_2. Taking z=nu gives an
anti-Hermitian generator, while z=-i nu gives a Hermitian generator. The
resulting modewise line maps are generally different, even though their
norm bounds use the same |nu|. For imaginary z the line is a spectral
boundary relation, not a fixed self-adjoint Hamiltonian domain; the
orthogonal projection construction also need not be holomorphic in z.

Finally, D_mu*D_mu contains the lapse and commutator terms shown in the
lapse note. Its resolvent or heat equation has additional spectral data and
cannot be reduced to (2) by substituting a thermal frequency. The finite-cut
physical bundle, bolt, actual boundary realization, complete vertices,
regulator and common trace normalization remain to be matched. No numerical
calculation is used.

Remaining to-do list: derive the physical square-resolvent boundary map,
complete bundle and regulator matching, prove the full response, resolve
prior art, prepare the manuscript, and certify supported claims on GCP.
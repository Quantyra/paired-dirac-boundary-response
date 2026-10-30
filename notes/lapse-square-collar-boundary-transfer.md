# Lapse-weighted square boundary transfer on a collar

This derives an exact first-order system for a homogeneous *model* square
resolvent through a finite collar. It extends
`euclidean-thermal-boundary-spectral-parameter.md` beyond the first-order
zero equation. The coordinate Hilbert-space and physical bundle/domain
identifications remain hypotheses; this is not a physical heat-trace theorem
or a Lean certificate.

Let s range over a finite interval [s0,s1], let f be positive with f and
f^-1 bounded, and take the separated canonical expression

    H_mu=-i sigma_2 partial_s+mu a(s) sigma_1,
    P_nu=f(s)(H_mu+i nu),
    P_nu^formal*=(-i nu+H_mu)f(s),                       (1)

for real mu,nu and real bounded a. The formal adjoint in (1) uses L2(ds);
matching that measure to the actual Euclidean half-density is a separate
unitary-conjugation issue. For M>=0 consider the homogeneous equation

    (P_nu^formal* P_nu+M^2)psi=0.                       (2)

Introduce the flux xi=f^2(H_mu+i nu)psi. Then (2) is equivalent to

    (H_mu+i nu)psi=f^-2 xi,
    (H_mu-i nu)xi=-M^2 psi.                             (3)

For Y=(psi,xi), the system is Y'=K(s)Y, where

    K = [ nu sigma_2 - mu a sigma_3     i f^-2 sigma_2 ]
        [ -i M^2 sigma_2            -nu sigma_2 - mu a sigma_3 ]. (4)

This follows by multiplying each equation by i sigma_2, using
sigma_2 sigma_1=-i sigma_3. The formula keeps the derivative of the lapse
implicitly in the flux definition; no derivative of f is discarded when
reconstructing the second-order equation. A reversal of radial coordinate or
Clifford convention changes signs and must be made consistently.

For the source's local composition condition, assume the relevant fixed
fiber identification carries the allowed first-order trace to P_- psi=0
and the formal adjoint trace of D to P_+ D psi=0. Since gamma_tau anticommutes
with the boundary involution, P=gamma_tau D has the complementary trace
condition P_- P psi=0. Multiplication by f preserves that condition, so in
this model it becomes

    P_- psi=0,       P_- xi=0.                          (5)

These are two independent scalar conditions in a two-component mode,
defining a two-dimensional plane B in the four-dimensional data space. The
same reasoning applies in each folded sector with its own transported
projector. The actual physical normal and gamma_tau maps, H2 trace regularity
and Hilbert-space domains must be verified before using (5) physically.

Let U(s0,s1) be the fundamental matrix of (4) carrying data from s1 to s0.
The exact homogeneous boundary plane at s0 induced by (5) at s1 is U B.
With

    h=integral_(s0)^s1 [2|nu|+2|mu| |a(s)|
                                      +f(s)^(-2)+M^2] ds, (6)

Gronwall gives ||U-I||<=exp(h)-1. The bound uses the direct-sum fiber norm;
any fixed equivalent norm merely changes constants. As U is invertible, a
standard graph-of-subspace estimate and the fact that orthogonal projection
differences have norm at most one give

    ||Proj_(U B)-Proj_B|| <= C min(h,1).                 (7)

For example, when ||U-I||<1/2, projection of U B onto B is invertible and
the graph map into B-perp has norm at most 2||U-I||; the remaining case is
absorbed into C. Equations (4)--(7) keep both square boundary conditions
and the mass and thermal parameters. They do not identify a fixed local
projector at s0 with the transported plane.

For an inhomogeneous resolvent equation with a source in the removed collar,
variation of constants adds an explicit integral of the propagated source to
Y(s0). The resulting boundary relation is affine in that source. The
homogeneous plane U B alone therefore cannot compare resolvents for arbitrary
inputs, nor does (7) control the associated Poisson operator or trace norm.
The zero-mode, angular/thermal sum, physical measure, bolt, lapse factors,
metric vertices and common regulator remain independent. No numerical
calculation is used.

Remaining to-do list: match the physical square domain and unitary frame,
control the source-dependent transfer and interior Poisson map, prove the
full response and regulator, resolve prior art, prepare the manuscript, and
certify supported claims on GCP.
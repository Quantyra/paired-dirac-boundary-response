# Finite-cut boundary transport: an explicit mismatch test

Status: exact zero-spectral-parameter collar calculation. It shows why the
zero-angle projector imposed at a finite cut is a separate model assumption;
it does not construct the full physical Dirichlet-to-Neumann map or a Lean
certificate. The starting Hamiltonian and infinity condition are from the
pinned [coupled-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md),
section 1, which itself warns that arbitrary finite cuts need matching.

## Exact test on an angular mode

On a collar x₀≤x≤x₁ take the displayed radial Hamiltonian

    H=-i σ₂ ∂x + σ₁ a(x) D_q,

where a is real and integrable, and take a nonzero angular eigenmode
D_q φ=μ φ. Consider Hψ=0 and the source's zero-angle L condition
P_- ψ(x₁)=0, where P_±=(1±σ₁)/2. The equation is

    ∂x ψ=-μ a(x) σ₃ ψ.

Write λ=μ ∫[x₀,x₁] a(x) dx and let v_+=(1,1)/√2,
v_-=(1,-1)/√2. The unique propagated boundary relation is

    ψ(x₀) ∈ span{exp(λσ₃)v_+}
          = span{cosh(λ)v_+ + sinh(λ)v_-}.             (1)

Equivalently P_-ψ(x₀)=tanh(λ) times the coefficient of P_+ψ(x₀),
expressed in these fixed normalized eigenvectors. Unless λ=0, (1) differs
from the local cut condition P_-ψ(x₀)=0. The R condition is analogous
with the other β eigenspace. The sign of λ changes under a different
coordinate convention, but the nonzero mixing is unaffected.

The computation is exact for this zero-energy separated collar problem:
σ₃ is constant, so no path ordering is needed. Its purpose is a mismatch
example, not an assertion that a finite-cut effective boundary operator is
always a simple hyperbolic function. At nonzero spectral parameter the
transport generator contains additional matrices and generally requires
path ordering; the complete problem also includes the other endpoint,
thermal/Euclidean continuation and all angular sectors. The range of the
transported condition across modes depends on D_q and collar geometry.

## Implication for the paper theorem

The seed theorem can legitimately specify an independent finite-cut local
projector realization and study it on its own terms. To identify that
realization with a physical problem whose boundary data are instead fixed at
conformal infinity, one must supply a transport or limiting-cut argument in
the actual geometry and operator, including spectral dependence. Simply
placing the same matrix projector at a finite cut is not such a derivation.
At zero coupling the relative map between copies drops out, as shown in
[the boundary audit](zero-angle-boundary-map.md), but radial evolution can
still mix the two β components separately on each copy.

The example does not determine a physical wormhole response, demonstrate
failure of a specified complete boundary-value problem, or rule out a
special cut/limit in which the necessary matching holds. Its role is to
prevent importing an infinity boundary condition into the finite-cut proof
without its additional hypothesis. No numerical computation is needed.

Remaining to-do list: establish the actual finite-cut matching or keep it
explicitly conditional; verify the global physical copy isomorphism; finish
the response and novelty audits; write and certify the supported claims.

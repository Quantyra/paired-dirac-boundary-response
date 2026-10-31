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

## Failure of unweighted angular-uniform projector convergence

Let `ell=x_1-x_0>0` and `A_ell=integral_[x_0,x_1] a(x) dx`, with
`A_ell>0`. In the fixed angular eigenspace the transported line at `x_0` is
the span of `v_+ + tau_mu v_-`, where `tau_mu=tanh(mu A_ell)`. The local
projector line is the span of `v_+`. For two one-dimensional subspaces with
angle `theta`, the operator norm of the difference of their orthogonal
projections is `|sin(theta)|`; here this equals

    |tau_mu| / sqrt(1+tau_mu^2).                         (2)

For the unbounded sphere spectrum `|mu_n| -> infinity`, the supremum of (2)
over the angular tower is `1/sqrt(2)` for every fixed `ell>0`, even when
`ell` is arbitrarily small. Thus the direct-sum projector does not converge
to the copied local projector in unweighted operator norm as the collar
shrinks. On a fixed finite angular truncation `|mu|<=M`, by contrast,
`|tau_mu|<=M A_ell`, so the mismatch tends to zero with `A_ell`.

This only rules out an unweighted operator-norm argument that is uniform over
the full angular tower. A scalar heat weight does yield the following
positive-time summability estimate, without addressing the full operator
semigroup. Use the recorded sphere spectrum

    mu_n^2=n(n+q)/b_0^2,       d_n=2(q+2n),
    Theta(t)=sum_(n>=1) d_n exp(-t mu_n^2),

from [`angular-weighted-locality.md`](angular-weighted-locality.md). Define

    M(t,A_ell)=sum_(n>=1) d_n exp(-t mu_n^2) delta_n(A_ell),
    delta_n(A_ell)=|tanh(mu_n A_ell)|/sqrt(1+tanh(mu_n A_ell)^2).

Since `delta_n<=1/sqrt(2)` and `delta_n<=|mu_n|A_ell`, Cauchy--Schwarz
gives

    M(t,A_ell) <= min(Theta(t)/sqrt(2),
        A_ell sqrt(Theta(t)(-Theta'(t)))).             (3)

The angular-weight bound `-Theta'(t)<=(2/(e t))Theta(t/2)` then yields

    M(t,A_ell) <= min(Theta(t)/sqrt(2),
        A_ell sqrt((2/(e t))Theta(t)Theta(t/2))).       (4)

With `H(t)=2b_0^2/t+(q+2)sqrt(pi)b_0/sqrt(t)`, the explicit estimate
`Theta(t)<=H(t)` from that note makes (4) a finite bound. In particular,
for fixed `epsilon>0` it is `O(A_ell)` uniformly on `t in [epsilon,T]`.
As `t` tends to zero, (4) gives only

    M(t,A_ell) <= min(O(b_0^2/t), O(A_ell b_0^2/t^(3/2))). (5)

Thus this model estimate certifies a small relative weighted mismatch along
paths with `A_ell/sqrt(t)->0`. For a fixed collar width it does not give a
vanishing relative error as `t->0`; the unweighted-tower branch of (4)
remains. In fact, for fixed `A_ell>0`, the Riemann-sum scaling
`s=n sqrt(t)/b_0` gives

    Theta(t) ~ 2 b_0^2/t,
    M(t,A_ell)/Theta(t) -> 1/sqrt(2),                    (6)

because `|mu_n|A_ell -> infinity` for every fixed `s>0` in that scaling.
Thus the scalar heat weight alone leaves a nonzero fraction of the projector
mismatch at short times. This is a statement about the zero-energy collar
model, not the full response. It also does not control the full heat semigroup
with its matrix transport, nonzero spectral parameter, thermal images, or the
physical density/contact terms. A common-regulator physical matching still
needs a stronger weighted transport argument.

## Exact nonzero Euclidean spectral parameter in a constant collar

The mismatch is not limited to zero spectral parameter. In the exactly
solvable constant-coefficient collar `a(x)=a_0>0`, the mode equation
`H psi=omega psi` is

    partial_x psi = (-mu a_0 sigma_3+i omega sigma_2)psi.

In the `sigma_1` eigenbasis `(v_+,v_-)`, let
`kappa^2=mu^2 a_0^2-omega^2`. Propagating the terminal line `span(v_+)`
back across width `ell` gives

    psi(x_0) in span(v_+ + tau_(mu,omega) v_-),
    tau_(mu,omega)=(mu a_0-omega)tanh(kappa ell)/kappa. (7)

At Euclidean frequency `omega=i nu`, `kappa=sqrt(mu^2 a_0^2+nu^2)` and
`|tau_(mu,i nu)|=tanh(kappa ell)`. The projection distance from the copied
local line is therefore

    tanh(kappa ell)/sqrt(1+tanh(kappa ell)^2).           (8)

It approaches `1/sqrt(2)` as `kappa ell -> infinity`. Thus adding the
Euclidean frequency tower does not restore unweighted angular/frequency
uniform convergence, even in this constant-collar model. Equations (7)-(8)
are exact for that model only; variable `a(x)` gives a path-ordered transfer
matrix, and neither formula proves convergence of the physical heat trace.

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

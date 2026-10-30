# Sobolev trace surjectivity for the seed square domain

Status: ordinary finite-cut argument using the standard H² boundary jet
trace theorem, not Lean-certified and not an independent verification of
the physical bundle. This supplies the exact trace-space hypothesis in
[the ambient-domain Lean theorem](boundary-kernel-gcp-check.md), conditional
on the smooth finite-cut H¹ realizations and elliptic regularity from
[the domain bridge](finite-cut-elliptic-domain-bridge.md).

## Statement and trace spaces

Let X be compact with smooth boundary, E a smooth Hermitian Clifford bundle,
and P a smooth orthogonal projection on its boundary restriction. Assume
Dom(D)={ψ∈H¹(E):(1−P)γ₀ψ=0}, Dom(D*)={φ∈H¹(E):Pγ₀φ=0}, and the
first-order elliptic regularity needed to identify

    V={ψ∈Dom(D):Dψ∈H¹(E)} ⊂ H²(E).

Write C=H^{3/2}(∂X,P E), B=H^{1/2}(∂X,P E), and define

    Tψ=γ₀ψ ∈ C,       Aψ=P γ₀(Dψ) ∈ B,       ψ∈V.

Then T restricted to ker A is surjective onto C, and it has a bounded
linear right inverse C→V. This is the trace-extension hypothesis of the
checked algebraic lemma, for these particular spaces. It is not asserted
for an arbitrary choice of trace codomain.

## Construction from boundary jets

In a smooth collar, extend the inward or outward unit normal n smoothly and
write D=c(n)∇_n+D_tan+B₀, where D_tan is first order tangential and B₀ is
zeroth order. The normal Clifford action commutes with P and is invertible
on P E. Given v∈C, the tangential contribution

    f=P [D_tan v+B₀v]

is in B. Choose a boundary normal derivative a∈H^{1/2}(∂X,E) with

    P a=−(P c(n) P)^(−1) f;

its (1−P) component may be chosen zero. Smooth coefficients make v→a a
bounded linear map C→H^{1/2}. We use the standard joint jet theorem: the
map ψ↦(γ₀ψ,γ₀∇_nψ) from H²(E) onto
H^{3/2}(∂X,E)×H^{1/2}(∂X,E) has a bounded linear right inverse. In local
half-space coordinates this follows by Fourier lifting with λ=(1+|ξ|²)^{1/2}:

    ψ̂(ξ,y)=(1+λy)e^(−λy) v̂(ξ)+y e^(−λy) â(ξ).

Its boundary value is v and normal derivative a, while its H² norm is
controlled by ||v||_{H^{3/2}}+||a||_{H^{1/2}}. Smooth collar cutoffs,
bundle trivializations and a finite partition of unity give the manifold
version; connection terms are absorbed into the prescribed normal jet.
For a textbook trace result and context see, for example, the joint-jet
statement in [CMU Sobolev notes](https://www.math.cmu.edu/cna/LectureNotesFiles/SOB%2BInt.pdf).

Let ψ be this lift. Its boundary value lies in P E, so ψ∈Dom(D), and
Dψ∈H¹ because ψ∈H² and D has smooth coefficients. The choice of a gives
Pγ₀(Dψ)=0. Hence ψ∈ker A and Tψ=v, proving surjectivity and the stated
bounded right inverse. Conversely, the domain and regularity hypotheses make
these traces meaningful for every element of V.

## Normal-jet map

For b∈W^{2,∞}(X), the boundary normal derivative h=γ₀∂_n b is Lipschitz
in boundary charts. Multiplication by h is bounded on H^{1/2}; the embedding
H^{3/2}→H^{1/2} and smooth c(n) define

    N:C→B,      Nv=(1/2) h c(n)v.

The projected product rule in the square-domain criterion gives the
perturbed condition Aψ−NTψ=0 on the same V. If P E has positive rank,
N=0 implies h=0: test against smooth local sections nonzero at any selected
point and use invertibility of c(n), with continuity of h. Conversely h=0
implies N=0. Thus, under all the stated analytic and geometric hypotheses,
the checked abstract kernel theorem applies to the actual embedded domain
sets. The Sobolev lifting, product rule, geometric identifications and this
last implication are ordinary arguments here; none is represented in Lean.
No numerical check substitutes for them.

Remaining to-do list: match the physical paired bundle and seed realization,
formalize the Sobolev and Clifford steps on GCP, establish response and
regulator limits, complete novelty assessment, and prepare the manuscript.

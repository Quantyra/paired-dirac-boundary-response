# Local angular decay without an auxiliary angular heat factor

Status: ordinary heat-kernel estimate for the separated half-line model
under explicit geometric hypotheses. It gives a candidate route to remove
the additional angular regulator for compact radial insertions, including
insertions reaching the outer endpoint. It is not yet a changing-cut trace
convergence theorem, a curved response result, or a Lean certificate.

## Hypotheses and bound

Let a>0 be real W^{1,∞} on the full half-line and assume

    |a'(x)| ≤ C a(x) almost everywhere.                    (1)

Let K be a compact subset of the half-line, possibly touching its outer
endpoint. Assume there are a₀,d>0 such that a≥a₀ on the relative
2d-neighborhood of K. For the full and sufficiently late cut realizations
of H_μ=-iσ₂∂x+μaσ₁ with the declared local projector, let K_μ(t;x,y) be
the heat kernel of H_μ². Then, for x∈K on the retained interval and t>0,

    ||K_μ(t;x,x)|| ≤ [2 / sqrt(2πt)] exp(C²t/2)
       · [ exp(-μ²a₀²t/4) + 2 exp(-d|μ|a₀/(2√2)) ].     (2)

The constants are independent of the cut, μ and x∈K. The estimate includes
both signs and zero angular modes; it does not assume a uniform positive
lower bound for a near the horizon.

## Argument

The square has mixed D/N data and matrix potential
V=μ²a²-μa'σ₃. By (1) and completing the square,

    V ≥ (μ²/2)a² - C²/2.                                  (3)

The mixed free heat kernel is dominated in matrix norm by the scalar
Neumann kernel. The Trotter product or matrix Feynman–Kac domination used
in the pinned [RN spectral-control note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/rn-higher-mode-boundary-spectral-control.md)
therefore bounds the matrix kernel by the scalar reflected-Brownian kernel
with killing μ²a²/2, multiplied by exp(C²t/2).

Split the scalar semigroup at t/2. Its second-half kernel is bounded by
the free Neumann kernel, whose supremum is 2/sqrt(2πt). The first half
contributes the reflected Brownian expectation of the killing factor. Let
σ be the first time that the reflected path moves distance d from x.
Before σ, the path remains in the relative 2d-neighborhood of K and
therefore sees killing at rate at least λ=μ²a₀²/2. Splitting according to
σ>t/2 or σ≤t/2 gives the expectation bound

    exp(-λt/2) + E_x[exp(-λσ)].

A reflected half-line Brownian motion with generator ∂² is the absolute
value of a Brownian motion started at the corresponding distance from the
endpoint. The absolute-value map is 1-Lipschitz, so an excursion of size d
requires the driving Brownian displacement to reach d. For generator ∂²,
the Laplace transform of the first exit time from (-d,d) is
1/cosh(d√λ)≤2 exp(-d√λ). Replacing d by d/2 weakens the bound and covers
the stated conservative constant uniformly in the endpoint location.
Substitution of λ yields (2). The estimate at μ=0 is valid by continuity
and is intentionally nonsharp.

For u∈L² supported in K, the heat-kernel Hilbert–Schmidt identity and
fiber rank two give a modewise local bound proportional to the right side
of (2) times ||u||²₂. On the compact monopole sphere, the angular eigenvalue
count grows polynomially; hence the sum over all modes of the Gaussian plus
exp(-c|μ|) in (2) is finite for each fixed t>0. This supplies a
cut-uniform local Hilbert–Schmidt bound without inserting e^(-τA²).

## Scope and next checks

The hypotheses (1), the local lower bound and their constants must be
verified for the actual source geometry and chosen cut family. The bound
applies to a compact radial volume insertion; it does not itself establish
Hilbert–Schmidt convergence, differentiate the heat trace, control all
thermal modes or justify t↓0. The complete paired bundle, physical
normalization and common regulator remain separate. The estimate is not a
physical admission margin. No numerical computation is used.

Remaining to-do list: verify (1) for the intended physical family and use
this bound to prove the unsmoothed cut and contact trace limits; complete
the response, novelty and Lean certification work.

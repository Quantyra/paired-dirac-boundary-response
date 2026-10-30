# Logarithmic weighted heat trace: an explicit mixed-boundary comparator

Status: exact flat benchmark and focused prior-art comparison, not a novelty
verdict or a Lean certificate. It supplements
[the derivative-jump comparison](prior-art-derivative-jumps.md). The
[van den Berg–Gilkey–Kirsten source](https://arxiv.org/html/1006.5644v1),
Theorems 1.4 and 1.6, treats singular weights for smooth Laplace-type
operators with mixed boundary conditions. Its problem has a fixed operator
and a weight insertion; it is not the paper's mixed metric variation.

## Flat example

Take the scalar Laplacian on the two-dimensional half-plane y≥0, with
either Dirichlet or Neumann boundary condition, and consider heat trace
density per unit tangential length. Let W(y)=χ(y)y⁷ log y, where χ is
smooth, compactly supported and equal to one near y=0. The exact method of
images gives

    Tr_length[W e^(tΔ_{N/D})]
       = (4πt)^(−1) ∫₀∞ W(y)dy
         ± (4πt)^(−1) ∫₀∞ W(y)e^(−y²/t)dy.               (1)

The plus sign is Neumann and the minus sign is Dirichlet. Changing χ away
from zero changes the reflected integral by an exponentially small term.
Put y=√t s. Since ∫₀∞ s⁷e^(−s²)ds=Γ(4)/2=3,

    ∫₀∞ y⁷ log(y)e^(−y²/t)dy
       = t⁴ [ (3/2) log t + (1/4)Γ'(4) ].              (2)

Consequently the boundary part of (1) contains exactly

    ± [3/(8π)] t³ log t,

besides a finite multiple of t³ and an exponentially small cutoff error.
The bulk term in (1) is retained separately. For a flat mixed condition
with constant complementary projections of ranks r_+ and r_−, the
coefficient is (r_+−r_−)3/(8π), with the same scalar weight on every fiber.
Thus it cancels in this particular flat leading image term when the ranks
are equal; that cancellation says nothing by itself about higher invariants
or the varying Dirac operator.

The example requires no differentiation of the asymptotic theorem in its
weight parameter: the Gaussian integral directly proves the logarithm and
its coefficient. It shows that neither the mere presence of a logarithm nor
the precise power t³ log t is sufficient by itself to claim novelty for a
boundary heat trace. Its coefficient is for a y⁷ log y *weight*, however,
not a y⁴ log y metric field. The mixed Dirac variation has principal-symbol,
first-order and density vertices, and a different observable and normalization.
A direct numerical comparison of the coefficients would therefore be invalid.
The earlier formal parameter-differentiation caveat remains relevant when
using the general theorem, even though this particular example is exact.

Remaining to-do list: compare the full variable-operator calculation with
applicable spinor and polyhomogeneous literature, resolve scalar benchmark
normalization, audit the physical paired realization and regulator, and
certify supported claims on GCP.

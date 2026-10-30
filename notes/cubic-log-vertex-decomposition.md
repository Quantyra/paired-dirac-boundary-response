# Cubic–logarithmic seam by vertex component

Status: ordinary flat-model Fourier-tail calculation under the same
conditional per-exterior normalization as [the boundary coefficient note](flat-boundary-coefficients.md).
It decomposes the t³ log(t) term across the first-vertex components. It is
not a physical paired-domain or Lean certificate.

## Inputs and local coefficient

Let u,w be the pure cubic/log profiles with smooth even cutoffs specified in
[the Fourier-tail note](localized-fourier-tails.md), and write
C=c_u d_w+d_u c_w. Their Fourier product has the term

    conjugate(û(k)) ŵ(k) = ... -288π C |k|^-9 + O(|k|^-10).

Use x=tk² and A(x)=∫₀¹exp[-α(1-α)x]dα. Under the stated rank-two and
half-trace convention, subtract each first-vertex component's Taylor
polynomial through x³. Its first remaining local coefficient has the form
(c_i/(πt))x⁴. The coefficients are

    scalar-potential pair:       c_p =  1/960,
    Clifford pair:               c_Γ = -1/6720,
    grouped scalar vertices:     c_g = -1/1008.             (1)

The second vertex is polynomial of degree at most one in x and contributes
no such remainder. In particular c_p+c_Γ+c_g=-1/10080, matching the
complete tangent multiplier's x⁴ coefficient.

For the first two identities use
A(x)=1-x/6+x²/60-x³/840+O(x⁴), and the half-normalized kernels
x²A(x)/(16πt), xA(x)/(8πt). For the group, Eq. (1) of
[the grouped cubic note](grouped-cubic-seam.md) has prefactor 1/(4πt)
and polynomial 8+(4-16a)x+(-2a+4a²)x². Its x⁴ coefficient inside the
α integral is 5a⁴-(5/3)a³. The beta moments ∫a⁴=1/630 and ∫a³=1/140
give -1/252; multiplying by 1/4 gives c_g.

## Logarithmic extraction

For a component with coefficient c_i, split the k integral at a fixed
large K and t^-1/2. On K≤|k|≤t^-1/2, the x⁴ term and both frequency
signs yield

    [-288 c_i C/π] t³ ∫_K^(t^-1/2) dk/k
       = [144 c_i C/π] t³ log(t) + O(t³).              (2)

The next Taylor term integrates to O(t³) after the prefactor; on the
high-frequency tail the explicit form-factor bounds similarly give O(t³).
The O(|k|^-10) product remainder and bounded-frequency region do not change
the log coefficient. These estimates follow the splitting in the boundary
coefficient note; the cubic–cubic t^(5/2) contribution must be removed
separately before isolating this log term.

Thus the component coefficients multiplying C t³ log(t) are

    scalar-potential pair:       +3/(20π),
    Clifford pair:               -3/(140π),
    grouped scalar vertices:     -1/(7π).                   (3)

Their sum is -1/(70π), the complete tangent coefficient. The individual
coefficients depend on the stated vertex grouping and subtraction; only the
sum represents the complete flat mixed response in this convention.

## Scope

The explicit tail is proved for pure cubic/log profiles and smooth cutoffs;
the broader weighted remainder class needs its own tail estimate. Physical
folding, thermal/angle normalization, contact conversion and regulator
limits remain separate. This decomposition does not settle the scalar prior
art discrepancy or establish novelty. No numerical computation is used.

Remaining to-do list: extend the needed logarithmic tail to the declared
field class, verify physical normalization and response, complete prior-art
review and certify supported claims in Lean on GCP.

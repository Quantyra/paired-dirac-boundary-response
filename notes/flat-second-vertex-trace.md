# Mixed second vertex: explicit local trace contribution

Status: ordinary flat full-plane trace-density calculation under smooth,
compactly supported radial directions. It continues [the mixed-vertex
algebra](flat-dirac-mixed-vertex.md) and compares it with
[the all-frequency tangent multiplier](flat-tangent-multiplier.md). It is
not a physical paired-domain or Lean certificate.

## Second-vertex trace

Let L₀=-Δ on ℝ² with rank-two Clifford fiber. Use the mixed operator W
from Eq. (3) of the mixed-vertex note, and take traces per unit τ length.
For smooth compactly supported u,w, cyclicity of the localized heat trace
makes its contribution

    C₂(t)=-t Tr_density[W_(u,w)e^(-tL₀)].                 (1)

The scalar heat kernel at the diagonal is K_t(0)=(4πt)^(-1), its first
derivatives vanish, and ΔK_t(0)=-K_t(0)/t in two dimensions. Also
tr(Γ)=0 and tr(I)=2. Inserting the left-ordered W gives

    Tr_density[W e^(-tL₀)]
      = (1/(2πt))∫ [4uw/t-(uw''+wu'')-(3/2)u'w']dy.

Integration by parts has no boundary terms for these test functions:
∫(uw''+wu'')=-2∫u'w'. Hence

    C₂(t)= -(2/(πt))∫uw dy - (1/(4π))∫u'w' dy.          (2)

With the Fourier convention in the tangent note, this is a polynomial
multiplier

    C₂(t)=∫(dk/2π) conjugate(û(k)) ŵ(k)
             [-2/(πt)-k²/(4π)].                         (3)

There is no non-polynomial form factor in this second-vertex contribution.
The mixed derivative is not divided by two; the two ordered first-vertex
terms in Duhamel are separate.

## Relation to the complete tangent multiplier

The full-plane rank-two multiplier from the tangent note is
H_t(k)=2F(tk²)/(πt), under that note's trace-density assumptions.
Consequently the sum of the two ordered first-vertex terms has multiplier

    H_first(t,k)=2F(tk²)/(πt)+2/(πt)+k²/(4π).            (4)

Equations (3)–(4) provide an exact bookkeeping split of the complete smooth
flat result. Local polynomial subtractions may be distributed differently
between pieces, but the non-polynomial part of H_t comes from the ordered
first vertices in this representation. In particular the local second
vertex by itself cannot create the noninteger t^(5/2) seam term after
pairing fixed profiles. This does not identify which first-vertex
cross-terms produce that coefficient or reduce them to the scalar-potential
form factor.

## Boundaries and physical scope

The integration by parts above is on the full line with compact smooth
profiles. For even cubic/log profiles, the limit and local subtractions must
be justified in the norms used by the paper, including seam contributions.
A physical half/folded trace, density convention, all contacts and regulator
must be matched separately; (2) must not be assigned a half factor by fiat.
The comparison also does not resolve the scalar-jump prefactor or establish
novelty. No numerical computation is needed.

Remaining to-do list: evaluate the ordered first-vertex decomposition against
scalar form factors, verify the physical folding and rough limits, complete
novelty review, and certify supported claims in Lean on GCP.

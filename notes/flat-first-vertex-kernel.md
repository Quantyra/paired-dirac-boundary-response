# Ordered first-vertex momentum kernel

Status: ordinary flat-plane spin and Gaussian calculation for smooth compact
radial profiles. It gives the first-vertex part of the mixed Dirac tangent
trace explicitly and complements [the second-vertex trace](flat-second-vertex-trace.md).
It does not settle physical folding, prior-art novelty or Lean certification.

## Vertex product

Use p=(p_y,p_τ), q=p+(k,0), Γ=γ_yγ_τ and Γ²=-I. With Fourier convention
from [the tangent multiplier note](flat-tangent-multiplier.md), the first
variation V_u in [the mixed-vertex note](flat-dirac-mixed-vertex.md) has
matrix element, apart from û(k),

    V(p→q)= -S I - k p_τ Γ,
    S=[(2p_y+k)²+4p_τ²]/2.

The reverse momentum transfer has +k p_τ Γ and the same scalar S.
Consequently

    tr[V(p→q)V(q→p)] = 2(S²+k²p_τ²).                     (1)

The plus sign in the second term uses Γ²=-I. The mixed derivative includes
both ordered Duhamel terms. After the change to relative insertion time,
exchange symmetry makes their combined weight t²∫₀¹dα. This is the mixed
derivative, not a single quadratic coefficient.

## Gaussian evaluation

Put x=tk², a=α(1-α), v=1-2α, and shift P_y=p_y+αk, P_τ=p_τ. The
combined heat exponent becomes -t(P²+a k²). Under the normalized Gaussian
in two dimensions,

    E(P_y²)=E(P_τ²)=1/(2t),   E[(P_y²+P_τ²)²]=2/t².

The shifted scalar factor is

    S=2(P_y²+P_τ²)+2vkP_y+(v²k²)/2.

Odd terms vanish. Thus

    E[S²+k²P_τ²]
       =8/t² + (4v²+1/2)k²/t + (v⁴/4)k⁴.            (2)

Using ∫d²P/(2π)² exp(-tP²)=1/(4πt), the two ordered first-vertex
contribution has multiplier

    H_first(t,k) = (1/(2πt)) ∫₀¹ e^(-a x)
       [8+(4v²+1/2)x+(v⁴/4)x²] dα.                   (3)

For compact smooth profiles the Gaussian and time integrals are absolutely
convergent after the standard trace-density localization; no frequency
cutoff is used in (3).

## Consistency with the full response

At x=0, (3) equals 4/(πt); its linear x coefficient is 1/(4πt).
Subtracting the local second vertex -2/(πt)-x/(4πt) leaves 2/(πt)
at x=0 and zero linear coefficient, as required by the complete
multiplier in the tangent note.

More generally, integration by parts in α using a'=v and v'=-2 reduces
(3) to the expression obtained independently by adding back the local
second vertex:

    H_first(t,k)=2F(x)/(πt)+2/(πt)+x/(4πt),
    F(x)=1/2+(1/2)∫₀¹(1+a x)e^(-a x)dα.                 (4)

The endpoint terms in these integrations are retained. Thus (3) supplies a
trace-level decomposition of the Dirac first vertices, including their
Clifford contribution; it is not a scalar-potential-only kernel. Equation
(4) assumes the separate smooth full-plane calculation of F and does not
settle the scalar-jump benchmark or establish novelty.

The physical half trace, copy/sector factors, rough seam and regulator
remain separate obligations. No numerical computation is needed.

Remaining to-do list: compare (3) with applicable scalar/spinor prior form
factors, verify physical folding and rough limits, and certify supported
claims in Lean on GCP.

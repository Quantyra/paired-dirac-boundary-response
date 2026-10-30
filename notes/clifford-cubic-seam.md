# Cubic seam coefficient of the Clifford-pair vertex

Status: ordinary full-frequency flat-model calculation under explicit
Fourier-tail and physical-half normalization hypotheses. It evaluates one
previously grouped Dirac contribution; it is not an independently verified
physical paired theorem, novelty verdict, or Lean certificate.

## Setup and subtraction

Let u,w be real even localized profiles with

    conjugate(û(k)) ŵ(k)=144 c_u c_w |k|^(-8)+o(|k|^(-8)),

and assume k⁸ times the product is bounded and the lower-frequency
integrals used below are finite. These conditions hold for the pure cubic
cutoffs and under the weighted remainder hypotheses identified in
[the boundary-coefficient note](flat-boundary-coefficients.md). Use the
same rank-two full-plane and conditional per-exterior half normalization.
The Clifford-pair multiplier from [the vertex decomposition](flat-vertex-component-form-factors.md)
is x A(x)/(4πt) on the full plane, x=tk² and
A(x)=∫₀¹ exp[-α(1-α)x]dα. After the half factor, subtract its local terms
through x³:

    B_Γ(t)=(1/(8πt)) ∫ dk/(2π) conjugate(û) ŵ
       [x A(x)-x+x²/6-x³/60].                           (1)

The subtractions are declared for this component; the complete response
uses its own combined local subtraction.

## Integral and coefficient

Scaling k=s/√t and applying dominated convergence as in the boundary note
reduces the leading cubic term to

    B_Γ(t) ~ [18/π²] c_u c_w t^(5/2) J_Γ,
    J_Γ=∫₀∞ [A(s²)-1+s²/6-s⁴/60] ds/s⁶.                 (2)

The integral is absolutely convergent: the numerator is O(s⁶) near zero
and O(s⁴) at infinity. With a=α(1-α), its integrand is the average of
exp(-a s²)-1+a s²-(a s²)²/2, which is nonpositive. Tonelli applied to its
negative and r=√a s give

    J_Γ=B(7/2,7/2) J₀,
    J₀=∫₀∞ [e^(-r²)-1+r²-r⁴/2] dr/r⁶.

Integration by parts, with vanishing boundary terms, yields

    J₀=-(2/5)∫₀∞ [e^(-r²)-1+r²] dr/r⁴
       =-4√π/15,
    B(7/2,7/2)=5π/1024,
    J_Γ=-π^(3/2)/768.                                   (3)

Combining (2)–(3), the Clifford-pair contribution is

    B_Γ(t) = -3/(128√π) c_u c_w t^(5/2) + o(t^(5/2)).   (4)

Dominated convergence follows from the bounded scaled Fourier product and
the integrable scaled kernel just described; the finite-frequency part is
O(t³) for sufficiently localized profiles. The negative coefficient is a
subtracted contribution; it does not contradict positivity of the
unsubtracted Clifford kernel.

## Bookkeeping against the complete flat coefficient

Under the same conditional normalization, the independently calculated
scalar-potential pair gives +9/(64√π) c_u c_w, while the complete tangent
coefficient is -15/(1024√π) c_u c_w. If both calculations and their local
subtractions are applied consistently, the remaining grouped first-vertex
terms therefore contribute

    -135/(1024√π) c_u c_w t^(5/2).

This is a difference of independently stated coefficients, not yet a direct
integral evaluation of the grouped terms. The isolated scalar number uses
the independent Duhamel normalization; the discrepancy with the prior
preprint's displayed jump formula remains open. The physical paired
identification, full regulator and novelty decision are also separate.
No numerical computation is used.

Remaining to-do list: independently evaluate the grouped scalar differential
vertices, resolve the source benchmark and physical normalization, complete
the response and prior-art audits, and certify supported claims in Lean.

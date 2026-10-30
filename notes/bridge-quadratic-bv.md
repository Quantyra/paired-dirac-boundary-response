# Quadratic retained bridge term with a third-derivative jump

Status: conditional ordinary periodic model argument, not Lean-certified and
not yet a proof of the physical paired contact. It addresses the
path-dependent A_h^(−3/2) factor left open by
[the exponential-tail estimate](bridge-exponential-tail.md), with regularity
that permits an even cubic seam.

## Claim

On the 2π-periodic line let f be real, m≤|f|≤F, f∈W^{3,∞}, and its third
weak derivative have bounded variation TV(f''')≤T. Let u∈L∞ and
v∈W^{3,∞}. Define A_h, B_h and the covariance-2 Brownian bridge as in the
[quartic-term note](bridge-quartic-term.md), and put

    T₂(h)=h²/(8π) ∫ u(y) E[V_h B_h² A_h^(−3/2)]dy,
    V_h=∫₀¹ v(y+hξ_s)ds.

There is a finite C depending only on m,F, ||f||_{W^{3,∞}}, T,
||u||∞ and ||v||_{W^{3,∞}} such that for |h|≤1,

    |T₂(h)−h² J₀/(8π)−h⁴ J₂/(16π)| ≤ C |h|⁵.        (1)

Here

    J₀=∫u(y) H(v,f²,f')dy,
    J₂=∫u(y){(1/3) ∇H·β+(1/6) αᵀ Hess(H) α}dy,
    H(V,A,B)=V B² A^(−3/2),
    α=(v', 2ff', f''),
    β=(v'', 2[(f')²+ff''], f''').                         (2)

The derivatives of H are evaluated at (v,f²,f'); all derivatives in (2)
are weak representatives. J₂ is an explicit local coefficient; it must
be combined with all other bridge terms before comparing to the source's
geometric heat coefficients. Under a matching −Theta'(t)≤24C_ang/t²,
the weighted error 2Theta'(t) times the remainder in (1) is O(√t) for
t=h². The constant is symbolic, not an admission margin.

## Proof route

First suppose f,v are smooth. Let J(h) be the integral/expectation in T₂
without its h²/(8π) prefactor. The bridge law is invariant under ξ→−ξ,
so J is even. Differentiating twice under the finite expectation is
justified by the lower bound A_h≥m², bounded derivatives and Gaussian
moments. At h=0, the first derivatives of (V_h,A_h,B_h) are α μ₁ and
the second derivatives are β μ₂, where μ_j=∫₀¹ξ_s^j ds. The exact
moments are Eμ₂=1/3 and Eμ₁²=1/6, yielding J(0)=J₀ and J''(0)=J₂.

It remains to control J''(h)−J''(0). Every second-derivative term is a
finite product of bounded smooth functions of (V_h,A_h,B_h) and first or
second h derivatives of those variables. All such factors are uniformly
bounded by a polynomial in X=1+sup_s|ξ_s|, with coefficients depending
on the stated norms and m. Gaussian bridge supremum moments are finite.
Differences from h=0 of all factors except B_h'' are bounded by |h| times
a polynomial in X, using bounded f''', v''' and the lower bound on A_h.
The exceptional factor is

    B_h''(y)−B_0''(y)
      =∫₀¹ ξ_s² [f'''(y+hξ_s)−f'''(y)]ds.

The BV translation estimate on the circle gives
||f'''(·+a)−f'''||_{L¹}≤T|a|. Integrating against |u|≤||u||∞ and taking
expectations therefore bounds this exceptional difference by
||u||∞ T |h| ∫₀¹ E|ξ_s|³ds, times the uniform bounds for the other
factors. Combining the finite terms gives

    |J''(h)−J''(0)|≤C₁ |h|,    |h|≤1.                   (3)

J'(0)=0, so integrating (3) twice gives
|J(h)−J(0)−h²J''(0)/2|≤C₁|h|³/6. Multiplication by h²/(8π) proves (1).

For nonsmooth f, convolve periodically with a positive approximate identity.
This preserves the lower bound if f has a fixed sign, preserves the W^{3,∞}
bounds and does not increase TV(f'''); a continuous f with |f|≥m on the
connected circle has fixed sign. Smooth v similarly. The estimates above are
uniform, and dominated convergence plus L¹ convergence of the third
weak derivative passes J₀, J₂ and (1) to the original fields. This is an
ordinary proof route with explicit hypotheses; it has not been checked in
Lean or independently reviewed.

## Limits and physical relevance

A reflected cubic has a finite jump in f''' and can have f'''∈BV. The
source's logarithmic fourth-derivative weight is locally integrable, which
is compatible with a finite BV bound after fixed-cutoff transitions, but
the actual global coefficient and uniform approximants must still be
verified. The periodic integral has no physical boundary term; transferring
it to the paired half-domain, incorporating thermal images, and justifying
the full bridge representation remain separate. Equation (1) controls only
the retained quadratic exponential term, not A_h^(−1/2) or the complete
curved mixed heat response. No numerical computation replaces these steps.

Remaining to-do list: verify BV bounds for the actual coefficient family,
control the zeroth bridge term and physical boundary, reconcile all local
contacts and regulator limits, complete prior-art review, and certify on GCP.

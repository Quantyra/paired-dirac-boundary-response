# Mixed variation of the fixed-conformal-factor bridge

This differentiates `physical-product-congruence-cutoff-bridge.md` under an
explicit fixed-conformal-factor hypothesis. It identifies the complete
positive-cutoff trace expression to compare; it does not prove the source's
physical normalization, the curved remainder, or regulator removal.

Let the fixed-cut hypotheses of the bridge hold on a common Hilbert space.
Take real directions u,w and define D(s,v)=E(s,v) D E(s,v), where
E(s,v)=exp[-(s u+v w)/2]. Let b be real, bounded and independent of s,v,
and set

  A_r(s,v)=exp(r b/2) D(s,v) exp(r b/2),
  L_r(s,v)=A_r(s,v)*A_r(s,v),
  Lbar_r(s,v)=A_r(s,v)A_r(s,v)*.                             (1)

Assume the multiplier/domain hypotheses hold uniformly in r and in a
neighborhood of s=v=0, the trace identities of the bridge apply there, and
all parameter derivatives through mixed order may pass through the finite
r and proper-time integrals in trace norm. These are substantive analytic
hypotheses; they are not implied by the formal operator expression.

Since b is fixed, differentiation of the bridge endpoint identity gives

  partial_s partial_v [Gamma_(epsilon,T)(1)-Gamma_(epsilon,T)(0)]
   = 1/2 integral_0^1 Tr{b [K_(r,sv)(T)+Kbar_(r,sv)(T)
                              -K_(r,sv)(epsilon)
                              -Kbar_(r,sv)(epsilon)]} dr,        (2)

where K_r(t)=exp(-t L_r), Kbar_r(t)=exp(-t Lbar_r), and the derivatives
are at s=v=0. There are no derivatives of b in (2) because b was explicitly
held fixed. If the physical-to-product conformal ratio moves with the
variation, (2) is incomplete: its b_s, b_v and b_sv terms must be retained
as in `fixed-cut-moving-insertion-mixed-response.md`.

## Moving conformal ratio

The complete mixed derivative follows directly when the interpolation
multiplier varies. Let b=b(s,v) be a bounded real scalar family, let D=D(s,v)
be the declared first-order family, and define A_r(s,v), L_r(s,v) and
Lbar_r(s,v) as in (1), using E_r(s,v)=exp(r b(s,v)/2). Assume uniformly in
r that both first-order domains are preserved on the parameter polydisc and
that the bridge identity, its mixed derivatives and endpoint traces are
valid in trace norm. Set

    B_r(s,v)=K_r(T)+Kbar_r(T)-K_r(epsilon)-Kbar_r(epsilon).

The mixed derivative of the regulated congruence difference is then

    partial_s partial_v [Gamma_(epsilon,T)(1)-Gamma_(epsilon,T)(0)]
      =1/2 integral_0^1 Tr[b_sv B_r+b_s partial_v B_r
                            +b_v partial_s B_r+b partial_s partial_v B_r] dr.

This is the four-term product rule for the moving insertion b and the full
partner endpoint heat expression B_r. The derivatives of B_r include the
ordered first-form vertices and the mixed second-form vertex of each partner;
the s,v dependence of E_r also contributes to those operator derivatives.
Any independently moving density, localization or local action term must be
differentiated and added separately. For a fixed b, b_s=b_v=b_sv=0 and this
reduces to (2). This formula is an exact fixed-cut, positive-endpoint
comparison under the listed hypotheses. It does not prove those hypotheses
for the source realization or permit removal of epsilon, T or the spatial
cut.

For each r and each partner, the complete mixed heat derivative is the sum
of two ordered first-form-vertex insertions minus the mixed second-form
vertex, as in `mixed-heat-vertex-inventory.md`. In a finite Galerkin
approximation this is the ordered time-simplex formula in equation (4) of
`fixed-cut-moving-insertion-mixed-response.md`; its limit must be justified
in trace norm. Both cross-products in the second square vertex are included.
Multiplication by b is outside the full heat derivative in (2), so its trace
cannot in general be replaced by an unweighted trace times a scalar.
Nothing here assumes the two partner traces agree or that square operator
domains are constant.

For the proposed physical-to-product application b=log u_conformal and
D is the product-frame operator, with the fixed ratio and scalar variation
identified on the same finite-cut Hilbert space. Equation (2) then makes the
missing comparison explicit: it is an r-integral of full weighted mixed heat
responses at both proper-time endpoints. It is not the scalar mass-conversion
Theta' contact, and it contains full angular, thermal, boundary and mixed
vertices. The finite-cut physical unitary and partner identifications,
physical-half normalization, any moving density, LLL allocation and local
counterterms must still be checked. No estimate uniform in cut or small time,
no removal of T or epsilon, and no Lean certification is claimed.

Remaining to-do list: establish the physical identifications and uniform
mixed endpoint estimates, prove the curved remainder or record a supported
scope decision, resolve novelty, complete the manuscript, and certify
supported claims in Lean on GCP.

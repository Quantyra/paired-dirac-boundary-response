# Bulk ordered trace away from time endpoints

This supplies a uniform fixed-time bound for the bulk-bulk part of the
ordered mixed response on a compact time subinterval. It uses the smooth
finite-cut model and H5 heat estimates in `physical-h5-from-mixed-h3.md`;
it does not establish endpoint integrability, cut convergence of the trace,
physical source matching, proper-time regulator removal or Lean certification.

Let V_v^bulk be the differential expression in
`finite-cut-first-vertex-boundary-pair.md`. On the smooth cut, its local
product-rule expansion is a finite sum of M_a A with A of order at most two
and uniformly bounded coefficient derivatives. The components a and their
finite sum satisfy

  sum ||a||_2 <= C N(v),
  N(v)=||v||_2+||dv||_2+||nabla^2 v||_2,                (1)

with uniform chart, frame, partition and base-field bounds as in
`finite-cut-mixed-boundary-bulk-pair.md`. This is a form-derived expression;
it is not assigned an independent self-adjoint boundary domain.

Fix t>0 and 0<eta<t/2. For s in [eta,t-eta] put r=t-s. The H5 smoothing
and four-dimensional H3->C0 embedding imply, uniformly over the cut and
field approximant,

  ||M_a A K_(s/2)||_2 <= C_(t,eta) ||a||_2,
  ||M_b B K_(r/2)||_2 <= C_(t,eta) ||b||_2,             (2)

for all order-at-most-two A,B occurring in the expansions. Local partitions
and finite bundle rank are included. For the ordered trace of one pair,
cyclicity and K_s=K_(s/2)^2, K_r=K_(r/2)^2 give

 Tr[M_a A K_s M_b B K_r]
   =Tr[(K_(r/2) M_a A K_(s/2))
       (K_(s/2) M_b B K_(r/2))].                        (3)

Each parenthesized factor is Hilbert--Schmidt: the adjacent heat operator is
bounded and the remaining weighted differential heat factor is controlled by
(2). Schatten Holder and (1) give

 |Tr_form[q_u^bulk K_s q_w^bulk K_r]|
        <= C_(t,eta) N(u)N(w),  eta<=s<=t-eta.           (4)

The trace is defined by the smooth form sandwich and (3), including all
local frame factors. Equation (4) therefore integrates uniformly over the
interior time interval. It does not assume that the differential expression
V_v^bulk preserves the square domain or commute its factors through a heat
operator.

If u is replaced by a smoothly localized outer tail u_tail, whose physical
first two derivatives obey the weighted bounds, the physical L2 estimates in
`physical-cubic-bilinear-integrability.md` give N(u_tail)=O(delta^(3/2)).
Equation (4) then bounds the corresponding interior-time contribution by
C_(t,eta) delta^(3/2) N(w). This conclusion is uniform in the physical-side
field approximation under the common bounds. A moving cutoff must have the
uniform physical derivative bounds used in that cited tail argument.

The constant C_(t,eta) can diverge as eta tends to zero; (4) cannot be
integrated to the endpoints by sending eta down without a separate estimate.
In particular the formal product-rule transfer in
`physical-ordered-vertices-positive-time.md` must still be reconciled with
the exact finite-cut Green terms and all noncommuting matrix coefficients.
Nor does uniform boundedness imply convergence as the physical cut moves.
The boundary-pair and bulk-boundary estimates are separate pieces of the
full first-vertex form expansion.

Remaining to-do list: obtain an endpoint-integrable bulk-bulk estimate and
cut convergence, match physical source and regulator, finish novelty and
manuscript, and certify supported claims in Lean on GCP.
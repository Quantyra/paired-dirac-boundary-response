# A principal ordered vertex against a finite-cut boundary form

This identifies and bounds one actual ordered form pairing, conditional on
uniform graph, trace and long-heat estimates. It extends
`finite-cut-boundary-heat-factor.md`; it does not identify all terms in the
physical response or prove those uniform estimates.

Let D be the closed finite-cut first-order realization, L=D*D, K_s=e^(-sL),
and gamma the H1 boundary trace. Let h be a bounded real boundary coefficient
in L2(boundary), and let a be a bounded real bulk coefficient in L2(X).
The boundary form Q_h(f,g)=<gamma f,h gamma g> is interpreted on H1,
and the principal bulk form is V_a(f,g)=<Df,a Dg> on Dom D. Assume the
first-order graph estimate ||f||_H1 <= C(||f||+||Df||) on Dom D, together
with the uniform multiplicative trace inequality. Assume heat smoothing and
the long-time kernel bounds needed below, uniformly in cut and field cutoff.

For r=t-s and 0<s<=t/2, the heat-smoothed boundary pairing with the
principal bulk form has the boundary trace representation

  T_(a,h)(s,r) = Tr_boundary[M_h gamma K_r D* M_a D K_s gamma*]. (1)

Here (1) is shorthand for the bounded trace-class extension constructed
below; gamma* alone need not be a bounded map into L2(X). The representation
follows first for smooth finite-rank form insertions from the form definition
and cyclicity, then by trace-norm approximation. The sign of an actual Green
boundary contribution is supplied by the Green identity, and its projector
or bounded matrix factors can be retained in the same estimate if they act
on the appropriate boundary spaces. Equation (1) concerns the principal
D* a D vertex only.

The short factor requires a different estimate from gamma D K_s. On the core
of D*, functional calculus and polar decomposition give

  ||K_s D*|| <= C s^(-1/2),  ||D K_s D*|| <= C s^(-1), 0<s<=1.

The first-order graph and multiplicative trace estimates imply

  ||gamma K_s D*|| <= C s^(-3/4),
  ||D K_s gamma*|| <= C s^(-3/4),                     (2)

where the second operator is the adjoint extension of the first. For a fixed
time interval, the harmless large-s contribution is absorbed into C_t.

Split the long heat factor at r/2. For r in [t/2,t], the assumed volume and
boundary heat diagonal bounds yield

  ||M_h gamma K_(r/2)||_2 <= C_t ||h||_2,
  ||M_a D K_(r/2)||_2 <= C_t ||a||_2.                 (3)

In the second estimate the diagonal is for D K_(r/2), not merely K_(r/2).
The trace in (1) is the trace-class product

  (M_h gamma K_(r/2)) (K_(r/2) D* M_a) (D K_s gamma*).

The middle factor is the adjoint of M_a D K_(r/2). Schatten Holder and
(2)-(3) therefore give

  |T_(a,h)(s,t-s)| <= C_t s^(-3/4) ||h||_2 ||a||_2. (4)

The same estimate covers s in [t/2,t) by taking adjoints and exchanging the
vertices: after conjugation, the boundary and bulk insertions exchange
positions and the short factor is again D K_(t-s) gamma*. Thus

  integral_0^t |T_(a,h)(s,t-s)| ds <= C_t ||h||_2 ||a||_2. (5)

For the radial Green coefficient h=E_b^4 partial_n w, the preceding boundary
audit gives ||h||_infinity=O(delta^3), ||h||_1=O(1), so
||h||_2=O(delta^(3/2)). If ||a||_2 is uniformly bounded, (5) vanishes at
that rate for each fixed t>0. The bound can be singular as t approaches zero.

The physical first vertex also contains D*B and C D, and its Green transfer
must be derived with the correct sign, projectors and all density/contact
terms. The derivation above is not a proof that their sum equals (1), nor a
common-regulator or subtracted proper-time result. The graph, trace, boundary
and derivative heat bounds are explicit hypotheses, not established here.
No numerical calculation is used and no Lean certificate is asserted.

Remaining to-do list: derive every physical boundary insertion and estimate
its ordered terms, prove the uniform analytic assumptions and regulator
matching, resolve prior art, prepare the manuscript, and certify supported
claims in Lean on GCP.
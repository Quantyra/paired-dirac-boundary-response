# Conditional bridge from a heat remainder to a cutoff endpoint

This gives the exact calculus bridge needed for comparing the two objects in
[p1d-response-versus-conversion.md](p1d-response-versus-conversion.md). It
is conditional on identifying their actual physical traces and subtractions;
it does not prove the P1-D estimate or the source's physical endpoint formula.

Let K(t) be a scalar difference of mixed heat traces at a fixed regulator,
including all vertices and signs in the specified difference. Suppose that
for each positive cutoff e the corresponding subtracted action difference is

  J(e)= (1/2) integral_e^infinity K(t) dt/t - C(e),          (1)

where the integral and its mixed variations are justified, C is a C1 local
counterterm, and K is continuous for t>0. The upper endpoint is retained in
(1); its existence is an assumption, not a consequence of small-time bounds.
The fixed-regulator fundamental theorem gives

  J'(t)=-K(t)/(2t)-C'(t)=-r(t)/t^2,
  r(t)=t K(t)/2+t^2 C'(t).                                (2)

Thus the exact remainder entering the dt/t^2 integral is r only when the
heat difference and the derivative of the endpoint counterterm combine in
precisely (2). This is a necessary bookkeeping test for a proposed
identification; the definition of the source's localized r_curved must be
matched separately, including tangent restoration, contacts and regulator.

If |r(t)|<=A N t^(3/2) for 0<t<=t0, with N the product of the two direction
norms, then J(t) has a finite limit J(0) as t decreases to zero and

  |J(e)-J(0)| <= 2 A N sqrt(e),  0<e<=t0.                 (3)

Indeed, integrate (2) between positive cutoffs and use the Cauchy criterion;
no interchange of the regulator limit and the trace is implicit. If the same
bound holds with one A for all physical-side regulators, (3) is uniform in
those regulators. It still does not show that their finite parts converge:
that additionally requires convergence of J_reg(e) at arbitrarily small
fixed positive e, including all local restorations. If J_reg(e*) converges for every
0<e*<=t0 and (3) holds uniformly, then J_reg(0) is Cauchy as the regulator
is removed: first choose e* small enough to control the uniform errors, then
choose the regulators small enough to control their fixed-e* difference. The
fixed-positive-time convergence must therefore be available at every chosen
small e*, not merely at one arbitrary cutoff.

Conversely, convergence of J(e) or an O(e) endpoint remainder alone does not
imply the pointwise P1-D bound: differentiation can amplify oscillations, and
(2) must first be established with the same subtraction. The algebraic
identity does not address changing square domains, cyclicity, ultraviolet
counterterms, the separate zero sector or large-time convergence. It is not
Lean-certified and needs no numerical execution.

Remaining to-do list: prove the actual mixed heat/counterterm identification,
its uniform curved estimate and positive-time convergence; settle physical
normalization and novelty; complete the manuscript and Lean certification.

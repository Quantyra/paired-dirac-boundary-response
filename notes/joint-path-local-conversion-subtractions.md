# Local conversion subtractions along the joint model path

This checks the auxiliary endpoint-conversion counterterms alongside
`weighted-rough-joint-heat-limit.md`. It does not identify the endpoint with
the P1-D proper-time remainder, establish the physical conversion, or certify
Lean.

Use the periodic auxiliary coefficient and direction hypotheses of
`conversion-local-coefficient-cutoff-rate.md`: common positivity, uniform
W3,infinity bounds, the stated source local formulas and the same measure
and normalization in geometric and contact terms. Let e be the physical-side
weighted cutoff and delta the separate moving-cut scale. Assume the periodic
extensions and their charts are chosen consistently, with uniform interior
bounds and the reflection seam kept fixed in the common reference chart.

For the physical-side cutoff and smooth approximants in
`weighted-remainder-cutoff.md`, the weighted fourth-derivative estimate gives

    ||f_e||_W4,infinity(side) <= C(1+|log e|),          (1)

and similarly for the directions, provided their fixed interior extensions
have the same bound. The cubic part has zero classical fourth derivative on
each side; its third-derivative jump is retained at the seam. A cutoff
approximant is zero in the remainder near the seam, while outside its inner
transition y is at least a fixed multiple of e. Thus the weighted j=4 bound
is at most C(1+|log e|). This is a piecewise W4 bound, not a global W4 bound
on the reflected double.

Assume the moving chart map F_delta has derivatives through order three
within O(delta) of identity in the relevant fixed charts and maps each side
of the reflected seam to itself. The chain rule and the Lipschitz bounds for
third derivatives on each side then give

    ||f_e composed with F_delta-f_e||_W3,infinity(side)
        <= C delta(1+|log e|),                           (2)

and the same for u_e,w_e. Combine (2) with the previously established
physical-cutoff convergence O(e(1+|log e|)) in W3,infinity. Under the fixed
periodic extension assumptions, the total coefficient distance can be taken
as

    D_(e,delta) <= C (e+delta)(1+|log e|).               (3)

The local-coefficient argument cited above then gives O(D_(e,delta)) for the
difference of the finite and inverse-time conversion coefficients, with the
fourth-order term interpreted through its weak integration-by-parts formula.
The leading inverse-square coefficient vanishes at each cutoff if the exact
normalization relation g_-1=2 i_0 holds with the same measure, as assumed
there; it is not inferred from a limiting cancellation.

For the explicit path e=epsilon^9, delta=exp(-4L/epsilon), set the endpoint
heat time t=epsilon. Then D_(e,delta)/t -> 0 and D_(e,delta)->0. Therefore,
under the conditional uniform conversion expansion in
`conversion-cutoff-dependent-subtractions.md`, replacing its cutoff-dependent
inverse-time counterterm by the limiting inverse-time coefficient changes the
subtracted endpoint by a vanishing amount; the finite coefficients also
converge. If the exact inverse-square cancellation is unavailable, the
stronger requirement D_(e,delta)/t^2->0 is also satisfied on this path, but
the precise leading coefficient must still be independently identified.

The moving-cut diffeomorphism in the compact half-product model does not by
itself construct the seam-preserving periodic map assumed above. Likewise,
(3) does not establish uniform contact or geometric remainders, physical
half-trace normalization, transported boundary data, or the counterterms of
a different physical regulator. Those are separate obligations. The result
is an auxiliary endpoint statement, not a physical admission margin or a
proper-time-integrated curved-response bound. No numerical calculation is
used.

Remaining to-do list: construct the common physical regulator and boundary
matching, prove the full subtracted response, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
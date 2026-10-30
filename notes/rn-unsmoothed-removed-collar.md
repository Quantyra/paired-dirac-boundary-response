# Unsmoothed removed-collar trace on the RN reference

This applies `local-angular-decay.md` and
`rn-proper-canonical-collar-jets.md` to remove the extra angular heat factor
from the quadratic removed-collar estimate. It is a result for the fixed
separated canonical RN model, not an identification with the physical
Euclidean paired trace, common-regulator theorem or Lean certificate.

Let H be the direct sum of the separated self-adjoint H_mu in
`rn-unsmoothed-cut-contact.md`, with all sphere modes, multiplicities and
zero modes. Let C_ell be the outer collar in canonical coordinate and put

    B_ell(t)=M_(1_C_ell u) exp(-t H²/2),  t>0.

For ell sufficiently small, C_ell lies in one fixed compact K on which the
coefficient a and the relative-neighborhood hypotheses of
`local-angular-decay.md` hold with common positive constants. The local
Hilbert--Schmidt estimate and the compact-sphere eigenvalue counting bound
then give, for 0<t<=t0,

    ||B_ell(t)||_2² <= C_K ||1_C_ell u||_2²
                            t^(-1/2)(1+t^-1).              (1)

To see the sum, the modewise diagonal estimate is a constant times
||1_C_ell u||² t^-1/2 [exp(-c mu² t)+2exp(-c'|mu|)]. The counting
bound N(Lambda)<=C(1+Lambda²) gives a Gaussian sum bounded by
C'(1+t^-1), while the second sum is finite. The constants include the
finite radial fiber, fixed geometry and t0. No added angular factor has
been inserted. B_ell*B_ell is trace class and its trace norm is the left
side of (1).

If the direction obeys the weighted cubic bound in product-frame proper
distance, the RN coordinate comparison gives
||1_C_ell u||²_2<=C_u ell^7. Thus

    ||B_ell(t)*B_ell(t)||_1 <= C'_u ell^7 t^(-3/2),
                                                   0<t<=min(1,t0). (2)

For a merely bounded direction the corresponding power is ell rather
than ell^7. Therefore ell^7/t^(3/2)->0 is a sufficient joint condition for
this cubic-zero quadratic trace contribution to vanish, with fixed geometry
and uniform direction bound. At a radius-R cut ell=O(R^-1), the numerator
is O(R^-7). These are upper estimates, not admission margins.

The estimate covers the removed-collar contribution only. It does not
provide a quantitative retained-region heat difference, a boundary trace
evaluation, or a variation vertex; nor does it identify H² with the full
physical Euclidean operator. The fixed-t unsmoothed contact limit in the
cited RN note is a separate result and does not make (2) a uniform
common-regulator theorem. No numerical calculation is used.

Remaining to-do list: establish the physical operator and normalization,
control retained-region and regulator errors, complete novelty and manuscript,
and certify supported claims in Lean on GCP.

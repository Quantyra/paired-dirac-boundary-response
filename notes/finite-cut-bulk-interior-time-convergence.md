# Cut convergence of bulk ordered traces away from endpoints

This strengthens `finite-cut-ordered-bulk-interior-time.md` from a uniform
bound to a joint cut/field limit on a fixed interior time interval. It
assumes the specified fixed-seed finite-cut model, its H5 and diagonal bounds,
and the strong positive-time semigroup limit described below. It does not
prove endpoint integrability, the physical source normalization, a common
proper-time regulator or Lean certification.

Let X_j exhaust the complete physical space X, and embed finite-cut heat
operators K_(j,e,s) by restriction and zero extension into L2(X). Let K_s
be the limiting complete-space heat operator for b. Along the chosen joint
sequence j->infinity, e->0, assume:

1. K_(j,e,s)->K_s strongly for every s>0, as supplied by the cut convergence
   and W1,infinity field comparison in
   `physical-contact-joint-cut-approximants.md` under their hypotheses.
2. The H5 local smoothing and weighted diagonal bounds of
   `physical-h5-from-mixed-h3.md` hold uniformly on both finite-cut and
   complete models. On each fixed compact interior chart, the coefficients
   and their derivatives needed below converge locally uniformly.
3. The real direction triples and their physical first two covariant
   derivatives converge in L2, with uniformly bounded N(v) as in
   `finite-cut-ordered-bulk-interior-time.md`. The raw weighted cutoff gives
   this convergence for the displayed collar fields; any interior smoothing
   must satisfy its own matching assumption.
4. The bulk-vertex decompositions admit either finitely many global bounded
   differential factors or a uniformly locally finite atlas with a
   square-summable partition estimate for the L2 coefficient norms. This
   is required to sum chartwise trace estimates on the noncompact space.

On a fixed compact interior chart, let A_(j,e) be an order-k differential
factor, k<=2, whose coefficients and derivatives through order k converge
locally uniformly to A. For a smooth compactly supported multiplier chi,

 M_chi A_(j,e) K_(j,e,s) -> M_chi A K_s in Hilbert--Schmidt norm. (1)

Indeed, local H5 bounds and strong heat convergence imply strong convergence
of the left side: on a slightly smaller compact chart, Rellich compactness
and uniqueness of the L2 limit identify all local derivative limits through
order two. For the adjoints, apply them first to smooth compactly supported
test sections. Local coefficient convergence makes
A_(j,e)* M_conj(chi)g converge in L2, and strong heat convergence then
proves adjoint convergence on that dense set; uniform boundedness extends
it to all L2. Here A_(j,e)* is the local formal adjoint acting on a test
supported away from the moving boundary, not an assumed global square-domain
adjoint.

Uniform smoothing maps the left side into H^(5-k) on a fixed compact chart.
The compact embedding H^(5-k)->L2 in dimension four has singular values
O(n^(-(5-k)/4)); for k<=2 their squares are summable. Its ideal factorization
gives a uniform Hilbert--Schmidt tail. Strong convergence of the operators
and their adjoints plus collective compactness gives operator-norm
convergence; combining it with the uniform square-summable singular-value
tail proves (1). A finite bundle atlas and partition of unity are handled
termwise.

For an arbitrary L2 coefficient a, approximate it by compact smooth
multipliers. The uniform weighted derivative heat bound gives

 ||M_a A_(j,e) K_(j,e,s)||_2 <= C_s ||a||_2,             (2)

and similarly for the limiting operator. It extends (1) to L2 multipliers;
if a_(j,e)->a in L2, (2) also handles the varying multiplier. Fixed physical
outer tails are small in L2, so this approximation includes insertions that
reach infinity. The constants may depend on s but are uniform for s bounded
away from zero.

Expand the two bulk vertices into weighted differential factors as in the
preceding interior-time note. Strong convergence of the unweighted heat
factors and Hilbert--Schmidt convergence (1)--(2), together with the fact
that strong bounded operators multiply convergent Hilbert--Schmidt factors
continuously in Hilbert--Schmidt norm, imply convergence of each split trace
in its equation (3). Summing under hypothesis 4 gives, for each
0<s<t,

 Tr_form[q_(u_e)^bulk K_(j,e,s) q_(w_e)^bulk K_(j,e,t-s)]
       -> Tr_form[q_u^bulk K_s q_w^bulk K_(t-s)].         (3)

For any fixed eta in (0,t/2), the uniform bound in
`finite-cut-ordered-bulk-interior-time.md` dominates the integrand on
[eta,t-eta]. Dominated convergence therefore gives convergence of the
integrals on that interval, including the bounded Duhamel time weight.
This is a joint-sequence result under the listed local coefficient and field
convergence hypotheses; it does not assert a rate.

No conclusion follows by sending eta to zero until an endpoint-integrable
majorant has been proved. Boundary-form terms have their own estimates and
must be combined only after their hypotheses and normalizations are matched.
The present statement also does not identify the physical time-reduced
source trace or control the limit t->0. No numerical run or Lean certificate
is claimed.

Remaining to-do list: prove the bulk endpoint majorant, assemble the actual
physical source and regulator, finish novelty and manuscript, and certify
supported claims in Lean on GCP.
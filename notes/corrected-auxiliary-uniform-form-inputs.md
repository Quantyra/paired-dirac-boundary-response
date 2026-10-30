# Uniform graph and complex-form inputs for the corrected auxiliary

This verifies the global analytic inputs for the explicit periodic auxiliary
of `corrected-moving-cut-common-collar.md`, on its fixed full cylinder. It
does not establish the corresponding physical-orbit bounds or the physical
bundle and source map.

Let C=S1_(2L) x S1_T with fixed spin structure and Clifford fiber. Suppose
f is real and positive with m<=f<=M and ||f'||_infinity<=G, uniformly over
the seam-corrected family. Define on H1(C)

  D_f=gamma_y partial_y+f(y) gamma_tau partial_tau.      (1)

The Hermitian Clifford matrices square to one and anticommute. On smooth
sections, periodic integration by parts gives

  ||D_f h||^2 = ||partial_y h||^2+||f partial_tau h||^2
                 + <h,-gamma_y gamma_tau f' partial_tau h>. (2)

The last term is bounded in absolute value by G ||h|| ||partial_tau h||.
Using m>0 and Young's inequality, one obtains uniform constants c,C>0
such that

  ||D_f h||^2+C||h||^2 >= c ||h||_H1^2.               (3)

The reverse H1->L2 bound is immediate from (1), so the graph norm is uniformly
equivalent to H1. Extend (2)-(3) by smooth periodic core density; W1,infinity
coefficients suffice. No bound on higher derivatives of the seam correction
is needed for this graph estimate.

For real scalar b with uniformly bounded W1,infinity norm, let E_b=e^(-b/2)
and D_(f,b)=E_b D_f E_b. Scalar multiplication preserves H1, and the product
rule gives a uniformly bounded commutator. The congruence graph comparison
therefore transfers (3) uniformly to D_(f,b). Its form
q_b(h,k)=<D_(f,b)h,D_(f,b)k> has a common coercive shift and common H1
form domain.

For directions v with a common W1,infinity bound, set E_z=exp[-(b+zv)/2]
and use the holomorphic form q_z(h,k)=<D_z h,D_(bar z)k> with the slot
convention of `paired-positive-time-trace-derivatives.md`. The product rule
and bounded exponential derivatives give a uniform O(|z|) perturbation of
the real form in the H1 form norm. A single sufficiently small complex disk
therefore retains a uniform coercive shift, sectorial angle, and form bound.
For real Lipschitz weights, the same product rule bounds each first-order
commutator by C||d phi||_infinity, uniformly on that disk. These are the
hypotheses used in `complex-family-weighted-heat-bound.md`.

The auxiliary cylinder, Hilbert norm and H1 form domain are fixed, so the
H1->L2 embedding is a fixed S4 operator in dimension two. The complex heat
and first-derivative Schatten estimates in the cited locality notes therefore
have constants uniform over the corrected coefficient and scalar families,
provided the stated uniform bounds and common parameter disk hold. The
half-cylinder projector statement additionally uses the reflection-domain
identification in `compact-reflected-auxiliary.md`; it is not inferred from
(3) alone.

The compact physical orbit with its bolt and moving boundary still needs its
own common-domain, sectorial and embedding constants. The physical copy map,
source normalization and common regulator are also separate. No numerical run
or Lean certificate is claimed.

Remaining to-do list: verify the physical-side uniform hypotheses and source
matching, complete the regulator and prior-art audits, prepare the manuscript,
and certify supported claims in Lean on GCP.
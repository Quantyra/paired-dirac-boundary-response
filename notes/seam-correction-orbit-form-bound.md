# Orbit form bound for the seam correction

This checks the operator-form part of the parameter eta in
`seam-correction-joint-cutoff-budget.md` for the declared half-density orbit
model. It does not identify that model with the physical cut or prove the
finite-part subtraction.

On a fixed cylinder or half-cylinder with the same H1 projector domain V,
let

  D_f=gamma_y partial_y + f(y) gamma_tau partial_tau.   (1)

The Clifford matrices are fixed bounded fiber maps. Let f,g be real bounded
positive coefficients with common bounds, and let b,c be bounded real
scalar fields with bounded first weak derivatives. Set E_b=exp(-b/2) and
D_(f,b)=E_b D_f E_b on V. Assume scalar multipliers and inverses preserve V.
The distributional product rule gives, for h in V,

  D_(f,b)h = E_b^2 D_f h + E_b (D_f E_b) h.           (2)

Here D_f E_b means the zero-order Clifford multiplier obtained by applying
the differential expression to the scalar; no second derivative is used.
Uniform bounds and the mean-value formula for the exponential imply

  ||(D_(f,b)-D_(g,c))h||_2
     <= C (||f-g||_infinity+||b-c||_W1,infinity) ||h||_H1. (3)

The constant depends on the common bounds and the fixed Clifford
representation. For example, (D_f-D_g)h=(f-g)gamma_tau partial_tau h,
while the difference of the second terms in (2) is controlled by the
coefficient difference and the W1 difference of E_b,E_c.

Let q_(f,b)(h,k)=<D_(f,b)h,D_(f,b)k>. The common H1->L2 bound for the
Dirac factors and (3) give

  |q_(f,b)(h,k)-q_(g,c)(h,k)|
      <= C (||f-g||_infinity+||b-c||_W1,infinity)
                         ||h||_H1 ||k||_H1.             (4)

For a holomorphic two-parameter form family, use D_(f,z) and D_(f,bar z)
in the two slots as in `paired-positive-time-trace-derivatives.md`.
The same bound holds uniformly on a fixed bounded parameter polydisc if the
base and direction fields all have the stated common W1 bounds and their
corresponding differences are controlled. The associated form domain stays
V; no equality of the square-operator domains is assumed.

For the RN seam correction, the translated and corrected metric coefficients
differ in L-infinity by O(delta^(5/4)); their associated cubic-field
corrections are O(delta^2) in W1. Thus, on the same half-density coordinate,
(4) bounds this direct form perturbation by O(delta^(5/4)+delta^2). If the
comparison also includes the O(delta) moving-coordinate transport, use the
larger O(delta) bound. Periodic patch transitions, a change of physical
measure or a different half-density unitary must be included in the actual
coefficient comparison; (4) does not silently identify them. The explicit
source boundary, thermal normalization, local counterterms and full
regulator remain separate. No numerical run or Lean certificate is claimed.

Remaining to-do list: identify the corrected auxiliary with the physical
orbit and its source trace, control all subtraction and regulator terms,
resolve prior art, prepare the manuscript, and certify claims in Lean on GCP.
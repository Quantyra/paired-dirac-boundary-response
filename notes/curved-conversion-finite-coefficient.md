# Conditional finite coefficient of the curved conversion

This continues `curved-conversion-leading-local-terms.md` by independently
combining the displayed coefficients of the frozen
`current-variable-contact-conversion.md` through finite order. It is an
algebraic consistency audit, conditional on those coefficients and their
remainder hypotheses; it is not a proof of the rough curved expansion,
physical regulator removal or Lean certification.

Use the common source measure and fixed-coordinate insertions u,w. Assume
all integrations by parts below are valid, including the physical boundary
and regular bolt. Write Theta=C/t+H0+H1 t+O(t²) and
Theta'=-C/t²+H1+O(t), where C=2b0² is twice the frozen source's angular
coefficient named C. The source's mixed conversion is

 J_t'' = Theta (D_w T_t(u)+D_u T_t(w))/2 + 2 Theta' I_t(u,w). (1)

For the source's listed coefficients write

 (D_w T_t(u)+D_u T_t(w))/2
   =(1/(4pi))[4uw/t - grad u.grad w/3 + t G2] integrated,
 I_t=(1/(4pi)) integral [2uw+t(-Ruw/6-grad u.grad w/3)+t² I2],
 I2=(-R²/120-Delta R/60)uw+R grad u.grad w/60
                                      +(Delta u)(Delta w)/30. (2)

The omitted terms must be small enough after angular multiplication to be
o(1); this is a hypothesis, not a consequence of the coefficients. The
source's delta A2 formula, symmetrized in u,w, implies after integration by
parts

 integral G2 = (1/60) integral [ (R²+2 Delta R)uw
                   -4R grad u.grad w+2(Delta u)(Delta w)]. (3)

For example, integral R(u Delta w+w Delta u) equals
integral [(Delta R)uw-2R grad u.grad w]. The Delta R term must be retained
as a distribution if the seam is rough; products and boundary terms then
require separate justification.

Inserting (2)--(3) into (1), the finite term is

 (1/(4pi)) integral {
   [8H1+C R²/30+C Delta R/15]uw
   -[H0/3+C R/10] grad u.grad w
   -C(Delta u)(Delta w)/30 }.                               (4)

The two 4H1 uw contributions come separately from Theta times the
leading geometric coefficient and from 2Theta' times the leading contact.
The remaining C terms are C(G2-2I2); H0 multiplies only the indicated
geometric coefficient at this order. Substituting C=2 C_source makes (4)
exactly the finite local expression in equation (9) of the frozen source.
This checks its factors and angular convention without assuming a cancellation
of omitted remainders.

The same expansion produces the inverse-time local term recorded in the
preceding audit. A finite-part prescription removes inverse powers only
after the physical trace, local terms and common regulator are identified.
Equation (4) does not establish that the remainder tends uniformly to zero,
that moving-coordinate insertions are absent, or that the actual finite-cut
bundle and domains satisfy the hypotheses. It also does not evaluate P1-D's
distinct curved mixed-response remainder. No numerical computation is used.

Remaining to-do list: establish the curved expansion and uniform remainder,
physical domain and regulator matching, decide novelty, prepare the manuscript,
and certify supported statements in Lean on GCP.

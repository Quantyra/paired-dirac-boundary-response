# Weak limit of the RN contact coefficient under cutoff

This establishes a weak passage needed in `bridge-contact-t2-identity.md`
for the fixed RN collar cutoff of `rn-cutoff-third-derivative-convergence.md`.
It is an ordinary auxiliary-periodic argument, not a physical paired trace,
regulator theorem or Lean certificate.

Let f_e,f be the positive even periodic auxiliary coefficients obtained
from the fixed RN collar construction, with common fixed extensions and
cutoffs. Suppose f_e->f in W^{3,infinity} on each physical side, their
third-derivative total variations are uniformly bounded, and their seam
jump is the same for all e. Let v_e,v be similarly reflected localized
weighted directions with v_e->v in W^{3,infinity} on each side and uniform
TV(v_e'''). Let u_e->u uniformly, with uniformly bounded Lipschitz norms.
The scalar cutoff construction supplies these facts under the stated seed,
collar and transition hypotheses; if the global extensions differ, their
convergence and BV bounds must also be verified.

Denote by Df_e''' and Dv_e''' the periodic distributional derivatives,
finite signed measures. Then

    Df_e''' -> Df''',     Dv_e''' -> Dv'''   weak-* as measures. (1)

For smooth periodic test functions, (1) follows from integration by parts
and L1 convergence of the third derivatives. The uniform total-variation
bound extends convergence to every continuous test function by uniform
approximation. The common seam atom is not lost: in particular it is the
explicit atom from `rn-seed-cubic-boundary-jet.md`, and the remaining measure
is the weak-* limit of the off-seam parts. Uniform W³ convergence alone
would not give the uniform measure bound needed for this extension.

The local fourth-order bridge coefficient in the source is a sum of
products of derivatives through order three and the two measure terms

    (1/60) [ f^(-1) Dv''' - v f^(-2) Df''' ].              (2)

For each cutoff, multiply (2) by the continuous smearing u_e. Since f_e
is uniformly positive and the relevant coefficients converge uniformly,
their pairings with the uniformly bounded measures converge: split a
pairing into the difference of the test coefficients and the weak-* limit
with the fixed continuous limiting coefficient. All lower-order products
converge in L1 by W³ convergence and uniform bounds. The integral of the
entire bridge coefficient therefore converges to its distributional limit.
This is convergence of the *local coefficient*, not a statement that the
heat remainder converges uniformly in its time and cutoff parameters.

The smooth identity in `bridge-contact-t2-identity.md` extends to the same
limit by periodic mollification: positive mollifiers preserve a uniform lower
bound and BV bounds, while lower derivatives converge and the highest
terms pair as above. Integration by parts is performed on the full periodic
double, so the seam measure is retained. If u(0)=0, its explicit delta
pairing vanishes; this does not remove off-seam terms or justify a half-line
normalization without the separate folding argument.

The physical cutoff, periodic mollification and heat cutoff serve different
purposes. This result does not equate them, verify the global domain or
prove the metric variation and common-regulator limit. It also depends on
the existing source's smooth bridge coefficient; its independent derivation
remains an audit item. No numerical computation is used.

Remaining to-do list: verify physical paired and normalization hypotheses,
prove the geometric response and regulator limit, decide novelty, prepare
the manuscript, and certify supported claims in Lean on GCP.

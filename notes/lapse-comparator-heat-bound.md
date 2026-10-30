# Positive-time heat bound for the lapse comparator

This derives an operator-norm heat estimate for the auxiliary pair in
`lapse-shrinking-collar-comparator.md`. It uses their common first-order form
domain, not a common square domain. It is not a physical trace estimate or a
Lean certificate.

Let A be closed densely defined, V=Dom A, and let F_ell and F0 be real
positive bounded multipliers with F_ell>=m>0 and F0>0. Let
L_ell=(F_ell A)*(F_ell A) and L0=(F0 A)*(F0 A), with their natural
composition domains. Put delta=||F_ell²-F0²||∞. For every t>0,

    ||exp(-t L_ell)-exp(-t L0)||
       <= pi delta/(2 exp(1) m F0).                         (1)

In particular, the shrinking RN collar construction has delta=O(ell²), so
this is O(ell²) uniformly for t>0. This is an auxiliary operator-norm
statement; it does not imply trace-norm convergence.

For 0<s<t, the variational difference-of-semigroups identity pairs unit
vectors x,y with the form difference evaluated on
exp(-s L0)x and exp(-(t-s)L_ell)y. It follows by differentiating the
regularized pairing on [epsilon,t-epsilon] and passing epsilon->0. The
form difference is

 <A exp(-(t-s)L_ell)y,(F_ell²-F0²) A exp(-s L0)x>.

Spectral calculus and F_ell>=m give

 ||A exp(-r L_ell)|| <= [m sqrt(2 exp(1) r)]^(-1),
 ||A exp(-r L0)|| <= [F0 sqrt(2 exp(1) r)]^(-1).          (2)

These bounds follow from L=P*P and sup_(lambda>=0) sqrt(lambda)
exp(-r lambda)=(2 exp(1) r)^(-1/2). Thus the pairing is dominated by

 delta/[2 exp(1) m F0 sqrt(s(t-s))],

which is integrable, with integral pi times the prefactor. Taking the
supremum over unit x,y proves (1). The endpoint limits in the regularized
identity follow from strong continuity of the two semigroups and the
integrable majorant; no trace/contour interchange is involved.

The estimate is uniform in time because it compares a global multiplicative
form perturbation relative to the common energy, whose size is O(ell²).
The auxiliary lapse equals the physical lapse only inside the shrinking
collar. Comparing to the physical heat operator still needs a locality
estimate with its shrinking separation, and an operator-norm bound alone
cannot control an infinite trace or its angular/thermal sum. The actual
paired boundary realization and unitary frame must also be identified.
No numerical computation is used.

Remaining to-do list: prove physical-to-auxiliary locality and trace bounds,
match domains and the common regulator, complete novelty and manuscript,
and certify supported claims in Lean on GCP.

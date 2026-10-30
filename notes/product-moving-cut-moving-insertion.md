# Moving-cut response with a moving bounded insertion

This extends the compact-model estimate in
`product-frame-moving-cut-response-rate.md` to the moving insertion in
`fixed-cut-moving-insertion-mixed-response.md`. It is a conditional fixed
positive-cutoff comparison. It does not identify the physical transported
boundary condition, the source's density and contacts, the tangent
subtraction, or a regulator-uniform curved remainder. No Lean check is
claimed.

## Hypotheses and observable

Use the common Hilbert space, compact four-dimensional form domain, family
of pulled-back forms q_(delta,z), semigroups T_(delta,z)(t), and the common
parameter polydisc of the moving-cut note. In particular, suppose its
uniform form, sectorial, heat and O(delta) coefficient estimates hold for
0<=delta<=delta_0. Let C_(delta,z) be bounded-operator-valued holomorphic
families on that polydisc, and assume the uniform bounds

  sup_(delta,z) ||C_(delta,z)|| <= C_C,
  sup_z ||C_(delta,z)-C_(0,z)|| <= C_C delta.                     (1)

This is an operator-norm hypothesis after the stated unitary pullbacks. It
must be checked for a particular density or localization; pointwise
convergence, a moving sharp characteristic function, or strong convergence
alone does not supply it. For t>0 define

  F_delta(z,t)=Tr[C_(delta,z) T_(delta,z)(t)].                    (2)

At each finite cut, holomorphic trace-class heat dependence and (1) make
F_delta holomorphic. Its mixed derivative contains all four terms in (2) of
`fixed-cut-moving-insertion-mixed-response.md`, including both first
insertion derivatives and the mixed insertion derivative.

## Quantitative bound

Subtract (2) before differentiating. The trace ideal inequality gives

  |F_delta-F_0| <= C_C ||T_(delta,z)-T_(0,z)||_1
                  + C_C delta ||T_(0,z)||_1.                    (3)

The cited moving-cut estimate bounds the first trace norm by
C delta^(1/6) t^(-35/12), uniformly on a smaller closed polydisc for
0<t<=1. Its uniform S6 heat bound at positive time is
||T_(0,z)(t)||_6 <= C t^(-1/2). Factoring the semigroup into six equal-time
factors and applying Schatten Holder gives, uniformly there,

  ||T_(0,z)(t)||_1 <= C t^(-3).                                 (4)

Thus, on a still smaller polydisc, Cauchy's two-variable formula yields

  |partial_u partial_w(F_delta-F_0)(0,t)|
    <= C [delta^(1/6) t^(-35/12) + delta t^(-3)],  0<t<=1.     (5)

The fixed reciprocal parameter radii are absorbed into C. Cauchy's formula
acts on the *complete* product F_delta; it consequently includes the mixed
insertion, both first-insertion terms and all heat vertices without requiring
separate norm estimates on each Duhamel factor. Uniformity in an additional
field regularizer requires (1), the parameter radii, and all cited heat and
form constants to be uniform in that regularizer; it is not automatic.

For epsilon>0 integration against the P1-D-type dt/t^2 measure gives

  integral_epsilon^1 |partial_u partial_w(F_delta-F_0)(0,t)| dt/t^2
     <= C [delta^(1/6) epsilon^(-47/12) + delta epsilon^(-4)].   (6)

For example delta=exp(-4L/epsilon), with fixed L>0, makes both terms tend
to zero. This is a sufficient path for this compact-model comparison, not a
bound on a physical admission margin or the unknown coefficient A(K).
Equation (6) compares complete regularized observables at positive cutoff;
it does not establish the existence of either finite part or equality after
subtracting distinct local counterterms.

## Application boundary

To use this for the source, one must derive the actual pulled-back insertion
and verify (1), retain any separately defined contacts and restorations, and
match the finite-cut projector problem to the physical boundary and bolt.
The source's localized tangent subtraction must be specified on the same
regulator. No small-time t^(3/2) estimate or physical-limit claim follows
from (6) alone.

Remaining to-do list: verify these uniform hypotheses for the physical
family and its moving insertion, establish the complete subtracted curved
remainder and regulator, resolve novelty, finish the manuscript, and certify
supported claims in Lean on GCP.

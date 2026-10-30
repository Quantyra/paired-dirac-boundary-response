# Complex-family off-diagonal Hilbert--Schmidt bounds

This upgrades the operator estimates in
`complex-weighted-first-derivative.md` to the Schatten estimates used in
collar locality. It assumes compact two-dimensional models and uniform
form, embedding and first-order commutator hypotheses. The trace Duhamel
identity and physical matching remain separate.

Let T_z(t)=exp(-tL_z) on H=L2 of a compact two-dimensional model, with
common form domain V. Suppose the uniformly sectorial and weighted estimates
of the preceding note hold for z on a fixed complex disk, also for the
adjoint family. Assume the embedding J:V->H lies in S4 with uniform norm
for the family of identified compact models. The unweighted form-smoothing
bound gives

  ||T_z(t)||_4 <= C t^(-1/2), 0<t<=1.                 (1)

Factoring at t/2 and using Schatten Holder,

  ||T_z(t)||_2 <= C t^(-1).                            (2)

If Q is a uniformly bounded first-order map V->H as in the derivative note,
then Q T_z(t)=Q T_z(t/2) T_z(t/2) and (2) give

  ||Q T_z(t)||_2 <= C t^(-3/2).                        (3)

These bounds do not use self-adjointness; the same estimates hold for the
adjoint semigroups and suitable adjoint first-order factors under the stated
hypotheses.

Let E,F be closed sets separated by d>0. Choose a bounded spatial multiplier
P that is 1 on a neighborhood of E and supported at distance at least d/3
from F. Insert P+(1-P)=1 between two equal-time heat factors:

  1_F Q T_z(t) 1_E
   = [1_F Q T_z(t/2) P][T_z(t/2)1_E]
     +[1_F Q T_z(t/2)][(1-P)T_z(t/2)1_E].             (4)

The first bracket in the first term has the derivative off-diagonal operator
bound, and the second factor has the global Hilbert--Schmidt bound (2). In
the second term, (3) controls the first factor in Hilbert--Schmidt norm,
and the last factor has the ordinary off-diagonal operator bound. Thus for
0<t<=1, uniformly in z,

  ||1_F Q T_z(t)1_E||_2 <= C t^(-N) exp(-c d^2/t)     (5)

for finite N and c>0 depending on the common bounds. The polynomial factors
from the distance-weight optimization are absorbed by decreasing c. The
same argument without Q yields the corresponding off-diagonal heat bound,
and adjoints supply the reversed orientation where needed. No spatial cutoff
is commuted through the heat operator in (4).

These estimates retain the full compact thermal trace. They rely on uniform
S4 embedding and constants for both comparison models, and on the actual
localized first-order commutator being bounded by the Q estimate. They do
not by themselves justify the Duhamel commutator identity, a geometric trace
derivative, physical source identification or any regulator interchange.
No numerical run or Lean certificate is claimed.

Remaining to-do list: establish the complex commutator trace comparison,
verify physical matching and the regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
# Logarithmic jet is not fixed by the weighted remainder bound

Status: exact scope check for the admitted collar class in
[the weighted remainder note](weighted-remainder-cutoff.md). It explains
why [the pure-profile logarithmic coefficient](cubic-log-vertex-decomposition.md)
cannot yet be assigned to every function in that class. It is not a proof
that a particular physical field has an oscillatory coefficient, a claim
that the flat pure-profile calculation fails, or a Lean certificate.

## Nonuniqueness within the recorded class

The source class permits b(y)=c y³+r(y), with

    |r^(j)(y)|≤K A_j y^(4-j)(1+log(1/y)),  j=0,...,5,

on a sufficiently small physical-side collar. For any fixed real d, a
localized remainder r_d(y)=d y⁴ log y, with a smooth cutoff equal to one
near y=0, satisfies these bounds for some finite K. This follows directly
from its first five derivatives; for example

    (y⁴log y)'''=y(24log y+26),
    (y⁴log y)'''''=24/y.

Thus the recorded upper bound allows arbitrary logarithmic amplitudes
within its size constraint. Two fields with the same cubic coefficient c
and the same enlarged K can have different d. If a decomposition is written
as b=c y³+d y⁴log y+r, but r is still allowed the same O(y⁴log(1/y))
bound, d is not uniquely defined: changing d and compensating in r leaves
b unchanged and preserves an enlarged bound. A separate asymptotic condition
is needed to make d a defined datum.

## A permitted remainder without a limiting logarithmic jet

For sufficiently small y, define

    r_osc(y)=y⁴ log(1/y) sin(log log(1/y)),

and multiply by a smooth cutoff supported within the physical collar.
For j≤5, repeated differentiation produces a finite linear combination of
terms bounded by C_j y^(4-j)(1+log(1/y)); the inverse powers of log(1/y)
from differentiating the oscillatory factor are harmless on a collar where
log(1/y)≥1. Hence, after choosing K large enough, r_osc belongs to the
same weighted class. But

    r_osc(y) / [y⁴ log(1/y)] = sin(log log(1/y))

has no limit as y↓0. Therefore the weighted upper bound alone does not
define a constant logarithmic coefficient d for every admitted field. This
example does not by itself compute its Fourier or heat-trace asymptotics.

## Sufficient extra data and scope

A candidate theorem may impose an explicit asymptotic jet

    b(y)=c y³+d y⁴log y+o(y⁴log(1/y)),

which makes d unique after c is fixed. That pointwise condition alone does
not automatically prove the Fourier product tail or uniform t³log(t)
remainder: suitable derivative or Fourier-control assumptions are still
needed. The pure-profile theorem with smooth cutoffs already supplies a
valid narrower calculation, while the broader source class needs either
an appropriate strengthened jet theorem or a formulation without a
universal d coefficient.

The example changes no accepted source claim and is not a physical
admission or stability statement. No numerical computation is used.

Remaining to-do list: choose and prove the exact logarithmic-tail hypotheses
for the intended paper statement, verify physical normalization and domains,
complete novelty review and certify supported claims in Lean on GCP.

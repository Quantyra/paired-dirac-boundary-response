# Product-frame orbit contact under joint cut and field limits

This derives the positive-time orbit contact for the compact product-frame
family of `product-frame-moving-cut-uniformity.md`, under its common-domain,
sectorial and geometric hypotheses. It does not identify the transported
physical infinity boundary condition or remove the common proper-time
regulator.

Let O_delta be the compact two-dimensional product-frame orbit with its
regular bolt, finite outer cut and prescribed paired local projector. Use the
stated unitary collar pullback to put its orbit square L_delta,e and heat
semigroup K_delta,e,s on a fixed Hilbert space. Assume the pulled-back real
forms for the cut and radial field approximants converge in form norm on a
common H1 domain, with uniform sectorial constants, to the limiting orbit
form. Assume the common H1 graph bound and compact embedding singular-value
bound on this fixed two-dimensional orbit. Let U_e,V_e be the bounded
multipliers given by the pulled-back scalar directions, and assume

  ||U_e-U|| + ||V_e-V|| -> 0.                          (1)

The W1,infinity cutoff and moving-cut convergence recorded in
`weighted-rough-joint-heat-limit.md` supplies (1) for its stipulated fields.
The orbit version of the semigroup argument in that note gives, for every
s>0, trace-norm convergence

  K_delta,e,s -> K_0,0,s,                              (2)

along every joint cut/field sequence, and a uniform trace-norm bound on each
positive time interval away from zero. This follows by operator-norm form
resolvent convergence, H1 smoothing, compact embedding and sufficiently
many semigroup factors; no angular tower is introduced in this orbit step.

Define

  I_delta,e(t)= (1/T) integral_0^t Tr[U_e K_delta,e,t-s
                                     V_e K_delta,e,s] ds, (3)

where T is the fixed thermal period and the trace is the declared paired
orbit trace. If the source convention further divides this trace by two,
that division is applied once to (3). For s in (0,t/2], the long factor
K_delta,e,t-s is trace class with uniformly bounded trace norm, while the
short factor is a contraction for real fields. On the other half, exchange
the two heat factors. Thus the integrands have a uniform integrable bound
C_t ||U_e|| ||V_e||. At each interior s, (1)-(2) and Schatten ideal
continuity give convergence of the trace. Dominated convergence yields

  I_delta,e(t) -> I_0,0(t),  t>0 fixed.                (4)

This preserves the complete thermal trace and both ordered factors; no
frequency cutoff or extra sphere degeneracy appears in (3). It is a limit
for the specified local-projector product orbit. Identifying it with the
source's physical-half/time-reduced contact requires matching the actual
copy, boundary and trace conventions. Multiplication by the source's
Theta'(t) belongs only after that orbit identification and angular
separation. Equation (4) gives no convergence uniform as t->0, no local
counterterm or geometric vertex, and no path-independent common-regulator
result. No numerical run or Lean certificate is claimed.

Remaining to-do list: establish the physical boundary and trace matching,
control the complete subtracted regulator and geometric terms, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
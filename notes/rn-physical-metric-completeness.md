# Completeness of the fixed physical RN exterior

This verifies the metric-completeness hypothesis in
`complete-physical-paired-core.md` for the fixed smooth nonextremal RN-AdS
seed, once its regular thermal period and bolt are included. It does not
identify the paired spin/twisting bundle, Dirac domain or a rough-family
metric, and it is not a Lean certificate.

Let

  g=F(r)d tau²+F(r)^(-1)dr²+r² g_(S²),
  F(r)=r²/L_4²+1-c/r+d/r²,                                   (1)

for r>r_h>0, with fixed L_4>0, F(r_h)=0, F'(r_h)=kappa>0 and F>0
for r>r_h. Take tau periodic with period 4pi/kappa. Near the horizon set
rho=2 sqrt((r-r_h)/kappa). Smoothness of F and its simple zero imply

  F(r)=(kappa²/4)rho²+O(rho^4),
  F(r)^(-1)dr²=[1+O(rho²)]d rho².                            (2)

With angular coordinate theta=kappa tau/2 of period 2pi, the orbit metric
extends smoothly across rho=0 in Cartesian disk coordinates. The sphere
factor r(rho)^2 g_S² is smooth and has positive radius r_h there. Thus the
bolt is an interior S², not an omitted boundary. This step assumes the
specified regular spin/twisting data also extend; metric smoothness alone
does not prove the bundle identification.

Define outward radial distance from a fixed r_0>r_h by
s(r)=integral_(r_0)^r d rho/sqrt(F(rho)). At large r,
F(r)/r²->L_4^(-2), so for sufficiently large r,

  s(r) >= (L_4/2) log(r/r_0') -> infinity.                   (3)

The gradient of s has norm one away from the bolt, because g^rr=F. Hence
along every piecewise smooth curve, |s(end)-s(start)| is bounded by its
length. A bounded metric ball is therefore contained in r<=R for some
finite R. Once the smooth bolt is included, that sublevel is compact: the
radial coordinate is bounded, the thermal circle and sphere are compact,
and the polar disk closes smoothly at the bolt. A closed metric ball is a
closed subset of that compact sublevel and is compact. Hopf--Rinow gives
metric and geodesic completeness of the fixed physical seed.

The same conclusion holds for a finite disjoint union of copies with the
corresponding complete metrics. It does not assert that the physical
spin/copy gluing at conformal infinity is a compact-boundary construction,
nor that any particular doubled first-order realization or involution is
established. For a bounded real Weyl factor beta, the metric e^(2 beta)g is
uniformly equivalent to g and is metrically complete, but the rough Dirac
and bundle domains still require the separate argument in
`rough-paired-core-congruence.md`.

No spectral gap, heat-trace estimate, physical admission margin, numerical
calculation or Lean certification follows from completeness alone.

Remaining to-do list: match the global paired spin/bundle and cut domains,
complete the mixed trace and regulator, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

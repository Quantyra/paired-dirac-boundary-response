# Compact orbit and regular nonextremal bolt

This verifies the geometry part of the fixed-seed hypothesis in `compact-paired-seed-heat-from-graph.md` for the nonextremal seed recorded in the frozen [stationary boundary-layer source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md). It does not identify the physical Dirac domain or prove a uniform family estimate.

The source orbit metric is

  g=B(u) dU_E²+b² du²/B(u),  B(0)=xi>0,  0<=u<=u_h,     (1)

where B is the stated polynomial and b>0. Assume B>0 on [0,u_h), B(u_h)=0 and B'(u_h)<0. These are the precise nonextremal outer-region conditions used here; they must be verified for any particular parameter choice. Let k=|B'(u_h)| and x=u_h-u. Then B=kx+O(x²). Define proper radial distance from the bolt by

  rho=b integral_0^x [B(u_h-z)]^(-1/2) dz
      =2b sqrt(x/k) [1+O(x)].                              (2)

The expansion follows from the polynomial and k>0. Moreover rho² is a smooth function of x with positive derivative at zero, so its inverse x=rho² H(rho²) is smooth with H(0)=k/(4b²). Consequently the metric near rho=0 has the exact form

  g=d rho²+rho² h(rho²)² dU_E²,  h(0)=k/(2b)=kappa,    (3)

where h is smooth and positive for small rho. If U_E has the source's regular period 2pi/kappa and theta=kappa U_E, (3) becomes

  g=d rho²+rho² [h(rho²)/kappa]² d theta².

Because h(rho²)/kappa=1+O(rho²) is smooth in rho², the apparent polar singularity is removable in Cartesian coordinates (rho cos theta,rho sin theta). The bolt is a smooth interior point of the orbit, not a second boundary. The smooth Cartesian spin structure restricts to antiperiodic components in a rotating polar spin frame, as checked in `bolt-cartesian-mode.md`.

At u=0 the metric coefficients are smooth and nondegenerate because B(0)>0. The interval [0,u_h], with the thermal circles collapsed only at the regular bolt, is topologically a compact disk; its sole boundary is the outer circle u=0. For a fixed seed satisfying the assumptions, this supplies the compact smooth orbit and regular-bolt geometric hypotheses used in the heat-trace comparison. The fixed spin and magnetic bundles still need their transition functions and paired domain checked. No conclusion about the physical four-dimensional volume or a noncompact physical metric follows from compactness of this conformal orbit.

Uniformity across seeds additionally requires uniform lower bounds on xi and k, fixed control of b and the thermal period, and uniform smooth chart and coefficient bounds; fixed-seed compactness alone gives none of these. The first-order graph estimate, response vertices, trace normalization and common regulator remain separate. No Lean certification is claimed.

Remaining to-do list: verify the physical paired domain and bundle, establish gluing and full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
# Uniform H2 for bounded scalar congruence families

This removes the reference-closeness condition in `product-h2-weighted-approximant-bridge.md` for the specified scalar-congruence family. It works from uniform first-order graph and H2 estimates for the smooth unvaried moving-cut operators. It does not identify the source's transported infinity boundary condition or establish its mixed regulator.

## Statement

Use the fixed-reference Hilbert spaces and smooth product-orbit cuts of `product-square-uniform-h2-from-first-order.md`. Let D_delta have domain V_delta subset H1 and adjoint domain V_delta_star subset H1. After the unitary collar identifications assume uniform constants in

  ||h||_H1 <= C1 (||D_delta h||_2+||h||_2),  h in V_delta,
  ||g||_H1 <= C1 (||D_delta* g||_2+||g||_2), g in V_delta_star,
  ||h||_H2 <= C2 (||D_delta h||_H1+||h||_H1),               (1)

whenever h in V_delta and D_delta h in H1. Assume also the corresponding regularity implication h in H2. The preceding first-order perturbation argument establishes these uniform estimates for sufficiently small smooth local-projector cuts once its reference ellipticity, adjoint domains, coefficient convergence and bundle hypotheses hold. The last estimate follows by the same absorption as equation (5) of that note, applied to an arbitrary h in V_delta with D_delta h in H1, not only to a square-domain vector.

Let b range over real W2,infinity scalar fields, with a uniform norm bound B and the same value on both folded copies. Set E=exp(-b/2) and D_(delta,b)=E D_delta E. Assume E and E^-1 preserve V_delta and V_delta_star, as they do for the stated scalar H1 projector domains when their trace compatibility is verified. The usual product rules give uniform multiplier bounds for E and E^-1 on H1 and H2. The bounded-congruence adjoint identity gives

  D_(delta,b)*=E D_delta* E,
  Dom D_(delta,b)=V_delta,  Dom D_(delta,b)*=V_delta_star.     (2)

Then for the actual composition square L_(delta,b)=D_(delta,b)*D_(delta,b),

  ||f||_H2 <= C_B (||L_(delta,b) f||_2+||f||_2),
                         f in Dom L_(delta,b),                (3)

uniformly in delta and in every b satisfying the stated bounds. No smallness of b-b_ref, fixed square domain, uniform spectral gap, or derivative above order two is used. C_B also depends on the seed constants and uniform atlas.

## Proof

First, E and E^-1 acting on H1 and the unvaried graph estimates imply uniform graph estimates for D_(delta,b) and its adjoint. For example, for f in V_delta, E f lies in V_delta and

  ||f||_H1 <= C_B ||E f||_H1
    <= C_B (||D_delta(E f)||_2+||E f||_2)
    <= C_B (||D_(delta,b) f||_2+||f||_2).                   (4)

The adjoint estimate is identical with D_delta* and V_delta_star.

Take f in Dom L_(delta,b), and write g=D_(delta,b) f. Then f in V_delta and g in V_delta_star subset H1. Put h=E f. By (2), h in V_delta and

  D_delta h=E^-1 g in H1.                                    (5)

The reference regularity in (1) gives h in H2. Since E^-1 is a uniformly bounded H2 multiplier, f=E^-1 h is in H2. Applying (1), the H1 multiplier bounds, and the congruence graph estimates gives

  ||f||_H2 <= C_B ||h||_H2
    <= C_B (||E^-1 g||_H1+||E f||_H1)
    <= C_B (||g||_H1+||f||_H1)
    <= C_B (||L_(delta,b) f||_2+||g||_2+||f||_2).            (6)

The quadratic form identity yields ||g||_2²=<L_(delta,b)f,f>, so ||g||_2 <= (||L_(delta,b)f||_2+||f||_2)/sqrt(2). Substitution in (6) proves (3). The argument applies to W2,infinity b by weak product rules; smooth approximants can instead be used if the Sobolev-domain identification is only known for them. It does not require convergence of b to a chosen smooth reference.

## Application and limits

The weighted one-sided cubic/log collar approximants have uniform product W2,infinity bounds by `weighted-fields-moving-cut-transport.md`, with interior bounds required separately. Thus (3) supplies the uniform H2 input of `product-contact-heat-bound-h2.md` for that stipulated product family, once the seed estimates, domain preservation and uniform cut identifications are verified. It also applies to each fixed rough b with these bounds; it does not establish heat-trace convergence to the rough limit by itself.

The operator family in the source's mass conversion contains additional mass terms; (3) directly concerns the scalar-congruent geometric square. Extending it to that interpolation, the angular tower and parameter-dependent domains requires their own uniform graph estimates. Source global spin/connection matching, transported physical infinity data, actual trace normalization, geometric mixed vertices and the common-regulator subtractions remain open. No numerical or Lean certificate is claimed.

Remaining to-do list: verify the actual source domains and bundle, extend uniform estimates to all required conversion terms, complete the regulator and novelty audits, finish the manuscript, and certify supported claims in Lean on GCP.
# Local monopole gauges on physical radial cuts

This constructs the magnetic part of the uniform chart input left open in `rn-physical-cut-uniform-geometry.md`, for the fixed standard monopole connection and the matched-copy identification stipulated in `source-paired-bundle-transition-check.md`. It does not identify an arbitrary physical bundle or prove the square's boundary regularity.

Let the sphere curvature be F_A=(q/2) sin(theta) dtheta wedge dphi in a fixed normalization, with q fixed. Around any sphere point rotate coordinates so that point is the north pole and use a regular north-patch potential

 A=(q/2)(1-cos theta) dphi.

In a smooth tangent-plane coordinate z=(z1,z2) near that point this potential has the form A=sum_i a_i(z) dz_i, with a_i(0)=0 and derivatives of all fixed orders bounded uniformly after rotation. Rotations preserve the standard monopole curvature; the local gauge may differ from a chosen global north/south gauge by a U(1) transformation on the contractible overlap.

At radius R introduce physical angular chart coordinates x=R z as in the cut-geometry note. Then the coefficient of dx_i is R^-1 a_i(x/R), so on a fixed-size chart

 |partial_x^m A_x| <= C_m |q| R^-2,  m>=0,               (1)

for R sufficiently large. The m=0 bound uses a_i(0)=0 and |x| bounded; higher tangential derivatives gain further inverse powers of R and are bounded by the displayed weaker power. The standard gauge has no radial or thermal component and is independent of r and τ, so derivatives in those chart directions are also uniformly bounded. The physical curvature is O(|q| R^-2), consistent with (1). On a fixed-width radial collar r/R remains bounded above and below, so physical frame conversion and finitely many derivatives preserve uniform bounds.

In the source's stipulated identical pullback of the magnetic connection to the two copies, use the same local gauge on both. Its transition functions therefore act by the same scalar U(1) multiplication on each copy. They commute with the fixed copy-exchanging J of `source-paired-bundle-transition-check.md`; combining this with the assumed spin transition algebra preserves the local partner identification. The construction is local: monopole topology is not trivialized globally, and no equality of differently pulled-back connections is inferred.

Together with the uniform metric charts from the cut-geometry note, (1) supplies uniform local coefficients for the fixed standard magnetic connection near radial cuts. A finite set of regular gauges covers the compact interior and bolt. This does not prove that the source's actual physical connection and copy identification are precisely these data, nor does it prove a uniform projector-domain graph estimate, mixed Robin condition, heat kernel bound, response, or Lean certificate.

Remaining to-do list: verify the actual source identification and boundary operator with uniform estimates, complete the physical response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

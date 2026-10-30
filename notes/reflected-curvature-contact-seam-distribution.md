# Reflected curvature distribution in the cubic contact

This checks the singular part of the curvature term in `bridge-contact-fourth-coefficient-by-uniqueness.md` for a specified even radial double. It does not prove that the auxiliary double is the full physical operator or establish global gluing.

Let f be positive and even near zero, smooth on each side, with

  f(y)=f0+a |y|^3+r(y),  f0>0,
  r^(j)(y)=O(|y|^(4-j)(1+|log|y||)), j<=3, y!=0,          (1)

and suppose the one-sided classical derivatives needed below exist. In the product collar g=dy²+f^-2 d tau², the scalar curvature is

  R=2f''/f-4(f'/f)².                                        (2)

The reflected f and its first two derivatives are continuous, while [f''']_0=f'''(0+)-f'''(0-)=12a. Consequently R is continuous and piecewise C1 with

  [R']_0=2[f''']_0/f0=24a/f0.                              (3)

The logarithmic remainder has third derivative tending to zero and does not change this jump. Distributionally, the radial Laplacian Delta R=R''-(f'/f)R' therefore has the singular part

  (Delta R)_sing = [R']_0 delta_0 = (24a/f0) delta_0.        (4)

The remaining distribution is defined by the weak derivative of R' and need not be bounded. Equation (4) is in the y coordinate; the geometric measure dy/f multiplies its delta mass by 1/f0. These formulas use the fixed orientation y increasing across the double and the jump convention in (3).

For the contact term in equation (2) of `bridge-contact-fourth-coefficient-by-uniqueness.md`, the singular curvature contribution is proportional to the value at zero of wv/f. If u and v have cubic seam behavior and w=chi u with smooth chi, then w(0)=v(0)=0, so that delta pairing is exactly zero. The same is true with only one of w or v vanishing at zero. This cancellation removes the explicit delta term in that particular contact pairing; it does not remove the entire distributional curvature contribution or any geometric-response boundary term.

One rigorous weak definition is, for compactly supported test phi,

  <Delta R,phi dy/f> = -integral R' phi' dy/f.              (5)

It follows by integration by parts and remains meaningful when R' is locally bounded. If f_j are positive smooth approximants with uniform local W3,infinity bounds, f_j->f in W2,infinity and f_j'''->f''' in local L2, then R_j'->R' in local L2. For a fixed smooth compactly supported phi, the right side of (5), including the measures, converges. For phi=w_j v_j depending on the approximant, additionally require convergence of phi_j' in local L2 and uniform bounds; the recorded cubic radial approximants supply these under their stated fixed-field hypotheses. Thus the weak pairing has a well-defined limit without a uniform fourth derivative of f_j.

The actual source's half-trace and even-double normalization, the correct approximation of all fields, magnetic twist and geometric vertices remain to be checked. The statement concerns one curvature distribution in one contact coefficient, not the complete finite part or the P1-D remainder. No Lean certification is claimed.

Remaining to-do list: complete the source-domain and weak contact identification, control bolt gluing and the full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
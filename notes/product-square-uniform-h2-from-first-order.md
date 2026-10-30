# Uniform product-square H2 estimate from first-order domains

This supplies the H2 estimate assumed in `product-contact-heat-bound-h2.md` for the smooth moving-cut model of `product-frame-moving-cut-uniformity.md`, under the explicit first-order geometric hypotheses below. It does not identify that model's local projector with the source's transported infinity condition, establish rough-family uniformity, or certify Lean.

## Setup and result

Identify the small smooth orbit cuts with a fixed compact two-dimensional reference manifold X by the stated unitary collar and bundle maps. Let D_delta be closed first-order operators on L2(X,E), with common domain V subset H1 and adjoints with common domain V_star subset H1. Suppose:

1. The projector boundary realizations for D_delta and D_delta* are elliptic in the sense of the [Bär--Ballmann guide](https://arxiv.org/html/1307.3021v2), Theorem 4.9, including its local boundary regularity hypotheses. The bundle, metric and boundary data are smooth for each fixed delta. Thus f in V and D_delta f in H1 imply f in H2. The same statement is used for the reference D_0.
2. In the fixed identification, D_delta-D_0 and their adjoints have smooth coefficients tending to zero in W1,infinity. Consequently

     ||(D_delta-D_0)f||_H1 <= epsilon_delta ||f||_H2,         (1)

   with epsilon_delta->0, and the analogous H1-to-L2 norm for the adjoints tends to zero. This is satisfied by the specified smooth moving-cut pullbacks when the normal-frame identification makes both projector domains fixed; it is not established by formal coefficient convergence without that domain identification.
3. D_0 and D_0* have their H1 graph estimates on V and V_star. The reference elliptic regularity estimate is

     ||f||_H2 <= C0 (||D_0 f||_H1+||f||_H1),
                          f in V, D_0 f in H1.                (2)

   This is the global estimate obtained by patching the stated local H2 boundary and interior regularity on the fixed compact manifold. The lower-order H1 term allows a kernel and avoids assuming a spectral gap.

Then, for all sufficiently small delta and L_delta=D_delta*D_delta on its actual composition domain,

  ||f||_H2 <= C (||L_delta f||_2+||f||_2),  f in Dom L_delta,  (3)

with C independent of delta. No equality of the square domains is required.

## Argument

Perturbing the reference graph estimate and absorbing the H1-to-L2 difference gives a uniform first-order graph estimate for D_delta on V. Apply the same argument to D_delta* on V_star; hence

  ||g||_H1 <= C1 (||D_delta* g||_2+||g||_2), g in V_star.   (4)

If f belongs to the composition domain, f is in V and g=D_delta f is in V_star subset H1. Hypothesis 1 gives f in H2 for each fixed delta. Thus D_0 f is in H1 and (2), followed by (1), yields

  ||f||_H2 <= C0 [||D_delta f||_H1+epsilon_delta ||f||_H2
                                      +||f||_H1].             (5)

Choose delta small enough to absorb the middle term. Apply (4) to g=D_delta f, and the uniform graph estimate to f:

  ||D_delta f||_H1 <= C1 (||L_delta f||_2+||D_delta f||_2),
  ||f||_H1 <= C2 (||D_delta f||_2+||f||_2).                 (6)

Finally, the form identity and Cauchy--Schwarz imply

  ||D_delta f||_2²=<L_delta f,f>
     <= (||L_delta f||_2²+||f||_2²)/2.                       (7)

Combining (5)--(7) proves (3). The proof does not assume a common H2 square domain: only the first-order domains and adjoint domains are fixed after the cut identification, while membership in each composition domain is used directly. A scalar congruence family can be included if its coefficients and derivatives make the perturbation small in the same norms and both projector domains remain fixed; a general bounded rough family is not covered by small smooth perturbations.

## Consequence for the contact estimate

Under these conditions, the H2 input (1) of `product-contact-heat-bound-h2.md` follows for the smooth local-projector model. Its near-sharp diagonal and trace estimates, complete insertion-time contact bound, and cutoff compatibility condition then follow with constants uniform over sufficiently small cuts. The separate angular bound applies to the recorded full nonzero tower; matching the physical trace and the zero-sector allocation remains open.

The actual source still requires its global spin and magnetic identifications, proof that its transported infinity condition gives these local projector domains, and all geometric, contact and subtraction terms on the same regulator path. The present theorem does not give the rough curved remainder or a physical admission margin. No numerical or Lean verification is claimed.

Remaining to-do list: establish the source domain and global bundle matching, handle the rough and full-regulator limits, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
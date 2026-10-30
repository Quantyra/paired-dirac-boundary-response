# Changing-family heat commutator between convergent vertex factors

This extends `conformal-heat-commutator-truncation.md` from one fixed
operator to a changing family on a common Hilbert space. The result is a
conditional convergence lemma, not a proof that the physical cut family
meets its hypotheses or a full mixed-response theorem.

Let D_n,D be closed densely defined operators on H, with L_n=D_n*D_n,
L=D*D and K_n(s)=exp(-sL_n), K(s)=exp(-sL). Let b_n be bounded real
multipliers preserving Dom D_n with

  D_n(b_n x)=b_n D_n x+C_n x,       sup_n ||C_n||<=c.         (1)

For each fixed s>0 assume the following operators and their adjoints converge
strongly:

  K_n(s)->K(s),       D_n K_n(s)->D K(s),       C_n->C.       (2)

These are separate assumptions. Strong convergence of K_n alone does not
imply strong convergence of D_n K_n or its adjoint. In a cut problem the
operators, including any zero extension or complementary space, must be
identified consistently on H before (2) can be invoked.

Let B_n(t)=b_n K_n(t)-K_n(t)b_n. The form-Duhamel identity in
`conformal-heat-commutator-bound.md` expresses B_n(t) as a sum of products
of K_n, D_n K_n, C_n and their adjoints integrated over 0<s<t. Each product
converges strongly by (2) and uniform boundedness. The spectral estimate
||D_n K_n(s)||<=(2e s)^(-1/2) and (1) give the same integrable majorant for
every n. Strong dominated convergence therefore yields a bounded B(t) with

  B_n(t)->B(t) strongly,
  ||B_n(t)||, ||B(t)|| <= 4 c sqrt(t)/sqrt(2e).               (3)

B(t) is defined by the limiting form integral; it is not automatically the
literal commutator of K(t) with an unbounded physical logarithm.

Suppose additionally that X_n->X and Y_n->Y in Hilbert--Schmidt norm. Then

  ||X_n B_n(t) Y_n-X B(t)Y||_1 -> 0.                          (4)

To prove this, telescope the difference into the two Hilbert--Schmidt
factor differences and X(B_n-B)Y. Schatten Holder and the uniform bound in
(3) control the first two; the last tends to zero because strong convergence
of uniformly bounded B_n implies (B_n-B)Y->0 in Hilbert--Schmidt norm by
finite-rank approximation. This remains valid if X_n and Y_n depend on
another heat time, pointwise in that time.

If, in addition, the resulting trace integrands have a common integrable
majorant over a specified time-simplex region, dominated convergence passes
that region's integral. The long-middle bulk estimate in
`conformal-commutator-long-middle-simplex.md` gives such a fixed-t majorant
under its stated uniform Hilbert--Schmidt bounds, provided its factors also
converge as required here. That observation does not supply (2), the
adjoint convergence, boundary terms, the complementary simplex sectors or
uniformity as t decreases to zero.

The local H5 and weighted convergence arguments in
`finite-cut-bulk-interior-time-convergence.md` are potential inputs to the
Hilbert--Schmidt factor hypotheses; they do not by themselves establish all
of (2) for the actual physical domains. The physical insertion, partner
square, common regulator and trace normalization remain open. No numerical
or Lean certification is claimed.

Remaining to-do list: verify the physical strong/adjoint and vertex-factor
convergence, complete all mixed trace sectors and regulator, resolve novelty,
finish the manuscript, and certify supported claims in Lean on GCP.

# H1 projector domain of the constructed product operator

This establishes the Sobolev-domain identification for the explicitly constructed product realization in [the mode-closure argument](paired-product-domain-closure.md). It assumes a smooth compact orbit with boundary, a compact smooth sphere with fixed twisting, and a genuine product bundle and metric. It does not independently establish that the physical pullbacks realize those assumptions.

Let H_o=L2(X_o,E_o), H_s=L2(S²,E_s), with sphere Dirac B self-adjoint and compact resolvent. Assume the orbit operator D_b has domain

    V={f in H1(X_o,E_o): Pi_- trace(f)=0},

and the elliptic graph equivalence

    c ||f||_H1 <= ||f||+||D_b f|| <= C ||f||_H1             (1)

on V. Let Pi_- act only in the orbit fiber and have smooth boundary coefficients. Assume the chirality and complementary-domain relations used in the mode-closure argument. On H_o tensor H_s construct P by closure of finite sphere-mode sums with coefficients in V. Its exact graph norm was shown there to be

    ||P psi||²+||psi||²
       = sum_j [||D_b psi_j||²+(1+mu_j²)||psi_j||²].        (2)

The sphere elliptic estimate identifies the H1 sphere norm with the graph norm of B. Standard product Sobolev theory, applied in a finite bundle atlas and then by the sphere spectral theorem, gives

    H1(X_o x S²,E_o tensor E_s)
      = H1(X_o; L2(S²)) intersect L2(X_o; H1(S²)),          (3)

with equivalent norms. In the sphere eigenbasis, (3) is exactly the finiteness of

    sum_j [||psi_j||_H1(X_o)²+(1+mu_j²)||psi_j||_L2(X_o)²]. (4)

By (1), (2) and (4) are equivalent for mode coefficients in V.

The boundary trace map H1(X_o x S²)→H^(1/2)(partial X_o x S²) is continuous. Spectral projections in the sphere variable commute with the trace and with Pi_-. For a finite-mode truncation, the projector condition is therefore equivalent to Pi_- trace(psi_j)=0 for every retained coefficient. As the truncations converge in H1 by (4), continuity of trace proves both directions: the closure domain of P is exactly

    {psi in H1(X_o x S²,E_o tensor E_s):
                  Pi_- trace(psi)=0}.                        (5)

This is the full H1 projector space of the constructed product model, with no artificial boundary at the smooth orbit bolt. It also identifies finite sphere-mode sums of V vectors as a graph core. The adjoint and square-domain identities then follow from the direct-sum construction and its complementary-domain mode calculation; equality of the first-order H1 domain is not an assertion that the square domain remains fixed as b varies.

To transfer (5) to the actual physical finite cut, the product metric and twisted bundle, copy/spin pullbacks, normal projector, first-order expression, regular bolt and chosen closed realization must be identified with the model. The cited source asserts product separation, but that assertion alone does not prove these identifications. An unbounded conformal factor at a limiting cut also needs a separate uniform analysis. No heat-regulator or Lean certification follows from this domain calculation.

Remaining to-do list: verify the physical product and bundle identifications, complete response and novelty audits, prepare the manuscript, and certify supported results in Lean on GCP.

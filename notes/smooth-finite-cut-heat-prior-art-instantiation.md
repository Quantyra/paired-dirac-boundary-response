# Smooth finite-cut square and the mixed-boundary heat coefficient framework

This records the precise finite-cut structural match supporting the prior-art comparison in `prior-art-comparison.md`. It does not compute P1's `a5` substitution, prove a heat-trace derivative for the rough family, or identify the physical endpoint.

## Fixed smooth cut

Let `X` be a compact smooth four-dimensional cut, let `D` be the source-stipulated paired first-order Dirac realization, and let `b` be a real smooth scalar equal on both copies. Write `E=exp(-b/2)`, `D_b=E D E`, and `L_b=D_b*D_b` on its actual composition domain. Assume the finite-cut bundle/projector and adjoint-domain hypotheses recorded in `source-finite-cut-domain-instantiation.md` and `paired-multiplier-domains.md`.

The principal symbol of `D_b` is `e^(-b)c_g(xi)`. Consequently, the principal symbol of `L_b` is

```text
sigma_2(L_b)(xi) = e^(-2b) |xi|_g^2 I.
```

Set `g_b=e^(2b)g`; then `g_b^(-1)=e^(-2b)g^(-1)`, so this is the scalar Laplace-type principal symbol for `g_b`. The unitary map from `L2(X,dvol_g)` to `L2(X,dvol_gb)` is multiplication by `e^(-2b)`, since `dvol_gb=e^(4b)dvol_g`. Its conjugation preserves the principal symbol and changes only lower-order coefficients. Thus the square is unitarily represented by a smooth Laplace-type operator with metric `g_b`, for the purpose of fixed-cut local heat coefficient theory.

The composition boundary conditions are

```text
Pi_- tr(psi)=0,       Pi_+ tr(D_b psi)=0.
```

For a smooth mixed projector satisfying the Clifford conditions in `square-domain-boundary-criterion.md`, the second condition is a Robin condition on the allowed `Pi_+` subbundle, while the first is Dirichlet on `Pi_-`. Its lower-order Robin endomorphism includes the projector, geometric and multiplier terms. If `partial_n b=0`, the cited square-domain criterion gives equality with the seed square domain; this provides the fixed mixed boundary splitting and Robin data in that case. If the normal jet is nonzero, the boundary condition still has mixed local form but its Robin coefficient must be transformed explicitly.

## Prior-art match

Branson–Gilkey–Kirsten–Vassilevich, arXiv:hep-th/9906144v1, Theorem 2.4 gives the smooth `a5(F,L,B)` coefficient for general local mixed Dirichlet/Robin boundary conditions on a compact smooth manifold. In four dimensions this coefficient multiplies `t^(1/2)` in the smeared heat trace. Section 6/Lemma 6.1 and Appendix B provide conformal-variation identities for the coefficient data. After the above density conjugation, the fixed-cut smooth `L_b` lies in the operator class of that theorem, provided the mixed composition boundary realization is the stated smooth elliptic one. This is a structural applicability check, not the missing coefficient-by-coefficient substitution.

For a smooth finite-dimensional parameter family `b(s,v)`, the local coefficient formula can be evaluated at each parameter value; its ordinary derivative is then the derivative of that explicit local expression, including derivatives of the Robin endomorphism and boundary geometry. This observation does not by itself establish the corresponding differentiated heat-trace expansion uniformly in the cut or in a rough smoothing parameter. It also does not identify any coefficient with the physical-half flat normalization or the source's `2 Theta' I_t` contact.

## Claim boundary

The theorem is close prior art for the explicit smooth fixed-cut coefficients through `a5` and for the stated conformal-variation identities. The orbit-only fixed-angular diagnostic's `t^(5/2)` term is at `a9` order, while the full-Weyl angular-tower diagnostic has a cubic `t^(3/2)` term (`a7` order) and a cubic-log `t^2 log(t)` term (logarithmic `a8` order). The existing `full-weyl-angular-seam-coefficients.md` derives those orders only in its fixed-product tangent model; it does not identify them with the physical observable. The `a5` theorem is lower-order prior art for both diagnostics, not their direct coefficient formula. The physical weighted endpoint mismatch in `conformal-infinity-l2-domain-obstruction.md`, the full-Weyl/source conversion gap, and the curved uniform remainder remain untouched. No Lean certification is claimed for this analytic applicability argument; the existing Lean domain and square-algebra receipts remain conditional abstract checks.

Remaining to-do list: compare the existing full-Weyl `a7`-order and log-`a8` tangent coefficients to the smooth local-coefficient framework without conflating them with the orbit-only `a9` term; prove the physical weighted endpoint and source/common-regulator bridge; resolve novelty and certify the supported paper claims in Lean on GCP.


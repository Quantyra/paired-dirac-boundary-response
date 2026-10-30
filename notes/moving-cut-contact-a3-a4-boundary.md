# Moving-cut contact boundary coefficients a3 and a4

This calculates the potential-dependent parts of the mixed-boundary a3 and a4 coefficients for the source-model contact. It extends `interior-contact-boundary-flux.md` to two explicit boundary terms, under a smooth fixed-cut realization. It does not determine a5 or a6, prove a uniform heat remainder, or identify the physical boundary.

Let L=-(g^(ij)nabla_i nabla_j+E) be a Laplace-type square on a smooth compact two-dimensional orbit with mixed boundary data Pi_minus, Pi_plus and Robin S. Let u,v be real scalar insertions and hold the boundary condition fixed under the bounded potential perturbation L_lambda=L+lambda v. Its endomorphism is E_lambda=E-lambda v Id. For t>0, the form-Duhamel identity gives

  I_t(u,v)=integral_0^t Tr[u exp(-(t-s)L) v exp(-sL)] ds
           =-partial_lambda Tr[u exp(-t L_lambda)]|_(lambda=0). (1)

This uses the same fixed-domain heat and trace hypotheses as `interior-contact-boundary-flux.md`. Apply the standard mixed-boundary coefficients in [Vassilevich, equations (5.30)--(5.33)](https://arxiv.org/html/hep-th/0306138v3#S5.SS3). The a1 and a2 boundary terms are independent of E, so their potential derivatives vanish. The a3 formula contains 96 u chi E as its only E-dependent boundary term. Therefore the a3 boundary contribution to I_t is

  t^(1/2) (4pi)^(-1/2) (1/4)
       integral_boundary u v tr(chi) ds.                       (2)

Here chi=Pi_plus-Pi_minus. In the stipulated balanced projector model tr(chi)=0, so (2) vanishes exactly; if the actual sector ranks are not balanced it must be retained. This is a statement about this scalar potential vertex, not the whole mixed response.

For a4, extracting only the E-dependent boundary terms and applying -partial_lambda yields the t coefficient

  (4pi)^(-1)/360 integral_boundary tr {
      u [(240 Pi_plus-120 Pi_minus) partial_n v
             +120 K v Id+720 S v]
      +180 (partial_n u) chi v } ds.                           (3)

K and partial_n use the normal convention of the quoted coefficient formula. Equation (3) includes every a4 boundary term linear in the scalar potential for fixed boundary data. Other a4 boundary invariants are independent of lambda and disappear from (1). It is not the complete t² contact coefficient: that requires a6 and the bulk integration-by-parts flux in `interior-contact-boundary-flux.md`.

For source-type stationary cubic jets at a cut y=delta, assume |u|,|v|<=C delta³, |partial_n u|,|partial_n v|<=C delta², and uniformly bounded K,S and boundary length. Equation (3) is O(delta^5); (2) is O(delta^6) even without balanced ranks. Since the full recorded massive angular derivative satisfies |Theta'(t)|<=C t^-2, their contributions to 2Theta'(t)I_t at t=epsilon are bounded by

  C [delta^6 epsilon^(-3/2)+delta^5 epsilon^(-1)].            (4)

In the balanced model the first term is exactly zero. Both vanish on delta=epsilon^p for p>1/4. The calculation concerns fixed smooth cut coefficients; the field approximants must satisfy the uniform jet and boundary-data assumptions, and the actual physical-half trace and sector ranks must be matched before application.

The a5 and a6 boundary terms, the interior flux, the differentiated remainder and all geometric contributions remain separate. In particular (4) does not establish a complete finite counterterm, a joint heat expansion, or regulator removal. No numerical or Lean certification is claimed.

Remaining to-do list: determine or control the remaining contact and geometric boundary coefficients and the uniform remainder, match physical domains and normalization, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
# One localized first vertex in the ordered physical response

This combines the ordered bulk factorization of `finite-cut-ordered-bulk-endpoints.md` with the physical cubic-tail estimates in `physical-cubic-bilinear-integrability.md`. It concerns the unweighted bulk-bulk ordered term at fixed positive time under those notes' uniform finite-cut hypotheses. It is not the conformal-log bridge, a small-time remainder or a physical regulator theorem.

Let u,w be the recorded radial cubic/log directions on the fixed physical RN seed. Choose a smooth cutoff chi_delta(U) equal to one for U<=delta, zero for U>=2delta, with U=b_sphere/r. Physical derivatives of chi_delta through order two are uniformly bounded on its transition: a physical radial derivative is a bounded multiple of U partial_U, and the fixed-seed connection terms are uniformly bounded. Put u_tail=chi_delta u. The uniform physical pointwise bounds on u, du and its Hessian, together with the product rule, imply on the tail

 |u_tail|+|du_tail|+|nabla² u_tail| <= C K_u U³.         (1)

The physical volume density is O(U^-4)dU on the outer collar. Hence

 N(u_tail):=||u_tail||_2+||du_tail||_2+||nabla²u_tail||_2
            <= C K_u delta^(3/2).                       (2)

The same bound holds on a finite cut that removes part of the tail; its constants are independent of the cut under the stated fixed-seed hypotheses. Derivatives of the cutoff are included in (1). This is a smooth directional localization, not multiplication of an unbounded second-order operator by a sharp characteristic function.

Assume the uniform long-heat Hilbert--Schmidt estimate and Hermitian bulk form trace identification of `finite-cut-ordered-bulk-endpoints.md`. For 0<s<=t/2, r=t-s, their factorization gives

 |Tr_form[q_(u_tail)^bulk K_s q_w^bulk K_r]|
    <= C_t N(u_tail) N(w)
    <= C_t K_u N(w) delta^(3/2).                        (3)

For s>=t/2 exchange the two heat intervals using the Hermitian form identity; the same fixed-t bound holds. The reversed ordering is handled by interchanging the directions. Integrating with the ordered Duhamel weight t-s yields an O_t(delta^(3/2)) bound when one direction is so localized. If both directions are supported in the tail, the same argument gives O_t(delta³), under their respective norm bounds.

This provides the pairing that the single-vertex trace norm in `physical-annulus-square-trace-class.md` did not: a single localized first-vertex sandwich need not decay by its crude volume estimate, while an ordered product has two Hilbert--Schmidt factors and decays when one direction has a small physical L2-based norm. Equation (3) is conditional on the actual bulk/Green decomposition, uniform H5 factors and form-trace passage. It does not cover terms with boundary forms, the mixed second vertex, a conformal-log insertion moved through heat, t->0, angular re-normalization or source matching. No Lean certification is claimed.

Remaining to-do list: prove the common physical-domain and heat hypotheses, handle weighted and boundary terms and the regulator, finish novelty and manuscript, and certify supported claims on GCP.

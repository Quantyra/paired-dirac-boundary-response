# Conformal refinement of moving-cut boundary coefficients

This sharpens `moving-cut-zero-sector-boundary-coefficients.md` when the boundary data have the stated conformal structure. It is a local coefficient calculation for the stipulated smooth product-orbit family; it does not establish a uniform differentiated heat remainder or identify the physical boundary realization.

Let u,v be stationary real directions with |u|,|v|<=K delta³, |du|,|dv|<=K delta², and |nabla²u|,|nabla²v|<=K delta at the cut y=delta. Let g_z=exp(2zv)g and assume a fixed scalar insertion u, a smooth mixed square with a boundary involution chi fixed in the identified boundary frame, and uniformly bounded base coefficient tensors. The boundary circle length is uniformly bounded. Suppose the first variations of its geometric and Robin data obey the natural local bounds

  |delta_v K|+|delta_v S|+|delta_v(nabla_boundary chi)|
      <= C(|v|+|dv|),
  |delta_v R|+|delta_v E|+|delta_v R_nnnn-related terms|
      <= C(|v|+|dv|+|nabla²v|).                              (1)

Here R_nnnn-related terms denotes the normal curvature contractions appearing in a3, not an independent fourth derivative of v. These estimates hold for the usual conformal geometric quantities and a Robin coefficient depending smoothly on the metric and first normal field jet; verifying that the source's actual square and spin/twist data have this form is an additional task. Any extra coupling with higher derivatives needs its own bound.

In two dimensions the conformal boundary measure and normal obey delta_v(ds)=v ds and delta_v(partial_n u)=-v partial_n u, so

  delta_v[(partial_n u) ds]=0.                                (2)

For the normal Hessian of a fixed scalar u,

  delta_v(nabla²u(n,n))
      = -2v nabla²u(n,n)-2(n v)(n u)+<dv,du>,                (3)

and hence its magnitude is O(K² delta^4). Equation (3) includes the variation of the Levi-Civita connection and the normalization of both normal vectors. Together with the variation of ds, it gives O(K² delta^4) for the a3 normal-second-derivative term.

The [standard mixed-boundary formulas](https://arxiv.org/html/hep-th/0306138v3#S5.SS3), equations (5.30)--(5.32), now give the sharper estimates

  |partial_v a1_boundary(u)| <= C K² delta^6,
  |partial_v a2_boundary(u)| <= C K² delta^5,
  |partial_v a3_boundary(u)| <= C K² delta^4.                (4)

For a1, the sole u term acquires the boundary-measure variation v. For a2, the chi partial_n u term has zero variation by (2) because chi is fixed, while the uK and uS terms acquire O(|v|+|dv|). For a3, variations of curvature and E contribute u O(|v|+|dv|+|nabla²v|), variations of K and S multiply either u or partial_n u, and the last normal-Hessian term is controlled by (3). All are O(K² delta^4) or smaller. The same bounds hold after exchanging u and v. A fixed overall trace normalization only changes C.

At t=epsilon, the three terms in the zero-sector mixed jet are bounded by C K²[delta^6 epsilon^(-1/2)+delta^5+delta^4 epsilon^(1/2)]. Multiplication of the geometric part by the full nonzero angular Theta(epsilon)=O(epsilon^-1) gives

  C K²[delta^6 epsilon^(-3/2)+delta^5 epsilon^(-1)
                               +delta^4 epsilon^(-1/2)].      (5)

Thus delta=epsilon^p with p>1/4 makes these specific coefficients vanish; this is compatible with the independently stricter contact-insertion path. Equation (5) does not control contact boundary terms, moving operators, parameter-dependent insertions or the differentiated heat remainder. The rough seam, global physical spin/twist identification, actual boundary condition and common-regulator subtraction remain open. No numerical or Lean certification is claimed.

Remaining to-do list: verify (1) for the physical square and its cut maps, establish the full differentiated remainder and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
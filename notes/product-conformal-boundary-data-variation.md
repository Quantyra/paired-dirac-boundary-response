# Conformal variation bounds for product mixed-boundary data

The later [conformal Dirac-square argument](product-conformal-robin-from-dirac-square.md) derives the Robin structural form for the stipulated geometric projector model, conditional on its closed-domain and Gauss hypotheses.

This checks the coefficient-variation hypothesis in `moving-cut-conformal-boundary-jet-refinement.md` for a specified geometric Dirac-type model. The local calculation remains conditional on matching the actual paired square and its mixed boundary condition to this model; it is not a global bundle or regulator theorem.

Let g_z=exp(2zv)g be a smooth conformal family on a two-dimensional product orbit. Assume fixed smooth spin/twist identification, fixed scalar u, fixed cut, and uniform bounds on the base curvature, second fundamental form and twist curvature. Use an orthonormal conformal spin identification in which the normalized boundary Clifford multiplication and the copy involution are fixed, so chi and Pi_+ are fixed matrices. Assume the mixed Robin endomorphism of the actual square has, in this identification, the form

  S_b=exp(-b) [S_0 + c (n b) Pi_+],                          (1)

where S_0 is a uniformly bounded fixed endomorphism, c is a fixed convention-dependent scalar and n is the base unit normal. This is the concrete domain hypothesis to be checked against `multiplier-square-boundary.md` after its spin-connection and normal convention are matched; merely knowing its principal boundary symbol does not prove (1). The sign of c is irrelevant to the bounds below. A bounded additional zero-order boundary term is allowed if its first variation satisfies the same estimate.

Along b_z=b+zv, differentiation of (1) gives

  delta_v S_b = -v S_b + c exp(-b) (n v) Pi_+,
  |delta_v S_b| <= C (|v|+|dv|).                             (2)

For the one-dimensional boundary in a two-dimensional orbit, the standard conformal normal and curvature formulas give

  delta_v n_b=-v n_b,   delta_v(ds_b)=v ds_b,
  delta_v K_b=-v K_b+n_b v                                   (3)

up to the chosen sign convention for K and n. In all cases |delta_v K_b|<=C(|v|+|dv|). The base metric and b bounds make the constants uniform on the stated compact moving-cut family.

The scalar curvature varies by delta_v R_b=-2v R_b-2 Delta_b v. In dimension two the normal sectional curvature contraction in the a3 coefficient is a constant multiple of R_b. For a geometric twisted Dirac square, write its endomorphism as E_b=-R_b/4 Id plus Clifford contraction of a fixed twisting curvature. Under the conformal orthonormal identification the latter contraction varies algebraically in v (two raised orthonormal directions), so

  |delta_v R_b|+|delta_v E_b|+|delta_v R_anan,b|
        <= C (|v|+|dv|+|nabla²v|).                           (4)

The first-derivative term is harmless and allows for uniformly bounded coordinate/frame changes. If the connection itself varies rather than being fixed under the identification, its variation must be added and separately bounded.

Finally, chi is fixed as an endomorphism, but its ambient tangential covariant derivative need not vanish. The variation of the Levi-Civita spin connection is algebraic in dv in conformal orthonormal frames. Hence, with uniformly bounded base connection and chi,

  |delta_v(chi_:a)| <= C (|v|+|dv|),                          (5)

including the change of normalized tangent frame. Equations (2)--(5) verify the bounds used in the conformal jet refinement for this stipulated geometric model. In particular, for source-type cubic jets they imply the O(delta^6), O(delta^5), O(delta^4) a1--a3 variation bounds derived there.

This calculation does not prove (1), the source's boundary spin/copy and magnetic identifications, uniform high-order heat remainders, or the equivalence of a local cut with transported infinity data. It does not establish the full mixed response, common regulator or Lean certification. No numerical execution is used.

Remaining to-do list: match the actual square boundary and bundle to (1), prove the differentiated rough remainder and common regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
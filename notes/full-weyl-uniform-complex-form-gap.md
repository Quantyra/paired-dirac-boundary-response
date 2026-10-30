# Uniform complex form gap for full-Weyl modes

This extends the conditional real combined-mode gap in `full-weyl-combined-mode-gap.md` to a uniform complex neighborhood. The related `conversion-complex-sectorial-gap.md` treats a different conversion form. Neither result supplies a trace-norm cut comparison or the physical response.

For every angular and thermal mode and every cut under consideration, let P=P_(mu,nu,b) be the closed real-field operator on its actual domain V, and q_0(v)=||Pv||². Assume the same constants g>0 and lambda_*>0 give

  q_0(v) >= g (mu²+nu²)||v||² >= lambda_* ||v||².       (1)

Assume the full and cut forms are closed, and the real multipliers u,w preserve each V. For z=(z1,z2), let h_z=exp[-(z1 u+z2 w)/2] and P_z=h_z P h_z on V. Require h_z and its inverse to preserve V, with uniform multiplier bounds, and the first-order commutator estimate

  ||[P,h_z]v|| <= C r ||v||,  r=|z1|+|z2| <= 1,        (2)

uniformly in the modes and cuts. This holds, for example, if the scalar directions have uniform W1,infinity bounds, the principal coefficients are uniformly bounded, and angular and thermal terms commute with these stationary scalar multipliers. These are hypotheses about the actual domains and family; they do not follow merely from formal differential expressions.

The exact identity P_z-P=(h_z²-1)P+h_z[P,h_z] and (2) imply

  ||(P_z-P)v|| <= C r (||Pv||+||v||).                     (3)

Use the inner product linear in its first argument and define the holomorphic common-domain form

  q_z(v,k)=<P_z v,P_(bar z) k>.                           (4)

Here bar z conjugates both parameters; (4) agrees with the ordinary squared norm when z is real. Expanding the two factors around P and applying (3) to z and bar z yields, uniformly,

  |q_z(v,v)-q_0(v)| <= C' r (q_0(v)+||v||²)
                     <= C' r (1+lambda_*^-1) q_0(v).    (5)

Choose rho>0 independently of mode and cut so the last coefficient is at most 1/2 whenever r<=rho. Then

  Re q_z(v,v) >= q_0(v)/2 >= (g/2)(mu²+nu²)||v||²,     (6)
  |Im q_z(v,v)| <= q_0(v)/2 <= Re q_z(v,v).             (7)

The forms remain closed and uniformly sectorial because their real parts are equivalent to q_0. Their associated m-sectorial operators L_z consequently satisfy

  ||exp(-t L_z)|| <= exp[-(g/2)(mu²+nu²)t],  t>=0.      (8)

This follows from the contraction semigroup theorem after shifting L_z by the lower bound in (6). The uniform positive lambda_* is essential to this particular argument; for a zero angular mode it can come from a verified uniform nonzero thermal gap. A sector with no such gap requires a separate argument. The constants also depend on the fixed direction bounds, not on unrestricted perturbations.

The result supplies a common complex form neighborhood and operator-norm damping, conditional on the stated hypotheses. It does not establish uniform trace-class smoothing, complex Poisson or moving-cut bounds, nor permit differentiating the real-parameter estimate in `full-weyl-localized-heat-tower-bound.md`: uniform convergence of real functions alone does not control their derivatives (for example sqrt(ell) sin(x/ell)). A uniform holomorphic trace-norm comparison on a fixed complex polydisc, or direct derivative estimates, remains necessary. Physical domain and boundary matching, the mixed response and subtraction, and Lean certification remain open.

Remaining to-do list: prove the required complex trace and cut estimates or direct derivative bounds, verify physical domains and normalization, complete the regulator and novelty analysis and manuscript, and certify supported claims on GCP.

# Operator-level heat locality for the physical cut

This proves the operator-norm part of the separated-interior comparison
proposed in `physical-cut-tail-locality-reduction.md`. It uses the uniform
first-order form and graph hypotheses stated below. It does not by itself
prove the required trace/Schatten or differentiated mixed-response estimate,
physical source normalization, common-regulator limit or Lean certification.

Let X be the complete physical manifold and X_delta the finite-cut
exhaustion, with the same smooth differential expression and bundle
identification on their common interior. Let D_delta and D be the stipulated
closed first-order realizations, L_delta=D_delta*D_delta and L=D*D, and
K_delta(t),K(t) their heat semigroups. Embed the cut operator by restriction
and zero extension. Assume the common physical ellipticity and uniform
first-order graph bounds, bounded scalar multiplier/product rules, and
uniform first-order domain preservation of the real Lipschitz weights used
in `paired-form-davies-estimate.md` and `paired-weighted-derivative.md`.
For the cut, use its actual H1 projector domain; weights are scalar and
preserve that domain. The complete operator uses its corresponding closed
form domain. These hypotheses include the required geometric and bundle
identifications and are not established just by the pointwise gamma matrices.

Fix 0<a<b<1. Let K be any measurable set in the common region u>=c delta^a,
where c>0 is independent of delta. Choose a smooth real cutoff chi_delta
which is zero near the cut, one on u>=c delta^a, and transitions in a fixed
physical-width neighborhood of u=delta^b. Derivatives through order two in
physical charts are uniformly bounded. With F=supp(d chi_delta), the bound
on |d log u|_g yields, for sufficiently small delta,

  dist(K,F) >= c_1 (b-a)|log delta|-C_1 =: d_delta>0.  (1)

The same physical metric and distance apply on the common interior. No
boundary condition is imposed at the compactified infinity of X.

The domain-preserving cutoff and first-order product rules give, in the
sense of forms and then by smooth-core approximation,

  K_delta(t) chi_delta-chi_delta K(t)
      = - integral_0^t K_delta(t-s) C_delta K(s) ds,     (2)
  C_delta = D* [D,chi_delta]-[D*,chi_delta](-D)

where the second line is shorthand for the local commutator
[L,chi_delta]=D* A-A* D with A=[D,chi_delta]. Its exact adjoint signs are
those in `first-order-collar-commutator.md`; the estimate below uses the
explicit D* A-A* D expression. The commutator is supported in F and its
coefficients and the coefficients of A and dA are uniformly bounded. Since
chi_delta vanishes near the cut, it maps each heat/form domain into the
other problem's common interior domain; the equality is not an identity of
unidentified global square domains.

The weighted-form argument in `paired-form-davies-estimate.md` and the
localized energy argument in `paired-weighted-derivative.md` apply to both
real nonnegative forms under the uniform assumptions above. Thus, with
constants independent of delta and the field approximant, heat and one
localized Dirac derivative between K and F obey a Gaussian off-diagonal
operator bound, with a polynomial factor C(1+s^(-1/2)) for the derivative.
Use a fixed-width interior cutoff equal to one on F to express the
commutator form as a finite sum of bounded multipliers times at most one
localized first-order derivative. After compressing (2) by 1_K on both sides,
Schatten norms are not needed: the two off-diagonal operator factors give

 ||1_K(K_delta(t)-K(t))1_K||
   <= C integral_0^t [1+s^(-1/2)+(t-s)^(-1/2)]
          exp[-c d_delta^2/s-c d_delta^2/(t-s)] ds
   <= C (t+sqrt(t)) exp[-c' d_delta^2/t],  0<t<=1.       (3)

The endpoint integrals are finite. In the last step use
1/s+1/(t-s)>=4/t and integrate the polynomial factor. For large enough
|log delta|, (1) turns (3) into a bound of the form
C exp[-c''(b-a)^2|log delta|^2/t], after adjusting constants. The constant
cutoff terms cancel on K because chi_delta=1 there.

This is an L2 operator-norm comparison for the stipulated real heat
semigroups. To reach equation (4) of the tail/locality reduction one still
needs localized Hilbert--Schmidt or trace-norm versions with the mixed
vertices, control of the noncompact summation and time derivatives, and
verification of the uniform physical bundle/domain hypotheses. An operator
norm bound cannot be substituted for a trace bound on an infinite-volume
space. No numerical run or Lean certification is claimed.

Remaining to-do list: establish localized Schatten and response versions of
(3), match the physical source and subtractions, complete novelty and
manuscript, and certify supported claims in Lean on GCP.
# Derivative off-diagonal heat input from weighted forms

This reduces the Gaussian H5 hypothesis in `unsandwiched-second-vertex-local-heat.md` to uniform weighted-form and local elliptic hypotheses already used separately in `complex-family-locality.md` and `physical-h5-from-mixed-h3.md`. It does not verify those hypotheses for the moving physical boundary or prove the physical response.

Let L=D*D>=0 on a smooth finite cut, K_s=exp(-sL). Assume uniform first-order graph and scalar multiplier product rules, the boundary-domain multiplier invariance, and the uniform local H5 elliptic estimates of the H5 note on nested interior and boundary charts. For real bounded Lipschitz weights phi with |d phi|<=alpha, assume the associated conjugated forms have a common domain, uniform sector angle and shifted coercivity of the form in `complex-family-locality.md`, with shift C(1+alpha²). This is a form-domain requirement; preserving the operator square domain under the weight is not assumed.

The weighted analytic semigroup estimate and Cauchy differentiation in complex time yield, for integer m=0,1,2 and 0<s<=1,

 ||e^phi L^m K_s e^(-phi)||
    <= C s^(-m) exp[C(1+alpha²)s].                      (1)

Applying the corresponding weighted form-energy estimate to the half-time factor also gives

 ||e^phi D L^2 K_s e^(-phi)||
    <= C s^(-5/2)(1+alpha sqrt(s))^N exp[C(1+alpha²)s], (2)

for a finite N independent of the cut and chart. Equation (2) requires the uniform weighted first-order energy estimate, not merely the L2 Davies--Gaffney bound. It follows under the stated weighted-form hypotheses by splitting at s/2, bounding L²K_(s/2) with (1), and applying the weighted energy estimate to the remaining heat factor; scalar commutator terms contribute polynomial factors in alpha.

Let eta_k be supported in one chart and let Q_j be the enlarged chart around chi_j. Choose phi with oscillation at least alpha d between supp eta_k and Q_j, where d is their distance up to a fixed chart-radius adjustment. Restricting (1)--(2) to Q_j gives a factor exp[-alpha d+C alpha²s]. The local H5 estimate in `physical-ordered-vertices-cutoff-uniform.md` controls the output on the smaller chart by local norms of K_s, L K_s, L² K_s and D L² K_s on enlarged charts. Applying those estimates to K_s eta_k, optimizing alpha=d/(2Cs), and absorbing the resulting finite polynomial in d/s into a smaller Gaussian gives

 ||chi_j V K_s eta_k||_2
    <= C_s A_j exp[-c d(j,k)²/s].                       (3)

The final step uses the W3,infinity coefficient norm A_j, the product rule and the Hilbert--Schmidt embedding H3 -> L2 in dimension four. Fixed chart-radius adjustments change C_s, not the Gaussian conclusion. Uniform boundary charts, local elliptic constants and weight-domain preservation are essential. Together with the local H3 bound for eta_k K_s and the chart-counting condition, (3) supplies the off-diagonal hypothesis of the unsandwiched criterion for fixed positive times.

This is a conditional analytic implication, not a verification of the actual paired source domains, the uniform weighted form bounds for its moving physical cut, the mixed-second boundary term, or a small-time regulator. The constants C_s can diverge as s->0. No Lean certification is claimed.

Remaining to-do list: verify the physical moving-cut form and boundary hypotheses, establish all mixed response terms and regulator, complete novelty and manuscript, and certify supported claims on GCP.

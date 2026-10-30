# Local complex trace bound for the full-Weyl cut model

This verifies the complex trace-bound hypothesis of `real-to-mixed-cut-interpolation.md` in the conditional one-dimensional symmetric-lapse model, under the explicit uniform domain, sectorial and local reference assumptions below. It does not verify those assumptions for the physical boundary or identify the physical response.

For each mode and full or cut interval let A0=P*P be the real square, and let L_z be the associated complex form operator. Assume the common complex polydisc, closed forms and uniform sectorial comparison of `full-weyl-uniform-complex-form-gap.md`, with

 Re q_z(v,v) >= c q_0(v) >= c g (mu²+nu²)||v||².       (1)

Assume the sector angle and constants are uniform in the modes and cuts. Let S be bounded multiplication supported in the fixed regular collar, restricted to the cut interval when appropriate. Write U=integral |S|² in the canonical measure, uniformly bounded for both intervals. Assume the local reference estimate of `full-weyl-reference-local-trace.md` applies uniformly on each interval:

 ||S(A0+lambda_ref)^(-1/2)||_2² <= C U,
 lambda_ref=1+C0(1+|mu|+|nu|)².                          (2)

For the cut interval this requires a uniform local Neumann comparison, in particular a collar interval of length bounded below and the stated uniform coefficient and local H1 bounds. The same estimate holds with S replaced by S*: both are scalar multipliers.

Let T_z(s)=exp(-s L_z), and put Lambda=mu²+nu². Uniform sectorial semigroup estimates, after shifting by a fixed fraction of the gap in (1), give

 ||T_z(s)|| <= exp(-a Lambda s),
 ||L_z T_z(s)|| <= C(s^-1+Lambda) exp(-a Lambda s).       (3)

To justify the second inequality, apply the standard analytic semigroup derivative estimate to the uniformly sectorial shifted forms, then restore the scalar shift. Since the real form norm is controlled by Re q_z, the form identity and Cauchy-Schwarz imply

 ||(A0+lambda_ref)^(1/2) T_z(s)||
   <= C (s^-1/2+sqrt(lambda_ref)) exp(-a' Lambda s).     (4)

Here the Lambda term from (3) is absorbed into the exponential by reducing a to a'>0. The same bound holds for the adjoint semigroup because its adjoint form has the same real part and sector bounds.

Factor the localized semigroup at half time. Applying (2), (4), and the Hilbert-Schmidt ideal inequality to S T_z(t/2) and T_z(t/2) S gives

 ||S T_z(t) S||_1 <= C U (t^-1+lambda_ref)
                                      exp(-a'' Lambda t). (5)

The estimate remains true for the embedded cut semigroup J* T_cut J, with S restricted to the retained interval. Thus the difference is bounded by the sum of the two sides of (5). For angular masses M_n>=c n, multiplicities d_n<=C n, and a fixed antiperiodic lattice |nu_j|>=c|j+1/2|, Gaussian lattice sums yield, for 0<t<=1,

 sum_(n>=1) d_n sum_j ||S[T_nj,z(t)-J*T_cut,nj,z(t)J]S||_1
      <= C U t^(-5/2).                                   (6)

Indeed sum n exp(-c t(n²+(j+1/2)²))=O(t^-3/2), and the sum with an extra 1+n²+(j+1/2)² is O(t^-5/2). A finite zero angular sector obeys the same bound if its corresponding uniform thermal gap and local reference estimates hold.

On any smaller polydisc the mode families are trace-class holomorphic: local Hilbert-Schmidt bounds for the half-semigroup factors, weak holomorphy, and the trace-ideal product give trace-norm holomorphy. The Gaussian bound is locally uniform, so the l1 mode sum is holomorphic there. Consequently, provided the real comparison is uniform on the required real neighborhood, the interpolation note applies with K=5/2 in this model. A bounded holomorphic moving multiplier can be included by the trace ideal property.

The actual physical mode domains, uniform cut form and reference constants, thermal lattice and physical endpoint identification remain separate hypotheses. This estimate controls the local heat comparison, not the curved tangent subtraction, action contacts, counterterms or the full regulator. No Lean certification is claimed.

Remaining to-do list: verify the model assumptions against the physical source, control all response and subtraction terms, complete the regulator and novelty audit and manuscript, and certify supported claims on GCP.

# Quantitative angular heat tail for real full Weyl congruence

This is an ordinary positive-time estimate for the compact constructed product
in `full-weyl-product-graph-domain.md`. It is for the heat trace itself, not
its parameter derivatives, a physical regulator, or a Lean certificate.

Let P_mu=D+i mu Gamma be a product mode with P_mu* P_mu=L+mu^2, L>=0,
and compact orbit resolvent. Let b be real, orbit-dependent, with
||b||_infinity<=B0 and ||db||_infinity<=G0, and P_mu,b=E P_mu E as in
that note. The mode-uniform reverse graph inequality implies, for v in the
common form domain,

    ||P_mu,b v||^2 >= c ||P_mu v||^2 - C ||v||^2,
    c=exp(-2 B0)/2,   C=exp(-2 B0) G0^2/4.             (1)

Indeed ||P_mu v|| <= exp(B0)||P_mu,b v||+(G0/2)||v|| and
(a+b)^2<=2a^2+2b^2. With the natural square H_mu,b=P_mu,b*P_mu,b,
(1) is the form inequality

    H_mu,b >= c(L+mu^2)-C.                              (2)

It is essential to use eigenvalue comparison, not operator monotonicity of
exp: the exponential is not generally operator monotone. Both sides have
compact resolvent under the compact H1 form-domain hypotheses. The min-max
principle applied to (2) therefore gives, with multiplicities included,

    Tr exp(-t H_mu,b) <= exp(Ct-c t mu^2) Tr exp(-c t L). (3)

The inequality remains valid if the lower comparison has negative spectrum.
For the full angular projection Q_M onto |mu|>=M, mode reduction and
nonnegative trace summation yield

    Tr[Q_M exp(-t P_b*P_b)]
      <= exp(Ct) Tr exp(-c t L)
         exp(-c t M^2/2) Theta(c t/2),                  (4)

where Theta(s)=sum_j exp(-s mu_j^2), including all multiplicities and zero
modes, and M>0. The last step uses
exp(-c t mu^2)<=exp(-c t M^2/2)exp(-c t mu^2/2) on the tail.

For the recorded magnetic sphere tower, Theta is finite and has the explicit
positive-time estimate in `angular-vertex-heat-majorant.md`, plus its finite
zero-mode contribution. Thus (4) gives an explicit Gaussian cutoff rate at
fixed t>0, uniform over real orbit-dependent b with the stated B0,G0. It is
also uniform on any compact interval [t0,T] with t0>0 after bounding the
remaining heat factors there. The result counts the angular spectrum once.

This bound does not imply an equally explicit bound for mixed parameter
trace derivatives: differentiating an inequality is invalid, and a complex
Cauchy estimate would require separate uniform sectorial trace control. Nor
does (4) provide small-time uniformity at fixed M, control individual
Duhamel vertices, establish the physical identification or justify the
common-regulator limit. No numerical calculation is used.

Remaining to-do list: verify physical bundles and boundary matching, prove
the full subtracted response and regulator estimates, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
# Uniform positive-time unsmoothed RN contact convergence

This strengthens `rn-unsmoothed-cut-contact.md` from each fixed t>0 to a
compact positive-time interval, for its fixed separated RN model. It does
not claim a quantitative cut rate, t->0 uniformity, physical Euclidean
identification or Lean certification.

Use the full and cut heat operators T(t)=exp(-tH²),
T_ell(t)=J_ell* exp(-tH_ell²)J_ell, and bounded radial L² insertions u,v
supported in the fixed compact K of the cited note. For 0<t0<T0 define

 I_ell(t)=integral_0^t Tr[M_u T_ell(t-s) M_v T_ell(s)]ds,
 I(t)=integral_0^t Tr[M_u T(t-s) M_v T(s)]ds.

Then

    sup_(t0<=t<=T0) |I_ell(t)-I(t)| -> 0 as ell->0.        (1)

The sums include the complete angular spectrum, multiplicities and zero
modes, without an added angular heat factor.

For r in a compact interval [r0,T0] with r0>0, the localized half-heat
factors M_u T_ell(r/2) are uniformly Hilbert--Schmidt by the RN local
angular estimate, and converge in Hilbert--Schmidt norm at each r by the
fixed-time argument in the cited note. Their convergence is uniform in r:
write each factor as a uniformly Hilbert--Schmidt factor at time r0/4
followed by the remaining bounded heat factor. The spectral theorem gives
an ell-independent operator-norm Lipschitz bound in r for that remaining
factor, since its time stays bounded below by r0/4. A finite r-grid then
upgrades pointwise convergence to uniform convergence. The same holds for v.
Zero extension is handled on the retained projection, where the semigroup
property holds; the projected factor has no identity contribution on the
removed collar.

Set s=t alpha. On alpha in [epsilon,1-epsilon], the two heat times remain
uniformly positive. The Hilbert--Schmidt product factorization in
`changing-cut-smoothed-contact.md`, with angular smoothing omitted as in
the RN note, and uniform strong convergence of the remaining heat factor
imply uniform convergence of the trace integrand in t and alpha. For the
strong factor, uniformity after multiplication by the relevant compact
Hilbert--Schmidt factors follows from finite-rank approximation; the heat
family is uniformly bounded.

## Uniform strong-times-Schatten step

The compactness needed above follows directly from the uniform S2
convergence, rather than from a uniform S2 bound alone. On the compact
interior time/alpha parameter set, each limiting localized half-heat factor
is continuous in S2 and therefore has compact image in S2. The corresponding
cut factors converge to it uniformly in S2, so their tails are uniformly
approximated by a finite set of S2 operators.

More generally, suppose D_ell(q) is uniformly bounded and tends strongly to
zero uniformly in q on a compact parameter set. If K(q) is a compact family
in S2, then sup_q ||D_ell(q)K(q)||_2 tends to zero. To prove it, approximate
K(q) uniformly by finitely many finite-rank operators. Strong convergence is
uniform on each finite-dimensional range, and the error is bounded by the
common operator norm times the S2 approximation error. If K_ell(q) converges
to K(q) uniformly in S2, the same conclusion holds with K_ell by a triangle
inequality. Right multiplication is handled by applying the statement to
adjoints; here the heat factors are self-adjoint. Schatten Holder then turns
the resulting S2 convergence, together with the other bounded S2 factor,
into uniform trace-norm convergence of the product. This explicitly handles
the fact that both the heat operator and the compact factor vary with ell.
The same cited RN estimate bounds the absolute integrand, uniformly in ell,
by a constant times

    [(t-s)^(-1/4)+(t-s)^(-3/4)]
    [s^(-1/4)+s^(-3/4)].                                  (2)

After s=t alpha and t in [t0,T0], the endpoint contributions are bounded
uniformly by an integrable multiple of alpha^(-3/4)(1-alpha)^(-3/4).
First take ell->0 on the interior interval, then epsilon->0; this proves (1).
No finite angular truncation or numerical run is needed.

The constants can diverge as t0->0, and this argument supplies no rate in
ell. It concerns bounded volume insertions, not boundary evaluation or
unbounded geometric vertices. The physical paired bundle, sector mapping,
thermal normalization and common-regulator subtraction remain independent
obligations.

Remaining to-do list: establish the physical operator and trace matching,
control the short-time regulator and geometric response, decide novelty,
prepare the manuscript, and certify supported claims in Lean on GCP.

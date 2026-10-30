# Moving-cut massive conversion heat comparison

This combines the mass-weighted form comparison and complex trace bounds
for the compact orbit conversion model. It gives a conditional nonzero-mode
comparison, not physical boundary identification or a renormalized limit.

Assume the common-domain, uniform graph, sectorial, multiplier and W1,infinity
O(delta) pullback hypotheses in `conversion-mass-weighted-coercivity.md` and
`conversion-complex-sectorial-gap.md`. Assume the orbit is two-dimensional,
V->H is in S_p for a fixed 2<p<3, and the embedding norm is uniform. Let
T_delta(t), T_0(t) be the semigroups of the interpolating conversion forms
at a common r in [0,1], complex parameter z on the common smaller polydisc,
and mass M>=1. Constants below are uniform in these variables and in the
field regulator.

The complex version of the factor expansion in the mass-weighted note gives

  |q_delta(v,h)-q_0(v,h)| <= C delta ||v||_(V,M)||h||_(V,M).  (1)

Both forms have real part at least c(||v||_V^2+M^2||v||^2) and a uniform
sector angle. Set a=c M^2/2. On a common contour to the left of their
spectra, the form resolvent identity and coercivity, applied to each form
and its adjoint, yield

  ||(lambda-L_delta)^(-1)-(lambda-L_0)^(-1)||
       <= C delta / (|lambda-a|+M^2).                          (2)

Use rays lambda=a+s exp(+-i theta), s>=1/t, with theta strictly between
the common shifted-form sector angle and pi/2. Join their endpoints by the
arc |lambda-a|=1/t on the side outside that sector, passing through the
negative-real direction. Thus the rays lie in the right half-plane; the
arc avoids the spectrum, and |exp(-t(lambda-a))| is uniformly bounded on
it. The previous description incorrectly called the rays left-half-plane.

To see the resolvent factors, shift each form by a=c M^2/2. Its real part
still dominates c_0 (||v||_V^2+M^2||v||^2), and its imaginary part is at
most a fixed multiple of its real part. For mu=lambda-a on the contour,
rotate the form q-a<.,.>-mu<.,.> by a contour-dependent unit complex
number. Separation of arg(mu) from the closed sector gives, uniformly,

  |q(v,v)-lambda||v||^2|
      >= c_1 (||v||_V^2+(M^2+|mu|)||v||^2).                   (2a)

The fixed rotation yields the same lower bound for the real part. Lax--
Milgram gives ||(lambda-L)^(-1) f|| <= C||f||/(M^2+|mu|), and inserting
this into the coercive inequality gives
||(lambda-L)^(-1) f||_(V,M) <= C||f||/(M^2+|mu|)^(1/2).
Apply the same argument to the adjoint form for the other factor. The form
resolvent identity gives (2); all constants are independent of M. The arc
stays outside the sector by a fixed angular margin, including at its two
endpoints, so the same estimates apply there.
Dunford's formula then gives

  ||T_delta(t)-T_0(t)|| <= C delta exp(-c' M^2 t),             (3)

for 0<t<=1 and a smaller c'>0. On the rays the integral of
exp(-t s cos(theta))/(s+M^2) from s=1/t to infinity is uniformly bounded;
the arc contributes the same type of bound. The estimate includes the
mass-dependent shift rather than absorbing an exp(C M^2 t) constant.

The smoothing and mass decay in `conversion-massive-trace-angular-tail.md`
give ||T_delta(t)-T_0(t)||_p <= C t^(-1/2) exp(-c' M^2 t).
Interpolation between S_infinity and S_p gives the S3 bound

  ||T_delta(t)-T_0(t)||_3
      <= C delta^(1-p/3) t^(-p/6) exp(-c' M^2 t).            (4)

Factor each semigroup into three equal-time factors, telescope, and apply
Schatten Holder. Each undifferenced factor is bounded in S3 by C t^(-1/2)
exp(-c' M^2 t). Thus

  ||T_delta(t)-T_0(t)||_1
      <= C delta^(1-p/3) t^(-1-p/6) exp(-c' M^2 t).          (5)

Cauchy's formula on fixed smaller parameter circles supplies the same bound
for first and mixed derivatives. With a bounded moving insertion satisfying
the O(delta) comparison in `source-scalar-insertion-collar-pullback.md`,
the insertion telescope adds C delta t^(-1) exp(-c' M^2 t), which is
absorbed in (5) for delta,t<=1. Integration over r preserves the bound.

For the recorded nonzero angular tower, sum (5) using the tail bound in
`angular-tower-tail.md` with time c't. At each fixed positive time the tail
is uniform in delta, and the total difference tends to zero as delta tends
to zero. For a proper-time cutoff epsilon, a bound on the angular factor
for t>=epsilon and the exponential cut delta=exp(-4L/epsilon) imply
vanishing of the corresponding massive-model difference integrated over
[epsilon,1] against any fixed power of t. This conclusion still requires
the finite M<1 and zero sectors to be treated separately.

The claim depends on the stated common compact-domain assumptions and the
resolvent-contour estimate (2); it is not a physical-infinity boundary
comparison, an identification of source normalization or contacts, a
small-time subtracted curved estimate, or Lean certification. Those remain
open.

Remaining to-do list: verify the physical pullback and boundary, handle the
finite and zero modes, complete the curved response and common regulator,
resolve novelty, prepare the manuscript, and certify supported claims on GCP.

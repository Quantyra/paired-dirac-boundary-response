# Fixed-period thermal images in the flat geometric variation

This complements `fixed-period-flat-contact-images.md` for the geometric
variation entering the endpoint conversion. It is a free flat-cylinder
calculation under the stated Duhamel/trace-density hypotheses, not a physical
curved response, full heat Hessian, common-regulator theorem or Lean check.

Use the rank-two Dirac conventions of `flat-tangent-multiplier.md`, an even
smooth compact pair u,v depending only on y, and a periodic or antiperiodic
thermal circle of period T. Use the same half-domain and per-length
normalization as `thermal-cylinder-contact-plane-limit.md`. Let G_T(t;u,v)
be the first geometric variation D_v Tr_half[u K_t]/T at the free seed, with
u fixed, and G_infinity its plane trace-density analogue. Assume the relevant
positive-time Duhamel differentiation and folded trace identification; these
hypotheses are not supplied by the contact trace-class result alone.

Put a=alpha(1-alpha), x=t k^2,

  A(x)=integral_0^1 exp(-a x) d alpha,
  I(x)=integral_0^1 [1+x(1-2alpha)^2/4] exp(-a x) d alpha,
  Z_T(t)=T^(-1) sum_n exp(-t nu_n^2),
  W_T(t)=(4 pi t)^(1/2) Z_T(t).                               (1)

Using the same first square vertex as the flat multiplier note, completing
the radial Gaussian square and summing the *single* thermal index gives

  G_T = integral_R conjugate(uhat(k)) vhat(k) dk/(2 pi)
          [ W_T(t) I(tk^2)/(2 pi t) - W_T'(t) A(tk^2)/(2 pi) ]. (2)

For clarity, the intermediate terms before factoring the plane heat density
are H_t [Z_T A+(x/2)Z_T V+2t(-Z_T')A], where
H_t=(4 pi t)^(-1/2) and V=integral(1-2alpha)^2 exp(-a x)d alpha.
The last term is the thermal momentum square, not a second angular tower.
The identity -Z_T'=H_t[W_T/(2t)-W_T'] gives (2). The half factor and rank two
are already included. The plane limit has W=1, W'=0 and reproduces
I(tk^2)/(2 pi t), the multiplier in `flat-conversion-leading-remainder.md`.

The first endpoint integration-by-parts identity in the tangent note implies
x V=2-2A, without division by x. Thus I=(1+A)/2. For x>=0,
0<=A<=1 and |I|<=1. This bound concerns the geometric variation multiplier;
the separately differentiated full heat Hessian needs an additional time
derivative and is not asserted here.

## Image estimate

For theta=0 or 1/2, Poisson summation gives

  W_T(t)=sum_(m in Z) exp(-m^2 c/t) exp(2 pi i m theta),
  c=T^2/4.                                                     (3)

Fix t0>0 and put q0=exp(-c/t0)<1. Absolute convergence permits termwise
differentiation for t>0. Using m^2>=m and
sum_(m>=1) m^2 q0^(m-1)=(1+q0)/(1-q0)^3, for 0<t<=t0,

  |W_T-1| <= [2/(1-q0)] exp(-c/t),
  |W_T'| <= [2c(1+q0)/(1-q0)^3] t^(-2) exp(-c/t).            (4)

Plancherel and Cauchy--Schwarz applied to (2) therefore give

  |G_T-G_infinity| <= C_uv exp(-c/t) [C1 t^(-1)+C2 t^(-2)],     (5)

where C_uv=||u||_2||v||_2/(2 pi), C1=2/(1-q0), and
C2=2c(1+q0)/(1-q0)^3. The L2 norms are on the full normal line. For smooth
compact profiles, the Gaussian/Duhamel calculation and the absolutely
convergent Fourier pairing justify the displayed variation; extending the
variation itself to a rough family requires a separate trace differentiation
argument even though the right side extends continuously in L2.

Assume the angular factor satisfies |Theta(t)|<=C_Theta t^(-1) on (0,t0].
The image difference in the geometric endpoint-conversion term is then
bounded by C exp(-c/t)[t^(-2)+t^(-3)], and its integral against dt/t^2 is
finite. Indeed each integral integral_0^t0 t^(-p) exp(-c/t) dt is finite by
z=c/t; it vanishes at the lower endpoint. Identical local subtractions cancel
in the cylinder-minus-plane difference, but their physical equality is not
assumed. Together with the contact estimate this controls thermal images of
the specified flat endpoint conversion, not the distinct P1-D remainder.

The physical bolt, fixed-period geometry, paired source domain, direction
normalization, angular hypotheses and all local restorations remain to be
matched. No conclusion about a stable wormhole or physical admission follows.

Remaining to-do list: establish the physical source and regulator, the full
geometric heat Hessian and curved remainder, novelty and manuscript, and
certify supported claims in Lean on GCP.

# Fixed-period thermal images in the flat mixed heat Hessian

This differentiates `fixed-period-flat-geometric-images.md` at positive time
and bounds the thermal-image difference in the declared flat mixed heat
Hessian. It assumes the corresponding cylinder and plane variation identities
and their trace differentiability; it does not identify the physical curved
response, source subtraction, common regulator or a Lean certificate.

Use its rank-two half-trace and per-period normalization, real even smooth
compact radial directions u,v, and fixed period T>0. Let G_T and G_infinity
be the first geometric variations there, and assume for each positive t the
mixed heat variations satisfy the fixed-insertion identities

  H_T(t)=-2t partial_t G_T(t),
  H_infinity(t)=-2t partial_t G_infinity(t).                    (1)

These are the paired positive-time identity under its declared hypotheses,
not an assertion that a moving physical insertion has no derivative.
Let A,I,W_T be as in the geometric-image note, x=t k^2, and use its Fourier
normalization. Differentiating its exact multiplier gives

 H_T-H_infinity = (1/pi) integral_R conjugate(uhat) vhat dk/(2pi)
   * [ (W_T-1)(I-x I')/t - W_T' I
       + t W_T'' A + W_T' x A' ].                              (2)

The I' and A' derivatives are with respect to x. On any compact positive-time
interval the Gaussian representation, locally uniformly convergent thermal
series, and the all-frequency bounds below justify passing partial_t through
the Fourier pairing for the stated profiles. Equation (2) keeps the thermal
derivative terms; multiplying the plane Hessian by W_T alone would omit them.

## Uniform form-factor and image bounds

For x>=0, A=integral_0^1 exp(-a x)d alpha with 0<=a<=1/4, and the endpoint
identity gives I=(1+A)/2. Differentiating under the compact alpha integral,
A'=-integral a exp(-a x)d alpha and I'=A'/2. Since z exp(-z)<=1/e for z>=0,

  |A|<=1,  |I|<=1,  |x A'|<=1/e,
  |I-x I'|<=1+1/(2e).                                         (3)

These bounds are uniform over every Fourier frequency, including x=0.
Set c=T^2/4, q0=exp(-c/t0)<1. The first two image bounds in the preceding
note hold on 0<t<=t0. A second termwise differentiation of its Poisson series
and the bound m^2>=m give

  |W_T''| <= 2 exp(-c/t)[c^2 S4 t^(-4)+2c S2 t^(-3)],         (4)
  S2=(1+q0)/(1-q0)^3,
  S4=(1+11q0+11q0^2+q0^3)/(1-q0)^5.

Indeed S2=sum_(m>=1)m^2 q0^(m-1) and S4=sum_(m>=1)m^4 q0^(m-1).
Combining (2)-(4) with Plancherel and Cauchy--Schwarz yields

  |H_T-H_infinity|
    <= C_(T,t0) ||u||_2||v||_2 exp(-c/t)
                         [t^(-1)+t^(-2)+t^(-3)].              (5)

The norms are on the full normal line. The thermal sum is complete and the
bound is uniform on bounded L2 sets; extending the *trace Hessian* from smooth
profiles requires independently justified differentiability, even though the
Fourier right side extends in L2.

If the angular factor obeys |Theta(t)|<=C_Theta t^(-1), the difference after
that weight and dt/t^2 is integrable at zero, since every term is bounded by
C t^(-p) exp(-c/t) for a finite p. Identical local subtractions cancel from
the cylinder-minus-plane difference, but the actual source subtraction and
its normalization must still be matched. Estimate (5) is an image comparison
for the flat Hessian, not the t^(3/2) bound for the distinct curved P1-D
remainder, and it does not establish the physical bolt or common regulator.

Remaining to-do list: prove the physical domains, complete response and
regulator, settle novelty and scope, prepare the manuscript, and certify the
supported claims in Lean on GCP.

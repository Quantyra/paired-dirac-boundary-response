# Fixed-period thermal image bound for the flat contact

This applies the exact cylinder/plane relation in
`thermal-cylinder-contact-plane-limit.md` at a fixed nonzero period. It
controls the thermal images of the stated flat contact after angular weighting
and integration against dt/t^2. It does not replace the full physical
geometric response or establish the source's curved subtraction, bolt or
common-regulator limit. No Lean check is claimed.

Let I_T(t) denote the rank-two half-cylinder contact divided by the period T,
and I_infinity(t) the rank-two half-normalized plane contact of the cited
note. Use real even bounded L2 radial profiles u,v, a fixed T>0, and either
periodic or antiperiodic spin structure. Put c=T^2/4 and let 0<t<=t0.
The cited Poisson-summation estimate gives

  |I_T(t)-I_infinity(t)|
    <= [||u||_2 ||v||_2/(4 pi)] 2 exp(-c/t)/(1-exp(-c/t)).     (1)

Because exp(-c/t)<=exp(-c/t0), the denominator in (1) is bounded below by
the fixed positive number 1-exp(-c/t0). Hence

  |I_T(t)-I_infinity(t)| <= C_(T,t0,u,v) exp(-c/t),             (2)
  C_(T,t0,u,v)=||u||_2||v||_2/[2 pi(1-exp(-c/t0))].

The same estimate applies after subtracting identical local contact
counterterms from both I_T and I_infinity: those terms cancel exactly in the
difference. It does not assert that a physical prescription uses those
counterterms or that they are identical under a moving geometry.

Suppose the declared angular tower satisfies the separate bound
|Theta'(t)|<=C_Theta t^(-2) on (0,t0]. Then the *contact part* of the
conversion differs by at most

  |2 Theta'(t)[I_T(t)-I_infinity(t)]|
     <= 2 C_Theta C_(T,t0,u,v) t^(-2) exp(-c/t).               (3)

For the dt/t^2 measure used in the P1-D power audit, (3) is integrable and
has the explicit upper bound

  integral_0^t0 2 C_Theta C_(T,t0,u,v) t^(-4) exp(-c/t) dt
   = 2 C_Theta C_(T,t0,u,v) exp(-c/t0)
       [1/(c t0^2)+2/(c^2 t0)+2/c^3].                          (4)

Equation (4) follows by z=c/t and integration of z^2 exp(-z); no finite
thermal or angular truncation is used. In particular the small-t thermal
image contribution is integrable even after this angular and proper-time
weighting. For fixed T it also vanishes faster than any power as t tends to
zero. These are bounds for the declared flat contact and angular hypothesis,
not a physical admission margin or the unknown curved remainder constant.

The geometric heat variation may differentiate the thermal factor and must
be estimated separately. The actual source may use a different observable,
normalization or subtraction; the physical bolt, paired domains, rough-family
uniformity, angular tower and local restorations still require matching. The
estimate does not prove a uniform t^(3/2) bound for P1-D.

Remaining to-do list: prove physical source and regulator matching, complete
the geometric response and novelty audit, finish the manuscript, and certify
supported claims in Lean on GCP.

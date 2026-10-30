# Leading cubic seam with the full angular tower

This is a conditional flat-model asymptotic for the geometric heat response
in `flat-tangent-angular-sum.md`, not a physical action coefficient, curved
remainder or Lean certificate. It includes the full massive angular tower
and its Weyl derivatives. The factor one half below is the conditional
per-exterior flat normalization in `flat-orbit-fiber-normalization.md`.

Let A(x), I(x) be as in the angular-sum note, F=I-x I', and
G=I-x A'. From their integral definitions, G=(1+x/4)A. For a function H
write R_H(x)=H(x)-sum_(j=0)^3 H^(j)(0)x^j/j!. Subtracting these three
Taylor polynomials separately defines the flat diagnostic

 B_t = 1/(pi t) integral_R (dk/2pi) conjugate(uhat(k)) what(k)
       [Theta R_F(tk²) - t Theta' R_G(tk²) + t² Theta'' R_A(tk²)]. (1)

The subtraction is a specified mathematical convention for this diagnostic;
identification with the source's complete physical counterterms remains open.
Assume the weighted localized cubic profiles in `flat-boundary-coefficients.md`,
so k^4 uhat(k)->12c_u, k^4 what(k)->12c_w and these quantities are bounded.
For the massive tower use q>=0, b0>0,

 Theta(t)=sum_(n>=1) 2(q+2n) exp[-t n(n+q)/b0²].

Riemann sums after setting h=sqrt(t)/b0 and x=n h give

    t Theta(t) -> C,   -t² Theta'(t) -> C,
    t³ Theta''(t) -> 2C,      C=2b0².                      (2)

For example t Theta is the Riemann sum of 4b0² x exp(-x²), whose
integral is 2b0². The derivative moments insert x² and x^4, respectively;
the q-dependent terms vanish in the leading limit. The Gaussian moment
bounds in `angular-vertex-heat-majorant.md` give uniform boundedness of the
three expressions for small t. The finite zero sector, if separately added,
is lower order in this limit.

All R_H(s²)/s^8 are integrable: Taylor subtraction gives O(1) at zero,
and H grows at most linearly while the subtraction has degree three, giving
O(s^-2) at infinity. Scaling s=sqrt(t)k and applying dominated convergence
therefore yields

    lim_(t->0) t^(-3/2) B_t
      = (144 C c_u c_w/pi²) (J_F+J_G+2J_A),                (3)
    J_H=integral_0^infinity R_H(s²) ds/s^8.

The earlier tangent integral gives J_F=-5 pi^(3/2)/49152. To compute the
new moments use Taylor remainders and Gaussian integration:

 J_A = (8 sqrt(pi)/105) integral_0^1 a^(7/2) d alpha
     = pi^(3/2)/12288,
 J_G = J_A - (sqrt(pi)/15) integral_0^1 a^(5/2) d alpha
     = -pi^(3/2)/4096.

Here integral a^(7/2)=35pi/32768 and integral a^(5/2)=5pi/1024.
The first Gaussian factor follows from
integral_0^infinity [e^(-r²)-1+r²-r^4/2+r^6/6] dr/r^8
=8 sqrt(pi)/105; the second from the analogous subtraction through r^4,
whose integral with dr/r^6 is -4 sqrt(pi)/15. Taylor's integral remainder
justifies exchanging alpha and r; the absolute integrals are finite.
Consequently J_F+J_G+2J_A=-3 pi^(3/2)/16384, and

    B_t = -[27 C/(1024 sqrt(pi))] c_u c_w t^(3/2)
            + o(t^(3/2)).                                  (4)

This is the leading term for the declared geometric diagnostic and angular
sector. It differs in power and coefficient from multiplying the orbit-only
coefficient by Theta, because the Theta' and Theta'' kernels contribute at
the same leading order. The calculation does not assert that these Taylor
subtractions equal the physical counterterms, or that a contact contribution
cannot alter the complete observable. It also does not isolate the cubic-log
term: an o(t^(3/2)) error alone can mask it.

No numerical run is needed for the asymptotic. Physical folding, actual
sector multiplicities, common-regulator matching and the curved subtraction
must be established independently.

Remaining to-do list: match the physical subtraction and contact, control
subleading logarithmic terms and the curved regulator, verify geometry,
decide novelty, prepare the manuscript, and certify the claims in Lean on GCP.

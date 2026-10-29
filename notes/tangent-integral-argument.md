# Tangent remainder integral: ordinary calculation

Status: ordinary paper-specific calculation of the convergent integral in
section 4 of the [pinned rough-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).
This calculation assumes the source's displayed representation of F. It is
not an audit of the derivation of the multiplier, its Fourier normalization,
the boundary coefficients, or the curved quantum response. No Lean proof or
numerical execution is claimed.

For a = alpha(1-alpha) and phi(z)=(1+z)exp(-z), suppose

    F(x) = 1/2 + (1/2) integral_0^1 phi(a x) d alpha.

The beta integrals integral a^2 d alpha = 1/30 and integral a^3 d alpha =
1/140 give

    F(s^2)-1+s^4/120-s^6/840
      = (1/2) integral_0^1 [phi(a s^2)-1+(a s^2)^2/2
                            -(a s^2)^3/3] d alpha.

Let g(z)=phi(z)-1+z^2/2-z^3/3. Since
`g'(z)=z(1-exp(-z)-z) <= 0` for z >= 0 and g(0)=0, g is nonpositive.
Thus Tonelli applies to -g(a s^2)/s^8, including the alpha endpoints where
both sides vanish. The substitution r=s sqrt(a), for 0<alpha<1, yields

    J := integral_0^infinity [F(s^2)-1+s^4/120-s^6/840] ds/s^8
       = (1/2) B(9/2,9/2) L,
    L := integral_0^infinity g(r^2) dr/r^8.

The integral defining L is absolutely convergent: g(r^2)=O(r^8) at zero
and O(r^6) at infinity. Integrate by parts twice. All displayed boundary
terms vanish: at zero g(r^2)/r^7=O(r), and at infinity it is O(1/r);
similarly [1-exp(-r^2)-r^2]/r^3 tends to zero at both endpoints. Therefore

    L = (2/7) integral_0^infinity [1-exp(-r^2)-r^2] dr/r^4
      = (4/21) integral_0^infinity [exp(-r^2)-1] dr/r^2.

A further integration by parts gives

    integral_0^infinity [1-exp(-r^2)] dr/r^2
      = 2 integral_0^infinity exp(-r^2) dr = sqrt(pi),
    L = -4 sqrt(pi)/21.

Using Gamma(9/2)=105 sqrt(pi)/16 and Gamma(9)=40320 gives
B(9/2,9/2)=35 pi/32768. Consequently

    J = -5 pi^(3/2)/49152.

The nonpositive-integrand argument supplies a direct justification for
interchanging alpha and r, rather than assigning a value through analytic
continuation. All equalities are for this specific tangent kernel and
subtraction; they do not imply a uniform estimate for curved base metrics,
regulator convergence, or the paper's claimed coefficient normalizations.

Remaining to-do list: verify the original density-inclusive multiplier and
Fourier conventions, derive and check the stated boundary coefficients,
compare with prior work, and formalize the supported analytic result on GCP.

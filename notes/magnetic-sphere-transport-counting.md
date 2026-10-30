# Magnetic-sphere counting for heat-weighted transport

This checks the angular Weyl input of `heat-weighted-transport-sharpness.md`
against the specific higher-mode spectrum recorded in the pinned
[stationary massive boundary-layer source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md),
section 2. It does not identify the model transport projector with the
physical boundary condition or certify the paper.

The source records, for fixed b>0 and magnetic integer q>=0,

    mu_n²=n(n+q)/b²,  d_n=2(q+2n),  n>=1.                (1)

The multiplicity d_n already includes both nonzero signs. A finite number
of zero modes may be added separately and does not change the asymptotics.
For R>0 the largest included n is

    N_R=floor[(sqrt(q²+4b²R²)-q)/2].                       (2)

Summing (1) exactly gives the nonzero-mode counting function

    N(R)=sum_(n=1)^N_R 2(q+2n)
        =2 N_R (N_R+q+1)
        =2b² R²+O(R+1).                                   (3)

The O constant depends on fixed b,q. In particular, the number of modes in
R<=|mu|<=2R is 6b²R²+O(R+1), with endpoint conventions affecting only the
lower-order term. This supplies the positive Weyl-window hypothesis used in
`heat-weighted-transport-sharpness.md` with m=2 for this recorded angular
spectrum. The doubled orbit fiber in that note is counted separately; the
factor of two for angular signs must not be inserted again.

Equation (3), or directly (1), also implies

    sum_(n>=1) d_n exp(-t mu_n²) <= C_(b,q) t^(-1),
                                                       0<t<=1. (4)

For instance, mu_n²>=n²/b² and d_n=2q+4n; compare the resulting Gaussian
sums with their integrals and absorb the finite low modes into the t^(-1)
constant. A finite zero-mode contribution also obeys (4) after enlarging the
constant. Thus the angular heat upper bound and the annular lower count
needed for the sharp model statement both hold for the spectrum as recorded.

If A is the scalar collar transport integral of that same zero-energy
model, the operator-norm convergence condition |A|/sqrt(t)->0 and absolute
trace-norm condition |A|/t^(3/2)->0 follow as necessary and sufficient from
the earlier model argument. Applying those statements to the actual problem
still requires the frequency-dependent physical boundary map, radial heat
factor and normalization to match; (3)--(4) do not establish the complete
physical response or a common-regulator limit. No numerical calculation is
used.

Remaining to-do list: establish physical boundary matching and response,
resolve the final prior-art decision, prepare the manuscript, and certify
supported claims in Lean on GCP.
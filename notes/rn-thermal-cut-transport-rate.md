# RN cut rate for the model thermal transport bound

This combines the fixed RN collar bounds in `rn-cut-smoothed-transport.md`
with the thermal model in `frequency-dependent-collar-transport.md`. The
finite-collar spectral-parameter ODE bound itself was already derived in
`finite-cut-spectral-transport.md`; the additional step here is the complete
model thermal heat sum and its joint rate. This is not a physical resolvent,
response or Lean certificate.

For the frozen RN-AdS seed in `rn-cut-smoothed-transport.md`, write the
canonical tortoise interval from radius R to conformal infinity as

    D_R=integral_R^infinity dr/f(r),
    A_R=integral_R^infinity dr/[r sqrt(f(r))].

For fixed L4>0 and sufficiently large R, the existing comparison gives

    D_R<=2 L4²/R,       A_R<=sqrt(2) L4/R.                (1)

Thus both finite-collar inputs in the frequency-dependent estimate are
satisfied, and A_R+D_R<=C/R. This uses the canonical half-density radial
coordinate and angular coefficient a=sqrt(f)/r, not uncompactified proper
distance. The fixed RN family parameters are held constant.

Suppose, in addition, that the modewise spectral parameter is the declared
fixed thermal-lattice frequency nu_k and that the angular heat trace in the
same normalization is bounded by H t^(-1). The recorded magnetic-sphere
spectrum supplies such a bound at fixed radius, subject to matching the
units and multiplicities as described in `magnetic-sphere-transport-counting.md`.
Applying the model estimates in `frequency-dependent-collar-transport.md`
gives, for 0<t<=1,

    ||Q_R exp[-t(B²+nu²)]|| <= C R^(-1) t^(-1/2),
    ||Q_R exp[-t(B²+nu²)]||_1 <= C R^(-1) t^(-2).       (2)

Hence R(t) t² -> infinity is a sufficient joint path for the absolute
trace-norm upper bound in this model to vanish. Taking R->infinity first
at fixed positive t also makes the bound vanish. Neither observation by
itself justifies exchanging the cut, heat and regulator limits, and the
rate in (2) is not claimed optimal.

For the homogeneous first-order Euclidean equation, `euclidean-thermal-boundary-spectral-parameter.md` instead gives z=-i nu_k. The bounds above still apply because they depend only on |z|; the transported lines are generally different. `thermal-zero-sector-boundary-nonuniformity.md` gives an exact zero-angular-sector illustration.

The identification z=nu_k and the product heat weight are model assumptions:
the canonical spectral equation, Euclidean lapse, actual paired domain and
physical thermal/angle decomposition have not been shown to produce this
same boundary observable. The bound also has no independent second angular
factor; the source's signed magnetic multiplicity is counted once. Varying
RN parameters require common collar constants not supplied here. No
numerical calculation is used.

Remaining to-do list: establish the physical frequency and boundary mapping,
prove the full subtracted response and regulator limit, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
# Compatibility of model cut, angular and collar scales

This checks simultaneous choices for three already derived bounds. The
canonical resolvent comparison, compact-product heat derivative and auxiliary
contact are distinct observables; this is not their physical identification,
a common-regulator theorem or a Lean certificate.

Use a dimensionless small parameter t and choose

    tau=t,  epsilon=t,  ell_cut=exp(-4L/t),
    ell_loc=t^(2/5),
    M_ang^2=(3+eta) log(1/t)/(d t),                     (1)

where L=16(A^2+1) is the fixed canonical-seed constant in
`rn-infrared-angular-joint-rate.md`, d>0 is the fixed compact-product
angular-tail constant in `full-weyl-angular-proper-time-cutoff.md`, and
eta>0. The infrared split mass used in the proof of the canonical bound is
exp(-L/t); the angular threshold M_ang is a different quantity. The canonical
mass Gaussian and angular heat weights have both been set to t as model
choices, not identified with the physical action regulator.

The canonical model difference, integrated over the full mass interval,
is O(t^-3 exp[-L/(2t)]) by the cited joint-rate result, hence is integrable
against dt/t^2. The compact-product mixed-heat angular tail integrated over
proper times s in [t,1] is O(t^eta), using a single threshold M_ang for each
t. This compares regulated integrals; the O(t^eta) term is already integrated
in s and must not be integrated again as though it were a pointwise s-remainder.

For the separate auxiliary locality collar, the hypotheses and estimates in
`two-scale-model-cutoff-compatibility.md` give the single- and two-insertion
lapse bounds t^(6/5) and t^(16/5), respectively, and the locality exponential
exp(-c t^(-1/5)) up to the recorded polynomial prefactors. These are
integrable against dt/t^2. Also ell_cut/ell_loc->0, and the flat fixed-profile
mixed/complement seam terms vanish on the ell_loc=t^(2/5) path under the
hypotheses in `flat-shrinking-mixed-seam.md` and
`flat-weighted-cubic-leading-limit.md`.

The fixed RN outer radial cut can realize ell_cut: its canonical distance to
infinity is continuous and decreases to zero, with the O(1/R) asymptotic in
`rn-cut-smoothed-transport.md`. For sufficiently large R, the upper bound
ell_R<=C/R and ell_R=ell_cut imply R>=C' exp(4L/t) after using the matching
lower asymptotic ell_R~L4^2/R, so the model sufficient condition R t^2->infinity
in `rn-thermal-cut-transport-rate.md` also holds. This uses the fixed seed.

A physical joint limit does not follow. In particular, the angular bound's
d and prefactor must be uniform as the finite cut changes; the fixed compact
product proof does not provide that uniformity. The model observables must
also be identified with the same physical vertices, thermal factors, local
subtractions and regulator, and the fixed-direction curved complement must
be controlled. The estimates establish compatibility of conditional scales
only. No numerical calculation is used.

Remaining to-do list: prove uniform physical cut and bundle estimates, match
all response and regulator terms, settle prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
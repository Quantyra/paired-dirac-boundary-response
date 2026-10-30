# Interior conversion remainders from a parameter-uniform heat parametrix

This reduces the transition/interior remainder to a precise smooth interior
heat-kernel input. It does not establish that input for the physical family,
identify the source coefficients, or prove the outer-boundary contribution.

Let K be a compact subset of the interior of a smooth two-dimensional orbit,
possibly containing the regular bolt in Cartesian disk charts. Let U,V be
smooth bounded scalar insertions supported in K. Let L_z be the compact
orbit square for a geometric parameter z, with its actual closed form domain,
and consider the bounded potential perturbation L_(z,lambda)=L_z+lambda V.
Assume both parameter families are holomorphic near zero and their localized
trace is trace-class holomorphic. Define

  H(z,lambda,t)=Tr[U exp(-t(L_z+lambda V))].            (1)

At fixed t>0 the bounded-perturbation Duhamel formula gives

  -partial_lambda H(0,0,t)
      =integral_0^t Tr[U K_(t-s) V K_s] ds = I_t(U,V). (2)

The two insertions and their order are retained. The trace-norm identity
follows from the bounded potential and positive-time heat trace; it does not
require differentiating a square-operator domain.

A sufficient interior analytic input is the following: on fixed complex
parameter circles |z|=r_z, |lambda|=r_lambda, the localized trace has a
uniform expansion, with smooth coefficient functions a_j(z,lambda),

  H(z,lambda,t)=(4pi t)^(-1) sum_(j=0)^3 a_j(z,lambda)t^j
                    + O(t^3), 0<t<=t0,                (3)

with one remainder constant for the parameter circles and all members of
the stated interior family. The leading coefficient a_0 is independent of
the zeroth-order potential lambda V. The O(t^3) remainder in (3) is a
hypothesis about a parametrix through the displayed order, including its
trace normalization and any boundary-locality error; it is not supplied by
mere pointwise convergence of coefficients.

Cauchy's formula in z and lambda preserves the remainder order. The first
geometric derivative of H(z,0,t), after terms through t^1, has remainder
O(t^2): the j=3 term is itself O(t^2) with bounded derivative. From (2),
a_0's lambda independence removes a possible t^(-1) term, and the contact
has coefficients through t^2 with remainder O(t^3). These are stronger than
the O(t^(3/2)) and O(t^(5/2)) inputs in
`conversion-cutoff-dependent-subtractions.md`. Multiplication by the source
angular weights O(t^(-1)) and O(t^(-2)) leaves an O(t) remainder from
these two pieces, before any separately estimated locality error.

The source's specific coefficients and normalization must be matched to the
derivatives of a_j; (3) alone does not calculate them. For the three-region
partition, apply this to each relevant smearing/variation pair or another
bilinearly equivalent localization, retaining all cutoff derivatives. A
fixed compact support away from the outer boundary permits a local parametrix;
the bolt is an interior smooth chart by
`rn-bolt-metric-magnetic-extension.md`. Proving (3) uniformly requires a
finite atlas, uniform sufficiently high coefficient/parameter derivatives,
a justified complex-family parametrix or equivalent differentiated estimates,
and a uniform comparison with the actual boundary heat kernel. These are
still open for the declared physical family. The abstract closed-manifold
heat-parametrix result in [Ludewig, Strong short-time asymptotics and
convolution approximation of the heat kernel](https://link.springer.com/article/10.1007/s10455-018-9630-4)
is relevant background; it does not itself verify this parameter-uniform
boundary comparison.

No numerical run or Lean certificate is claimed.

Remaining to-do list: prove the stated uniform interior input and coefficient
match, control the outer seam and physical regulator, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
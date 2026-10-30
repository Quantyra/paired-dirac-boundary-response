# Complex thermal-image bound for the geometric bridge

This supplies the thermal-image estimate required by
`complex-bridge-geometric-remainder.md`. It is an auxiliary bridge bound,
conditional on the complex Poisson representation and its identification
with the operator family. It does not establish the physical domain,
common regulator or Lean certification.

Use f_z=f+zg on a closed complex disk with uniform bounds

    Re A_z>=m²/2,  |A_z|<=M²,  |B_z|<=G,

for A_z=integral f_z² and B_z=integral f_z' along a bridge path. These
follow from a sufficiently small disk and fixed W^{1,infinity} bounds.
Let T>0 be the fixed antiperiodic thermal period. For an integer k the
complex image factor in the source convention is

    exp[-k² T²/(4t A_z)] cos[k T B_z/(2 A_z)].

Set a=T² m²/(8M^4), d=T G/m² and c=a/2. Since
Re(1/A_z)>=m²/(2M^4) and |cos z|<=exp(|Im z|),

 |exp[-k² T²/(4t A_z)] cos[k T B_z/(2 A_z)]|
   <= exp[-a k²/t+d |k|]
   <= exp[-c k²/t+d² t/(2a)].                              (1)

The second step is Young's inequality. Also
|A_z^(-1/2)|<=sqrt(2)/m and
|exp[t B_z²/(4A_z)]|<=exp[t G²/(2m²)]. Summing all k!=0 and using
k²>=1+3(k-1) for k>=1 yields a uniform bound

 |sum_(k!=0) bridge-image integrands|
   <= (2 sqrt(2)/m) exp[t(G²/(2m²)+d²/(2a))]
          exp(-c/t)/(1-exp(-3c/t)).                          (2)

It holds pathwise, independently of the bridge and uniformly on the disk.
After integration against a bounded-support insertion and expectation, the
same bound holds times its L1 norm and the trace prefactor. Uniform absolute
convergence on a smaller disk and holomorphy of each term justify Cauchy's
formula, giving an identical exponential time factor, up to the inverse
disk radius, for the first z derivative. For a rank-two smeared heat
trace the extra 1/t prefactor and an angular weight Theta=O(t^-1) only add
powers of 1/t; their product still tends to zero uniformly as t decreases.
The separate moving-insertion derivative is bounded by applying (2) to
that fixed insertion, without differentiating an unproved real bound.

The constants depend on m,M,G,T and the disk radius. A uniform result over
approximants needs these bounds and T bounded away from zero. Establishing
the complex image representation for the chosen sectorial operator, the
radial-winding derivative and the physical collar/domain identification
remains separate. Equation (2) does not establish a curved mixed-response
remainder or a common-regulator theorem. No numerical computation is used.

Remaining to-do list: justify the complex bridge/operator representation,
control radial and physical locality defects, complete the geometric
conversion and novelty audit, prepare the manuscript, and certify in Lean on
GCP.

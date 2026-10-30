# Positive-time ordered physical form vertices

This gives a conditional endpoint-integrable trace estimate for the two
ordered first-form-vertex terms in `mixed-heat-vertex-inventory.md`. It uses
physical L2 decay of the fields and derivatives; it is not a short-time
subtracted remainder, common regulator theorem or Lean certificate.

Let D=D_b be the complete smooth physical Dirac realization, L=D*D>=0 and
K_s=exp(-sL). Suppose the fixed smooth coefficients and bundle charts are
uniformly controlled as in `physical-fixed-seed-heat-diagonal.md`, with
additional regularity sufficient for the long-time kernel bounds below. Let
u,w be real scalar directions for which the physical norms

    N(v)=||v||_2+||dv||_2+||nabla^2 v||_2              (1)

are finite, with the corresponding bounded coefficient norms needed for the
form products. On the common smooth core, the first square form vertex can
be written as a finite sum of the types

    D* M_a D,       D* M_B,       M_C D,                (2)

where a is a bounded scalar multiple of v, B,C are bounded Clifford
multipliers linear in dv, and their first physical derivatives are bounded
by C(|dv|+|nabla^2 v|). Coefficients involving the base field are bounded
multipliers with bounded first derivatives. These identities are form
identities, not claims that the vertices are bounded on L2.

Fix t>0. Assume that for r in [t/4,t], the heat kernels and their covariant
spatial derivatives through order two satisfy uniform diagonal bounds
sufficient to make M_a nabla^j K_r Hilbert--Schmidt with norm at most
C_t ||a||_2 for j=0,1,2, and similarly for adjoints. Assume the local
product/trace identities used below hold by smooth-core approximation.
For a fixed smooth bounded-geometry seed, these bounds follow from uniform
local elliptic smoothing at one higher order than in
`physical-fixed-seed-heat-diagonal.md`, provided the necessary higher
coefficient derivatives are bounded. Uniformity for the weighted cutoff
family is not asserted here.

For s in (0,t), consider the cyclically interpreted ordered trace

    F_(u,w)(s)=Tr[V_u K_s V_w K_(t-s)],                 (3)

where V_u,V_w represent the form vertices. First restrict s to a compact
subinterval of (0,t), so heat smoothing legitimizes the manipulations. For
0<s<=t/2 set r=t-s. The most differentiated term has the schematic form

    Tr[D K_s D* M_w D K_r D* M_u].                     (4)

Move the D* immediately to the right of K_s through the adjacent
multiplication operator by the weak product rule. For scalar w this gives
M_w L plus a coefficient involving dw followed by one D. For the matrix
coefficients B,C in (2), the analogous product rule gives first-order terms
with coefficients bounded by |dw| and zero-order terms bounded by
|nabla^2 w| plus fixed base-coefficient multiples. No commutation of a
Clifford multiplier with gamma matrices is assumed.

In every resulting term, at most one D remains on the short heat factor,
so ||D K_s||<=C s^(-1/2) by spectral calculus. Split the long heat factor
at r/2. The two weighted long factors are Hilbert--Schmidt: for example,
M_w L K_(r/2) and K_(r/2) D* M_u are controlled by the long-time bounds and
||w||_2, ||u||_2. Terms with dw or nabla^2 w are treated in the same way,
using the kernel derivatives through order two. Schatten Holder then gives

    |F_(u,w)(s)| <= C_t s^(-1/2) N(u) N(w), 0<s<=t/2. (5)

For t/2<=s<t, cyclically exchange the two vertices and obtain the same
bound with (t-s)^(-1/2). Thus both ordered traces are absolutely integrable
in s at each fixed t, and the cyclic time-simplex formula is legitimate
under the stated form-smoothing hypotheses. The bound is deliberately
nonuniform as t->0 and does not evaluate the local subtractions.

For the radial cubic/log directions on the fixed physical seed, the fields,
gradients and Hessians have finite physical L2 norms by
`physical-cubic-bilinear-integrability.md`. Restricting one direction to an
outer tail with a smooth cutoff whose physical first two derivatives are
uniformly bounded gives N(tail)=O(delta^(3/2)); this uses the volume and
pointwise bounds there. Hence (5) also controls a single-tail ordered term at
fixed t. A raw characteristic cutoff would introduce distributional
derivatives and is not used in that conclusion.

The finite-cut boundary, physical regulator, complete density/contact
normalization, and uniform high-derivative heat bounds for rough
approximants remain independent. The formal time-ordered result does not by
itself imply the desired curved t^(3/2) remainder. No numerical calculation
is used.

Remaining to-do list: prove uniform cutoff and boundary heat estimates,
assemble all vertices and physical subtractions, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.
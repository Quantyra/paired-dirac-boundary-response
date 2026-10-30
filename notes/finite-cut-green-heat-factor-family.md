# A family of finite-cut Green heat-factor estimates

This extends the single example in `finite-cut-boundary-heat-factor.md` using
the fixed-positive-time H5 estimates in `physical-h5-from-mixed-h3.md`.
It covers a class of boundary trace factorizations that can arise in ordered
vertex calculations. It does not assert that every physical Green term has
one of these factorizations, fix its sign, or establish a common-regulator
limit or Lean certificate.

Use a smooth finite cut, the first-order realization D, L=D*D, heat
K_s=exp(-sL), and boundary trace gamma. Assume the uniform H1 graph estimates
for D and its complementary adjoint, the uniform physical trace inequality,
and the chart/bundle/domain hypotheses of the cited H5 note. Let A and B be
fixed differential operators of order at most two, with uniformly bounded
chart coefficients and the coefficient derivatives needed to map H5 to
H3 uniformly. They may be the identity, D, a covariant first derivative,
or L. Their presence here does not imply they preserve a boundary domain.

Fix t>0, let 0<s<=t/2 and r=t-s, and set K=K_(r/2). Let h be a scalar
boundary function and v a scalar bulk L2 function. Consider the explicitly
defined boundary-space products

 T_D(s,r) = M_sqrt(|h|) gamma D K_s M_v A K
                    (gamma B K)* M_sqrt(|h|),             (1)
 T_0(s,r) = M_sqrt(|h|) gamma K_s M_v A K
                    (gamma B K)* M_sqrt(|h|).             (2)

For matrix or sign/projection multipliers insert a uniformly bounded factor
on the appropriate boundary or bulk space; do not commute it through D or
a heat factor. The estimates below apply whenever the indicated operator
compositions are well defined, using the kernel representatives supplied
by the smooth fixed-cut problem.

For r/2 in [t/4,t/2], H5 smoothing and H3->C0 in four dimensions give
uniform row bounds for A K and for the boundary restriction gamma B K.
Consequently

 ||M_v A K||_2 <= C_t ||v||_2,
 ||M_sqrt(|h|) gamma B K||_2 <= C_t ||h||_L1(boundary)^(1/2). (3)

This remains true for B of order two because B K maps uniformly into H3
on the smaller chart; restricting a continuous representative to the
boundary is meaningful. Uniform local charts and finite fiber rank give
a single C_t. The short factors obey

 ||gamma D K_s|| <= C_t s^(-3/4),
 ||gamma K_s|| <= C_t s^(-1/4),  0<s<=t/2,             (4)

by the multiplicative trace inequality, the first-order graph estimates,
and spectral bounds for D K_s and L K_s. The constants include harmless
large-s terms on the finite interval. Schatten Holder then yields

 ||T_D(s,r)||_1 <= C_t s^(-3/4) ||v||_2
                 ||h||_infinity^(1/2)||h||_1^(1/2),
 ||T_0(s,r)||_1 <= C_t s^(-1/4) ||v||_2
                 ||h||_infinity^(1/2)||h||_1^(1/2).     (5)

For the radial cubic/log source coefficient h=E_b^4 partial_n w on the
physical cut u=delta, the established weighted jet and boundary area bounds
give ||h||_infinity<=C delta^3 and ||h||_1<=C, uniformly in the approximant.
Both endpoint powers in (5) are integrable, so

 integral_0^(t/2) [||T_D(s,t-s)||_1+||T_0(s,t-s)||_1] ds
                 <= C_t delta^(3/2)||v||_2.              (6)

The same bound applies to adjoints of these explicitly factored terms and,
when a time-ordering has a proven swapped factorization of this form, to
its opposite endpoint. No such factorization or cancellation is assumed by
(6). In particular, a boundary-to-boundary operator involving additional
uncontrolled short derivatives is not included merely because it is a Green
term. The small-time behavior of C_t is not controlled adequately for a
proper-time integral, and the physical boundary/source normalization and
complete finite-cut vertex identities remain open.

Remaining to-do list: derive the complete ordered Green factorizations and
signs, handle any omitted short derivatives, establish physical source and
regulator matching, finish novelty and manuscript, and certify supported
claims in Lean on GCP.
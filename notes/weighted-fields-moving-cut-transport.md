# Weighted fields under the product moving-cut pullback

This verifies the multiplier hypothesis of
`product-frame-moving-cut-response-rate.md` for a specified fixed product
collar and uniformly controlled physical-side approximants. It does not
prove the physical transported boundary, identify different regulators, or
establish Lean certification.

Use the smooth product collar and diffeomorphisms F_delta:X_0->X_delta in
`product-frame-moving-cut-uniformity.md`, chosen in fixed reference charts so
that ||F_delta-id||_infinity+||DF_delta-I||_infinity<=C delta. Compare the
same scalar field f_e on the two cuts: after the pullback it is
f_(e,delta)=f_e composed with F_delta, while f_(e,0)=f_e. The subscript e
labels an independent physical-side regularization; it is held equal in
this comparison. Assume f_e and its first two weak derivatives are uniformly
bounded on a fixed neighborhood of the moving collar, and assume the same
uniform W2,infinity control on the fixed interior charts where F_delta may
vary. Scalar multiplication commutes with the unitary density and fiber
identification, so composition is the entire multiplier pullback.

Uniform Lipschitz continuity of f_e and its weak gradient, the chain rule,
and the diffeomorphism estimates imply

    ||f_e composed with F_delta-f_e||_W1,infinity
       <= C delta ||f_e||_W2,infinity,                  (1)

with a chart constant independent of e and delta. For example,
D(f_e composed with F_delta)-Df_e equals the sum of
[(Df_e) composed with F_delta-Df_e] DF_delta and
Df_e (DF_delta-I). The first summand uses the Lipschitz representative of
Df_e supplied by W2,infinity; on a compact atlas the local estimates patch
with fixed partition constants.

For the recorded one-sided collar field f(y)=c y^3+r(y), with
|r^(j)(y)|<=K A_j y^(4-j)(1+log(1/y)) through j=5, the j<=2 bounds make
f,f',f'' uniformly bounded on a fixed collar. The cutoff approximants
r_e=q(y/e)r(y), and the smooth approximants constructed in
`weighted-remainder-cutoff.md`, satisfy the same weighted inequalities with
one enlarged constant independent of e. Therefore they also have a common
W2,infinity collar bound, while retaining the cubic term. The smooth product
coordinate change from collar distance to a reference boundary chart has
uniformly bounded first and second derivatives on the fixed collar. With the
explicitly assumed interior W2,infinity bound, (1) holds uniformly for these
approximants. The same reasoning applies to each base field and each of the
two directions when they share these bounds.

Consequently the O(delta) W1,infinity condition (1) of
`product-frame-moving-cut-response-rate.md` holds uniformly in e for the
three fields, provided all use the same F_delta and the same e on both sides.
Together with that note's uniform graph, complex-form and fixed-domain
hypotheses, its complete mixed-derivative and proper-time comparison bounds
then have constants independent of e. This permits that *model difference*
to vanish uniformly along its exponential cut path.

The argument is one-sided and does not smooth the reflected cubic into an
artificially smooth even field. The recorded collar estimates alone do not
supply global interior bounds, arbitrary tangential mixed derivatives, or
uniformity of unrelated approximants. Nor does (1) estimate f_e-f as e->0
or justify exchanging that separate limit with the proper-time integral.
Physical spin/copy maps, transported infinity data, full response vertices
and common counterterms remain independent. No numerical calculation is used.

Remaining to-do list: verify physical global regularity and boundary maps,
complete the common-regulator and subtracted response, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
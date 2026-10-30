# Uniform third-derivative convergence for the RN cutoff

This makes the convergence step in `rn-seam-physical-cutoff.md` quantitative
on a fixed shortened collar. It treats the scalar coefficient only; physical
paired domains, the common heat regulator and Lean certification remain open.

Use the notation and bounded weighted collar family in that note. In
particular beta=c y³+r, beta_e=c y³+q(y/e)r, and r's fourth derivative
obeys |r''''(y)|<=K A4 [1+log(1/y)] on 0<y<=delta. Let f_e,f denote the
proper-distance coefficients, with uniformly bounded inverse coordinate
maps and a fixed smooth positive RN seed. Then for sufficiently small e,

 ||f_e-f||_{W^{3,infinity}(0,Y_*)}
     <= C K e [1+log(1/e)],                                 (1)

where C depends on the fixed seed, scalar ball, collar and cutoff constants,
not on the individual field or e. The fixed Y-collar is chosen inside every
coordinate image.

The cutoff calculation gives the same bound for beta_e-beta through order
three. In fact its zeroth-order error is supported in [0,2e] and is
O(K e^4 L_e), with L_e=1+log(1/e), so

    ||Y_e-Y||_infinity <= C K e^5 L_e,
    ||Y_e^(-1)-Y^(-1)||_infinity <= C K e^5 L_e.           (2)

The second inequality follows by the common lower bound on Y'.

To control the potentially delicate composition of beta''', note that its
cubic part is constant and

 |r'''(x)-r'''(y)| <= C K |x-y| [1+|log |x-y||]             (3)

for x,y in a fixed small collar and |x-y| sufficiently small. This follows
by integrating the logarithmic bound on r'''' over the interval; for a given
length the integral is largest when the interval begins at zero. Consequently
(2) bounds the change of beta''' under the inverse-coordinate shift by
O(K e^5 L_e²), after enlarging the fixed-family constant. The direct cutoff
error in beta_e''' is O(K e L_e). Lower derivative compositions are
controlled by their uniform Lipschitz bounds.

Differentiate Y_e(y_e(Y))=Y and the identity f_e(Y)=e^(-beta_e(y_e(Y)))
f0(y_e(Y)) through order three. The resulting terms are finite products of
seed derivatives, derivatives of beta_e through order three, and powers of
exp(±beta_e); (2)--(3) and the direct cutoff estimate yield (1). The same
one-sided estimate applies after even reflection on each side. It does not
claim convergence of a fourth derivative in L-infinity: the weighted class
allows an integrable logarithmic singularity and retains a seam atom.

For a family with a common weighted bound, (1) gives a common W³ rate. The
uniform BV bound and fixed seam atom are established separately in the
preceding cutoff note; W³ convergence alone does not bound total variation.
These facts support passing the scalar auxiliary bridge to the cutoff limit,
but do not by themselves establish its physical half-domain identification
or uniformity of the full geometric response.

Remaining to-do list: verify physical domain and regulator matching, complete
the geometric response and novelty audit, prepare the manuscript, and
certify supported claims in Lean on GCP.

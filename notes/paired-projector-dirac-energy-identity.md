# Dirac graph-energy identity for the paired projector

This derives the energy identity assumed in `finite-cut-graph-weitzenbock-route.md` for the smooth fixed-cut model with the source's Hermitian-Clifford and outward-normal conventions. It remains conditional on the actual bundle, Dirac expression and projector realization being those stated below.

Let D=c(e_i)nabla_(e_i) have Hermitian Clifford matrices c(e_i)^2=1 and be formally skew-adjoint for a metric-compatible twisted connection. Let n be the outward unit normal, and assume the boundary Gauss formula in the source convention

 D=c(n)(nabla_n+K/2)+A,                                  (1)

where K is the signed mean curvature and A is the intrinsic tangential term. Assume P is an orthogonal boundary projector with [P,c(n)]=0, and A maps allowed P traces into the complementary subbundle. For a smooth section f with gamma f=P gamma f, the standard twisted Lichnerowicz formula is

 -D²=nabla* nabla+R,                                     (2)

with R the curvature endomorphism, including the magnetic twisting term. Green's formula for the skew Dirac expression gives

 ||Df||² = <f,-D²f> + integral_boundary <c(n) f,Df>.    (3)

Taking real parts if necessary, integration by parts for the connection Laplacian gives

 Re <f,nabla* nabla f> = ||nabla f||²
                         - Re integral_boundary <f,nabla_n f>. (4)

Substitute (1)--(2) in (3). Since c(n) is Hermitian and c(n)²=1, the normal derivative boundary term in (3) cancels the one in (4). The remaining tangential term is <c(n)f,A f>; it vanishes pointwise because c(n) preserves the P subbundle and A f belongs to its orthogonal complement. Therefore

 ||Df||²=||nabla f||²+<f,R f>
                    +(1/2) integral_boundary K |f|².    (5)

All formulas use the same outward normal; if the source's K or Green sign convention is reversed, the corresponding boundary sign changes consistently and the absolute graph estimate is unchanged. A unitary magnetic connection contributes to R and the covariant derivative; no magnetic boundary term has been omitted.

For the complementary projector, the same argument applies if A exchanges the two subbundles. Under the uniform curvature, K and trace bounds already established conditionally for the fixed RN seed, and smooth boundary-compatible core density, (5) supplies the energy identity required by the graph estimate and its explicit absorption constant. It does not by itself establish the source's global bundle map, maximal domain, finite-cut physical matching or cut-uniform elliptic regularity. No Lean certification is claimed.

Remaining to-do list: verify the actual physical paired realization and uniform analytic hypotheses, complete the mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

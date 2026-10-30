# Product-sphere separation of the fixed-space mixed response

This supplies the explicit spectator-factor calculation needed to apply [the orbit conformal map](orbit-conformal-fixed-space.md) to the fixed-sphere product model recorded in [the pinned conformal-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md). It is conditional on the actual product-frame bundle and boundary identifications, and is not an equality with the canonical Hamiltonian contact described in [the operator comparison](canonical-euclidean-contact-matching.md).

Let H_o be the paired orbit Hilbert space, H_s the compact sphere spinor Hilbert space, and B the self-adjoint twisted sphere Dirac operator divided by the fixed sphere radius. Let D_b be the closed skew-adjoint orbit Dirac expression on a common domain, with a bounded self-adjoint orbit grading Gamma satisfying Gamma²=1, Gamma Dom(D_b)=Dom(D_b), and Gamma D_b=−D_b Gamma. Assume scalar orbit conformal multipliers commute with Gamma and the product boundary projector is independent of the sphere mode. On the declared product first-order domain, define

    P_b=D_b tensor 1 + Gamma tensor B,
    L_b=D_b*D_b,      C=B².                                  (1)

The factors of i appropriate to another Clifford convention must be included consistently; the statement here chooses a skew-adjoint orbit factor and self-adjoint Gamma B, so P_b*P_b has cross terms cancelling. Indeed the formal cross terms are D_b*Gamma tensor B + Gamma D_b tensor B =0. Assume the finite sums of orbit-domain vectors and sphere eigenvectors form a core for the physical product realization. On that core the square is

    P_b*P_b = L_b tensor 1 + 1 tensor C,                       (2)

and equality extends to the self-adjoint tensor sum by the stated core/domain hypothesis. This condition is essential: a formal anticommutator alone does not identify a boundary realization.

The tensor-sum functional calculus then gives for each t>0

    exp[−t(P_b*P_b)] = exp(−tL_b) tensor exp(−tC).           (3)

For a fixed sphere sector I with finite positive-time heat trace, let Theta_I(t)=Tr_I(exp(−tC)). Whenever the orbit heat derivatives are trace class as in [the compact paired result](paired-positive-time-mixed-identity.md), the product trace is trace class and

    partial_u partial_w Tr_I exp[−t(P_b*P_b)]
      = Theta_I(t) partial_u partial_w Tr_o exp(−tL_b).       (4)

The angular factor is independent of the orbit parameters because B, its eigenspaces, multiplicities and radius are fixed. Equation (4) follows by differentiating the trace-class tensor product at positive t; all included modes are summed through the heat trace, not truncated. Fixed per-exterior and time-reduction constants apply on the orbit side. The source's n>=1 tower corresponds to the chosen nonzero sphere sectors with its stated degeneracies; a zero sector must be added separately according to its allocation.

Equation (4) explains why the mixed geometric heat trace carries Theta rather than an extra derivative of it in the fixed-sphere orbit-conformal model. The distinct endpoint conversion contains Theta' times a contact because its mass-dependent conversion is a different observable; this tensor identity does not remove that term. Nor does it permit multiplying the canonical H_mu² trace by another Theta: that operator already contains the angular eigenvalue.

The physical application requires proof that the product-frame Dirac operator, grading, domains, spin/magnetic pullbacks and per-exterior normalization realize (1)–(3), as well as the actual conformal and boundary identification. If the sphere radius, angular connection or boundary projector varies, then C and possibly its eigenspaces vary and (4) gains additional terms. Positive-time factorization alone does not prove uniform short-time estimates or any common-regulator interchange. No numerical or Lean certification is claimed.

Remaining to-do list: verify the product core and physical bundle/domain match, include all source contact and regulator terms, decide novelty, prepare the manuscript and certify supported claims in Lean on GCP.

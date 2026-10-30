# Paired core convergence implies strong Dirac heat factors

This gives a sufficient route to the strong and adjoint assumptions in
`changing-family-heat-commutator.md`. It does not establish the required core
or global paired-bundle identifications for the physical source.

Let D_n,D be closed densely defined on a common Hilbert space H. Let
J_n,J be self-adjoint unitary involutions and assume the closed-domain
identities D_n*=-J_n D_n J_n and D*=-J D J. Set

  Q_n=J_n D_n, Q=J D,    A_n=i Q_n, A=i Q.                   (1)

Then A_n,A are self-adjoint on their actual first-order domains and
D_n*D_n=A_n², D*D=A² on their natural composition domains. Suppose
J_n->J strongly, and suppose there is a core C for A such that C is contained
in Dom A_n for all sufficiently large n and

  A_n phi -> A phi for every phi in C.                        (2)

For phi in C put f=(A+i)phi. Self-adjointness gives
||(A_n+i)^(-1)||<=1, and

  (A_n+i)^(-1)f-phi
     =(A_n+i)^(-1)(A-A_n)phi -> 0.                            (3)

The set (A+i)C is dense: C is graph dense in Dom A and A+i maps Dom A
onto H. Uniform boundedness extends (3) to all f, proving strong resolvent
convergence A_n->A. This proof uses eventual common-core membership; it
does not replace it by pointwise equality of differential expressions.

The bounded continuous functional calculus for strong resolvent convergence
then gives, for every s>0,

  exp(-s A_n²)->exp(-s A²) strongly,
  A_n exp(-s A_n²)->A exp(-s A²) strongly.                    (4)

Both functions exp(-s x²) and x exp(-s x²) are continuous and vanish at
infinity. Since D_n=J_n Q_n=-i J_n A_n, (4) and strong J_n convergence give

  D_n exp(-s D_n*D_n)->D exp(-s D*D) strongly.                (5)

The adjoints converge strongly as well: the adjoint of the left side is
 i [A_n exp(-s A_n²)] J_n, and products of uniformly bounded strongly
convergent factors converge strongly. The same applies to heat operators,
which are self-adjoint. Hence, if C_n and C_n* also converge strongly and
the uniform Dirac commutator bounds hold, all operator convergence inputs of
the changing-family heat-commutator lemma follow.

For a physical exhaustion, one possible realization on H is a direct sum of
the finite-cut paired operator and a zero operator on the orthogonal
complement, with compatible extensions of J_n. A compactly supported section
would then lie inside every sufficiently large cut. This is a construction
to verify, not an assertion: the actual finite-cut partner must be
skew-adjoint after the stated identification, its complement and source
fields must be controlled, and the limiting physical paired operator must
have a core satisfying (2). In particular, strong convergence of the
positive squares alone does not establish (5). No trace or regulator
conclusion follows without the Hilbert--Schmidt factors and boundary terms,
and no numerical or Lean certification is claimed.

Remaining to-do list: verify the physical common core and paired embeddings,
complete the mixed trace and regulator, resolve novelty, finish the
manuscript, and certify supported claims in Lean on GCP.

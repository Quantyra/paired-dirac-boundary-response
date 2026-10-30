# A globally controlled lapse comparator on a shrinking collar

This constructs a specific auxiliary comparator for the local form estimate
in `lapse-first-order-form-comparison.md`. It proves a resolvent bound for
that auxiliary pair, not a comparison with the full physical operator or a
Lean certificate.

Let A be closed and densely defined with domain V, and suppose the fixed RN
lapse F is positive and smooth on 0<=s<=ell0 with F0=F(0)=X^(-1/2).
The RN boundary expansion gives |F(s)-F0|<=C s² there. Choose a fixed smooth
cutoff chi with 0<=chi<=1, chi=1 on [0,1], chi=0 on [2,infinity), and
for 0<ell<=ell0/2 define

    F_ell(s)=F0+chi(s/ell)[F(s)-F0] on the collar,
    F_ell=F0 outside that collar.                           (1)

Then F_ell agrees exactly with F on 0<=s<=ell and is constant outside
0<=s<=2ell. It is positive for small ell, uniformly bounded away from zero,
and

    ||F_ell²-F0²||∞ <= C1 ell²,
    ||dF_ell||∞ <= C2 ell.                                  (2)

The transition derivative has size chi'(s/ell)(F-F0)/ell=O(ell);
the seed derivative is also O(ell). Fixed cutoff and seed constants are
included. These estimates do not assume that F itself is constant outside
the collar.

Define P_ell=F_ell A and P0=F0 A on V. They are closed and have positive
squares L_ell=P_ell*P_ell and L0=P0*P0, with common closed form domain V
but their actual operator domains determined by composition. For lambda>0,

 ||(L_ell+lambda)^(-1)-(L0+lambda)^(-1)||
     <= ||F_ell²-F0²||∞/(4 lambda m F0),                  (3)

where m>0 is a common lower bound for F_ell. To prove (3), the variational
resolvent identity gives the matrix element of the difference as the form
pairing of (F_ell²-F0²) A R_ell and A R0. Positivity and spectral calculus
for P_ell imply

    ||A R_ell|| <= 1/(2m sqrt(lambda)),
    ||A R0|| <= 1/(2F0 sqrt(lambda)).

Multiply these bounds and take the supremum over unit vectors. The form
identity is valid without equating the second-order domains. Equations
(2)--(3) yield O(ell²) operator-norm resolvent convergence for each fixed
lambda>0.

This comparator changes the lapse outside the matched collar, so (3) is not
a bound between the original physical F and constant F0 globally. To use it
for a physical local trace, one must additionally prove a collar-locality
comparison between the actual F and F_ell, with a fixed positive separation
between the insertion and the transition. If both are chosen on a shrinking
ell scale, that separation also shrinks and standard exp(-c/t) estimates
are not uniform without a relation between ell and t. The unitary frame,
paired domains, angular and thermal sums, and common regulator remain open.
No numerical calculation is used.

Remaining to-do list: prove physical-to-comparator locality with the actual
scale, match domains and trace normalization, complete novelty and manuscript,
and certify supported claims in Lean on GCP.

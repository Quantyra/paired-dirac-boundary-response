# Physical-side cutoff for a weighted collar remainder

Status: ordinary one-dimensional construction, not a Lean certificate or a
global regulator theorem. This addresses part of the weighted remainder
regularization requested in the pinned
[rough paired-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md),
Section 3. It does not replace the common heat regulator.

Let 0<delta<=1/10, L(y)=1+log(1/y), and let r be C5 on (0,delta] with

    |r^(j)(y)| <= K A_j y^(4-j) L(y),   j=0,...,5,

where A_j=j! 100^j. Choose a fixed smooth cutoff q on [0,infinity) with
q=0 on [0,1], q=1 on [2,infinity), and bounded derivatives through order
five. For 0<epsilon<delta/2 define

    r_epsilon(y)=q(y/epsilon) r(y),  y>0;   r_epsilon(0)=0.

This function is C5 on the closed physical collar, vanishes on [0,epsilon],
and agrees with r on [2epsilon,delta]. If r is C-infinity away from zero,
then r_epsilon is C-infinity up to zero; C5 input alone does not imply that.
All jets of r_epsilon at zero vanish.

For j<=5, Leibniz and the support of q^(m), m>0, give

    |r_epsilon^(j)(y)| <= K C_j y^(4-j) L(y),
    C_j = ||q||_infinity A_j
          + sum_(k=0)^(j-1) binom(j,k) 2^(j-k)
              ||q^(j-k)||_infinity A_k.

For the transition terms use y/epsilon in [1,2], so
epsilon^(-(j-k)) <= 2^(j-k) y^(-(j-k)). This yields a bound uniform in
epsilon with fixed constants depending on the cutoff and j. Equivalently,
the original weights A_j hold with K replaced by
K'=K max_(0<=j<=5) C_j/A_j. No claim is made that the original numerical K
is preserved.

For j=0,1,2,3 the derivatives of r_epsilon-r are supported in y<2epsilon
and obey the same type of bounds. Since y^(4-j)L(y) increases on
(0,delta], there is a fixed cutoff-dependent constant C such that

    ||r_epsilon-r||_(W^(3,infinity)(0,delta))
       <= C K (2epsilon) L(2epsilon) -> 0.

The common bound on all four derivatives uses delta<=1 and the smallest
power, j=3. Thus c y^3+r_epsilon retains the cubic and its zero first jet,
while approaching c y^3+r in W3,infinity on the physical half. This cutoff
removes the remainder close to zero rather than smoothing a folded |y|^3;
it does not establish convergence of traces, square domains, heat kernels,
or renormalized response. Extending the construction to tangentially varying
fields requires the corresponding mixed derivative and chart bounds.

Remaining to-do list: verify the physical field's full regularity and chart
assumptions, construct any required C-infinity approximation away from the
boundary without losing weighted estimates, and prove the actual paired
domain and common-regulator limits.

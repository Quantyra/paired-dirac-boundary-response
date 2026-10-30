# Gapless localized heat endpoint

This gives a fixed-operator large-time fact applicable in principle after
the physical gap obstruction in `rn-physical-escaping-spinor-gap.md`. It
is not a bound on the paper's mixed variation or its moving-cut limit.

Let L>=0 be self-adjoint on H and P_0 the orthogonal projection onto
ker L. Let S be a bounded self-adjoint localization, and suppose
S exp(-t0 L/2) is Hilbert--Schmidt for some t0>0. For T>=t0, put
A=S exp(-t0 L/2). Then

  S exp(-T L) S = A exp[-(T-t0)L] A*,
  S P_0 S = A P_0 A*.                                        (1)

The spectral theorem gives exp(-sL)->P_0 strongly as s->infinity, even if
zero belongs to the continuous spectrum and there is no positive gap.
Moreover ||exp(-sL)-P_0||<=1. For a fixed Hilbert--Schmidt A, strong
convergence and this uniform bound imply

  ||[exp(-sL)-P_0] A*||_2 -> 0.                              (2)

To prove (2), approximate A* in Hilbert--Schmidt norm by a finite-rank
operator: strong convergence controls its finitely many range vectors, and
the uniform operator norm controls the approximation error. Schatten
Holder with (1) then yields

  ||S exp(-T L) S-S P_0 S||_1 -> 0.                          (3)

If ker L=0 the localized heat operator tends to zero in trace norm without
a spectral gap. If ker L is nontrivial, its localized projection is the
upper-time limit and must be retained. The Hilbert--Schmidt hypothesis also
makes S P_0 S trace class through (1). No rate is asserted.

For two positive-square partners, apply (3) to each separately after
verifying its local smoothing and kernel projection. The result is at one
fixed operator and fixed localization. It does not permit replacing S by an
unbounded conformal logarithm, and it does not establish trace-norm
convergence uniform in an outer cut or in a complex variation parameter.
In particular it does not justify differentiating the T->infinity limit or
dropping the upper endpoint of the mixed bridge; those steps require
additional uniform estimates or control of parameter-dependent zero-mode
projections. Nor does it establish the physical proper-time integral,
LLL state or ultraviolet subtraction. No Lean certification or numerical
calculation is claimed.

Remaining to-do list: verify physical local smoothing and zero modes,
establish the uniform mixed upper endpoint and curved regulator, resolve
novelty, complete the manuscript, and certify supported claims in Lean on
GCP.

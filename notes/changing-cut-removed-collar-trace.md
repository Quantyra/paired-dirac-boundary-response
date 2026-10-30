# Heat-trace contribution of the removed collar

This quantifies one error that remains after the restricted resolvent
comparison in `changing-cut-explicit-smoothing-rate.md`. It uses the
separated half-line heat bound in `localized-radial-heat-bound.md` and an
explicit angular smoothing; it is not a physical common-regulator theorem or
Lean certificate.

Let H and A be the full separated operators in the heat-bound note, with
G=||a'||∞, and let C_ell=(x1-ell,x1] be the removed collar. For t,tau>0,
let Q_tau=exp(-tau A²). For a bounded radial weight u define

    B_ell=M_(1_C_ell u) exp(-t H²/2) Q_tau.

The localized heat estimate immediately gives

 ||B_ell||_2² <= [2/(sqrt(pi t))] ||1_C_ell u||_2²
                  Tr exp(-2tau A²+tG|A|).                  (1)

Thus B_ell*B_ell is trace class and its trace norm equals ||B_ell||_2².
This measures the heat-smoothed contribution of the removed collar to this
quadratic localized trace. It does not compare the heat kernels on the
retained region or control an unsmoothed trace.

For a bounded weight, ||1_C_ell u||²_2<=ell ||u||∞². If u has a cubic
boundary zero in this coordinate, |u(x)|<=K(x1-x)^3 on the collar, then

    ||1_C_ell u||²_2 <= K² ell^7/7.                        (2)

The second estimate requires the stated coordinate relation and fixed K;
a physical proper-distance jet cannot be substituted without checking it.
Both estimates include angular zero modes and multiplicities through the
full trace in (1).

Completing the square gives

 Tr exp(-2tau A²+tG|A|)
      <= exp[t²G²/(4tau)] Tr exp(-tau A²).                  (3)

For the fixed compact two-sphere, its Dirac heat trace is O(tau^-1) as
tau decreases. Consequently, if t and tau tend to zero and
exp[t²G²/(4tau)] stays bounded, the removed-collar trace in (1) vanishes
under the sufficient conditions

    ell/(sqrt(t) tau) -> 0                 (bounded u),
    ell^7/(sqrt(t) tau) -> 0               (cubic-zero u).   (4)

These conditions are for the declared additional angular smoothing and
quadratic trace only. They neither identify tau with the physical angular
regulator nor control an intervening unbounded geometric vertex, boundary
trace evaluation, or the difference between the cut and full heat operators.
The constants and scaling are upper estimates, not admission margins. No
numerical computation is used.

Remaining to-do list: combine the retained-region and removed-collar bounds
with the actual physical trace and regulator, verify bundle and domain
matching, decide novelty, prepare the manuscript, and certify in Lean on GCP.

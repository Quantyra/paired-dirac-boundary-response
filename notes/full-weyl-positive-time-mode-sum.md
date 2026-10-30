# Positive-time summation of the full Weyl mode response

This extends `positive-time-sector-sums.md` to show when differentiation may
be interchanged with the angular-mode sum for the full Weyl family. The
argument is conditional on the compact four-dimensional trace-holomorphy and
actual product-sector hypotheses; it is not a Lean certificate or a
small-time regulator theorem.

Let H be the full finite-cut Hilbert space and let {P_j} be mutually
orthogonal angular projections with strong sum I, including multiplicities
and zero modes. Let T(z,t) be the trace-class holomorphic heat operator of
`paired-positive-time-trace-derivatives.md` for z in a polydisc around 0,
and suppose z-independent P_j reduce T(z,t) throughout that polydisc. This
reduction holds for the constructed product realization when the Weyl
multipliers depend only on orbit coordinates and preserve its fixed mode
and boundary domains. Matching those hypotheses to the physical bundle is a
separate task.

Choose closed nested polydiscs K inside the holomorphy neighborhood and a
positive-time interval [t0,T0]. Assume the joint map (z,t) -> T(z,t) is
trace-norm continuous there, as in the compact form/semigroup argument. Its
image is compact in trace norm. For finite F, put P_F=sum_(j in F) P_j.
Strong convergence P_F -> I and finite-rank approximation therefore give

    sup_(z,t in K x [t0,T0]) ||(1-P_F) T(z,t)||_1 -> 0.   (1)

Consequently the finite-sector traces converge uniformly on this set to
Tr T(z,t), and the series of diagonal sector traces is absolutely convergent.
The absolute tail is at most ||(1-P_F) T(z,t) (1-P_F)||_1 by trace duality.
Apply the two-variable Cauchy formula on circles contained in K: its fixed
finite contour lengths and (1) permit passing the limit through both contour
integrals. Thus, uniformly for t in [t0,T0],

    partial_u partial_w Tr T(z,t)|_0
       = sum_j partial_u partial_w Tr(P_j T(z,t) P_j)|_0.   (2)

Moreover, applying the same trace-duality bound to the trace-class mixed
derivative shows that the series in (2) is absolutely convergent. Reduction
identifies each summand with the mixed derivative of the corresponding full
congruenced mode heat operator. For each finite mode, its square includes
the angular first and mixed vertices in `full-weyl-angular-vertices.md`, as
well as the orbit vertices and all mixed first-vertex pairings.

Equation (2) establishes convergence for the *complete combined* sector
response. It does not establish absolute convergence of the separate
Duhamel terms, justify changing the order of a sector sum and a singular
simplex integral, or prove cancellations of individual odd-in-mu vertices.
The full form-resolvent identity supplies the combined positive-time
operator derivative without requiring those stronger claims.

The proof also applies to compact parameter sets of approximants if their
heat operators converge uniformly in trace norm there: their union with the
limit image is then relatively compact, yielding a uniform sector tail for
sufficiently late approximants. Neither this observation nor (2) is uniform
as t0 tends to zero. Proper-time integration, local subtraction, thermal
and angular regulator matching, physical-half normalization and the curved
remainder require their own estimates. Numerical truncation would require an
explicit tail bound, which (1) does not quantify.

Remaining to-do list: verify the physical sector and domain identification,
prove the short-time subtraction and common-regulator estimates, decide
novelty, prepare the manuscript, and certify the claims in Lean on GCP.

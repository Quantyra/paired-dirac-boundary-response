# Cubic localization of the physical annulus source map

This analyzes scalar direction weights on the source-to-flux operator B_delta of `physical-annulus-source-displacement.md`. It does not identify a Dirac variation vertex with a scalar source or prove a physical resolvent comparison.

Keep the fixed-mode, fixed-spectral-parameter annulus and the unitary tau coordinate of that note. Let v(y) be an admitted radial scalar direction satisfying |v(y)|<=K y³ on the collar. Multiplication by v commutes with the scalar unitary change of source variable. Therefore, from the uniform bound on B_delta and delta<=y<=2delta,

 ||B_delta M_v|| <= C K delta³.                          (1)

For the conformal logarithm b_conf=log U(y), U(y)=y/L4+O(y³), one likewise has

 ||B_delta M_(b_conf v)||
      <= C K delta³(1+|log delta|).                       (2)

These bounds hold for arbitrary unit input in the source L2 space, but only for these scalar multipliers applied directly to that source. They coexist with the nonzero unweighted operator-norm limit of B_delta; a source direction can provide the missing local smallness if an independently justified factorization actually places it there.

A leading cubic jet gives a sharper fixed-parameter statement. Suppose v(y)=c_v y³+O(y⁴(1+|log y|)) uniformly. Under the unitary identification of [0,I_delta] with [0,I_*], where I_*=L4 log 2, the functions delta^-3 v(y_delta(tau)) converge uniformly to c_v exp(3 tau/L4). The kernels B_delta converge in operator norm to B_* as in the preceding note. Hence

 delta^-3 B_delta M_v -> B_* M_(c_v exp(3 tau/L4))      (3)

in operator norm on the fixed interval. If c_v!=0, the limiting operator is nonzero, because its continuous kernel is nonzero near the final endpoint. Thus its norm is asymptotic to a positive fixed-parameter constant times delta³. Similarly, division by delta³|log delta| makes B_delta M_(b_conf v) converge to the negative of the same limiting operator. These are local asymptotics; constants may depend on the fixed modes and zeta, and no contour or angular uniformity is claimed.

Neither (1)--(3) controls derivatives in the actual first and second vertices, the retained-domain Poisson map, noncommuting heat factors, boundary traces or regulator. A physical mixed-response proof must derive the relevant source factorization rather than insert v by analogy. No Lean certificate or physical admission margin is claimed.

Remaining to-do list: establish actual vertex/source factorization and mode-uniform Poisson estimates, complete physical matching and regulator, finish novelty and manuscript, and certify supported claims on GCP.

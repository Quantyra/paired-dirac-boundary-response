# Radial heat insertion and transport power counting

This tests the uniform radial trace-norm hypothesis in
`radial-heat-mixing-bound.md` against a concrete heat insertion. It concerns
the finite-interval model, not the physical bolt or complete response, and
is not Lean-certified.

On an interval of length L, let J=-partial_x² with Neumann conditions at
both ends and put R(t)=exp(-tJ), acting identically on the two orbit
components. Its eigenvalues are (n pi/L)², n>=0, so

    ||R(t)||_1 = sum_(n>=0) exp[-t(n pi/L)²]
                 <= 1+L/(2 sqrt(pi t)) <= C_L t^(-1/2)  (1)

for 0<t<=1. The first inequality compares the decreasing positive terms for
n>=1 to the Gaussian integral. Moreover ||R(t)||_1 diverges as t->0, since
for every fixed finite number of modes their individual factors tend to one.
Thus this natural heat insertion does not satisfy a trace-norm bound uniform
in t, even though it is trace class at each positive time.

Use the local-projector finite-interval square decomposition from
`finite-interval-radial-square-domain.md`, with ||a'||_infinity<=G and
kappa=0. Let the model signed observable be exactly the one in
`radial-heat-mixing-bound.md`, now with R_mu(t)=R(t), and assume its separate
angular factor obeys Tr exp(-tB²)<=H t^(-m/2). Repeating the argument there
with M replaced by C_L t^(-1/2) yields

 |sum_mu exp(-t mu²) tr_orbit[Q(mu A) W_mu(t)]|
    <= C L,H [ A² t^(-(m+3)/2)
                     + |A| G t^(-(m+1)/2) ].              (2)

The constant notation includes the additive 1 in (1). For m=2 and fixed
G, the sufficient condition |A|=o(t^(3/2)) makes both terms vanish. When
G=0 the first term alone is controlled by |A|=o(t^(5/4)). These are
sufficient bounds for this constructed observable, not necessity statements
or physical admission margins. The angular heat factor is separately
inserted here and has not been derived from the actual product geometry.

This calculation explains why the stronger |A|=o(t) statement in the prior
note cannot be transferred to a shrinking-time radial heat insertion using
only its trace-class property. A physical contact may have different time
splitting, cancellations, boundary conditions and radial trace behavior;
these must be assessed for that observable. Infinity transport, the regular
bolt, all response vertices and the common regulator remain unresolved. No
numerical calculation is used.

Remaining to-do list: identify physical boundary and radial observable,
complete the response and novelty audit, prepare the manuscript, and certify
supported claims in Lean on GCP.
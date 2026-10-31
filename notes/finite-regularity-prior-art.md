# Finite-regularity heat traces and the scalar jump model

Status: primary-source comparison, not a proof of the paired metric theorem,
a novelty verdict, or Lean certification. Hart Smith,
[On the trace of Schrödinger heat kernels and regularity of potentials](https://arxiv.org/html/1809.05614v1),
Theorem 1.1, considers a real compactly supported bounded potential on a
complete Riemannian manifold. In dimensions four and above it additionally
requires its condition (1.2). For integer m>=0, it relates V in H^m to a
relative heat-trace expansion through the displayed order with a bounded
remainder, and in the forward direction obtains continuity of that remainder.
The metric and Laplacian are fixed, and the theorem concerns a scalar
zeroth-order potential, not a changing principal symbol or paired domain.

For a compactly supported local model V(y,z)=chi(y,z)|y| with smooth chi
nonzero on part of y=0, V is in H1 but not H2: its second distributional
normal derivative includes a nonzero delta supported on the interface. On
R2 the theorem therefore forbids, for this V, a relative trace of the form

    (4 pi t)^(-1) [c1 t+c2 t^2+c3 t^3+O(t^4)].

This is a useful independent consistency check on the presence of an
intermediate noninteger contribution. A nonzero t^(5/2) trace term is
t^(7/2) inside the bracket and is consistent with that obstruction. The
theorem does not determine its numerical coefficient, sign, or whether the
first non-smooth term has exactly that form; those require the separate
Duhamel analysis and its unresolved normalization audit.

The finite-regularity theorem's sharp converse also raises the novelty bar:
Sobolev regularity controlling the number of scalar heat coefficients is
already known. Its hypotheses do not include the paper's variable-principal-
symbol Dirac square, boundary projector, differentiated domain, or
regulator-uniform curved family. Those differences delimit applicability but
do not alone prove a new theorem or novelty. To use Smith's remainder method
for the paired problem, the matrix vertices, mixed boundary kernel and
common regulator would need explicit estimates in the actual norms.

## Additional coefficient-regularity literature screen

Yoichi Miyazaki, [Heat asymptotics for Dirichlet elliptic operators with
non-smooth coefficients](https://doi.org/10.3233/ASY-2010-1024), *Asymptotic
Analysis* 72 (2011), 125–167, studies divergence-form elliptic operators on
bounded `C^rho` domains with coefficients in `C^sigma`; its published
abstract says the smooth-coefficient heat-trace asymptotics persist through
the order controlled by `sigma` and also gives heat-kernel asymptotics in
whole-space, half-space and bounded `C^1` settings. This is relevant
coefficient-regularity prior art for short-time heat traces. The journal page
restricts the full text, so the exact order, boundary hypotheses and
remainder theorem have not yet been checked against the candidate's
mixed-projector, parameter-differentiated Dirac square. Do not infer a direct
coefficient match from the abstract.

Bandara and Bryan, [Heat kernels and regularity for rough metrics on smooth
manifolds](https://arxiv.org/abs/1712.09287v2), Theorem 1.1, construct a
positive heat kernel for a rough metric and an energy space between
`W_0^{1,2}` and `W^{1,2}`, with local Holder regularity at positive times.
This covers broad rough-metric heat-kernel existence and some mixed energy
spaces, but it does not state a short-time heat-trace coefficient or a
uniform differentiated trace remainder. It is therefore adjacent analytic
context, not a theorem closing P1-C or P1-D.

Remaining to-do list: complete that applicability and later-literature audit,
resolve the scalar benchmark, prove the required paired trace estimates, and
formalize the supported claims on GCP.

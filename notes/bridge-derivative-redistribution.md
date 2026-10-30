# Six-derivative redistribution: scope and boundary obstruction

Status: ordinary supporting lemma for the proposed curved remainder, not a
proof of that remainder or a Lean certificate. The pinned
[variable-contact conversion](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md)
uses integration by parts to redistribute six spatial derivatives among
factors. The [rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md)
separately leaves the uniformly subtracted curved mixed response open.

## Periodic or compactly supported product lemma

Let f₁,...,f_m be smooth scalar or matrix-valued functions on a circle,
with m≥2, or smooth compactly supported functions on R. Let k_i≥0 and
Σ_i k_i≤6. For a fixed matrix-product order, the integral of

    tr[∂^{k₁}f₁ ··· ∂^{k_m}f_m]

can be written as a finite sum of integrals of products in the same order
whose individual derivative orders are all at most 3. Coefficients are
integers depending only on the initial multi-index. In particular, on a
circle of length L its absolute value is bounded by a finite constant times
L times the product of the W^{3,∞} norms of the factors (with a fixed
finite-dimensional matrix norm and its trace constant).

To prove this, if some k_i≥4 then every other k_j is at most 2 because the
total order is at most 6. Integrate one derivative off factor i and use
Leibniz on the product of the remaining factors. Each resulting term has
the same total order, the high factor's order is reduced by one, and the
factor receiving the derivative has order at most 3. Repeat. There cannot
be two factors above order 3 at any stage, so the procedure terminates.
The argument respects matrix order and uses no commutation of the factors.
Boundary terms vanish by periodicity or compact support. Translation of
individual factors by fixed shifts does not change their W^{3,∞} norms, so
the same estimate holds uniformly in such shifts and can be integrated
against any finite measure.

## What must be checked in the bridge calculation

This lemma is not automatically the source's Brownian-bridge remainder.
Its integrand contains nonlinear functions of path integrals, including
B_h=∫f'(y+hξ) and A_h=∫f(y+hξ)². Differentiating B_h six times can
produce a seventh derivative of f. A term with total derivative count seven
cannot in general be redistributed into two factors each of order at most
three. Extra factors, cancellations, a lower total derivative count, or a
separate weak estimate must be exhibited term by term; one cannot conclude
the required bound solely from the six-derivative product lemma above.

On a physical half-collar, integration by parts also creates boundary terms.
A compact cutoff does not remove the physical boundary, and a folded cubic
has a third-derivative jump. One must either prove the appropriate matching
cancellation in the original paired kernel or bound all resulting traces,
including any jump contribution. Nor does the product lemma establish a
Taylor remainder when coefficient derivatives are only controlled after
physical-side regularization: the expansion, expectation, parameter
differentiations and uniform passage to the rough limit each need their own
justification. These issues are independent of the finite Gaussian moments.

Thus the lemma validates one isolated redistribution mechanism and identifies
two concrete audit obligations for applying it to the retained bridge. It
does not disprove the source's contact estimate, prove its stronger curved
family estimate, or provide a numerical value for A(K). No numerical test is
needed for the algebraic redistribution.

Remaining to-do list: expand the actual bridge derivatives and boundary terms,
prove the required uniform differentiated remainder, verify the physical
paired domains and regulator, compare prior art, and certify supported claims
on GCP.

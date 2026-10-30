# Numerical scalar jump normalization check

This is an exploratory numerical check of `scalar-jump-general-order.md`, not an independent proof, Lean certificate, physical Dirac computation, or resolution of the published-source discrepancy. The script `../scripts/check-scalar-jump-quadrature.js` uses V(y)=exp(-|y|), whose Fourier transform is 2/(1+k²) and derivative jump is J=-2. It evaluates the same twice-subtracted quadratic Duhamel coefficient per unit tangential length, after s=sqrt(t)k and the mapping s=v/(1-v). Composite Simpson rules use two grid sizes; the stable expm1 remainder avoids cancellation.

For t=10^-2, 10^-4, 10^-6, the finer-grid coefficients after division by t^(5/2) are approximately 0.00421590406, 0.00438791051, 0.00440574188. The general-order derivation predicts 1/(128 sqrt(pi))=0.00440773112 for J²=4; the value read from the accessible preprint's jump formula gives 1/(64 sqrt(pi))=0.00881546224 under the same stated conventions. Coarse/fine differences at these t values are below 3e-9, but this is not a rigorous quadrature error bound or a proof of the limiting coefficient.

Run from the repository root with `node scripts/check-scalar-jump-quadrature.js`. The profile is exponentially decaying rather than compactly supported; it satisfies the required Fourier-tail and Sobolev properties. The evidence supports rechecking the normalization and publisher version; it does not establish an error in the published paper or identify a scalar potential with the paired Dirac variation.

Remaining to-do list: independently review the analytic derivation and published-source convention, finish the physical response and manuscript, and certify supported claims in Lean on GCP.

# H4 approximation for the original weighted remainder

The physical-side cutoff construction in [the weighted remainder note](weighted-remainder-cutoff.md) has a stronger convergence property than the W3,infinity estimate stated there. It works for the original pointwise weights and does not assume an integrable fifth derivative. The result concerns the remainder; the reflected cubic itself is not H4 across the seam.

Let 0<delta<=1/10 and L(y)=1+log(1/y). Suppose r is C5 on (0,delta] and

    |r^(j)(y)| <= K A_j y^(4-j)L(y),  0<=j<=5,

with fixed A_j. Set r_epsilon=q(y/epsilon)r(y) as in that note, where q vanishes for y<=epsilon and equals one for y>=2epsilon. Work with 0<epsilon<=delta/4. The weight implies that r and its first three derivatives tend to zero at the seam. Since r^(4)=O(L) is integrable on the half collar, integrating r^(4) and successively its lower derivatives shows that the zero extension through y=0 is W4,2 locally. The same is true of its even reflection. No fifth weak derivative in L1 is required.

For 0<=j<=4, the difference r_epsilon-r is supported in 0<y<2epsilon and the cutoff estimate gives

    |(r_epsilon-r)^(j)(y)| <= C K y^(4-j)L(y).

Consequently, with constants depending only on the fixed weights, cutoff and delta,

    ||r_epsilon-r||_(H4(0,delta))
       <= C K sqrt(epsilon) [1+log(1/epsilon)].             (1)

Indeed the j=4 term is bounded in L2 by CK times the square root of the integral of L(y)^2 from 0 to 2epsilon, which is O(sqrt(epsilon)L(epsilon)); the lower-order terms are no larger for epsilon<=delta/4. Even reflection preserves H4 because the traces of derivatives through order three agree and vanish at zero. Thus (1) also holds on the doubled collar, up to a fixed factor. Multiplication by a fixed localization cutoff and an identical fixed exterior extension gives the corresponding whole-line H4 statement when the exterior is H4 and is not changed by the approximation.

The smooth physical-side approximants in the earlier note can be chosen to obey the same convergence rate: for each epsilon, select the mollifier width so that the C4 approximation error to r_epsilon is at most K sqrt(epsilon)L(epsilon), in addition to the weighted C5 accuracy already required there. Both conditions can be met by taking the width sufficiently small. Their zero collar makes even reflection smooth at the seam. These choices do not give a uniform fifth-derivative L1 bound.

For a fixed localized reflected remainder R with ||R||_H4<=B, Plancherel gives a uniform high-frequency H3-energy estimate

    integral_(|k|>N) (1+k²)^3 |R_hat(k)|² dk <= C B²/(1+N²),  N>0,  (2)

with C fixed by the Fourier convention. Therefore the cutoff approximants and their limits have uniformly controlled H3 tails, and (1) supplies quantitative H3 convergence for any fixed family with uniform K and exterior H4 bounds. This can support passage to a flat bilinear that is already proved continuous in H3. It does not supply the sharper pointwise Fourier expansion, its seam coefficients, or an interchange of a curved common-regulator limit.

The explicit |y|⁴log|y| term itself belongs locally to H4 and may be retained or approximated through this remainder construction. The separate |y|³ term has a jump in its third derivative after reflection, so it must remain separate and must not be included in the asserted H4 norm. No claim about physical global domains, trace normalization, curved response or Lean certification follows from (1)–(2).

Remaining to-do list: connect this approximation to the actual flat response and test whether its H3 tail suffices for the intended regulator limit; establish the physical hypotheses, novelty decision, manuscript and GCP Lean certification.

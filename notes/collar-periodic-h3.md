# Physical collar to periodic H³ norm

Status: ordinary one-dimensional norm mapping for a fixed cutoff, not a
physical-domain or curved-response theorem and not Lean-certified. It joins
[the collar bounds](mass-log-collar-h3-bound.md) to
[the periodic bridge estimate](bridge-rough-insertions.md).

## Claim

Let 0<δ<1 and, on 0<y≤δ, let

    f(y)=c y³+d y⁴ log y+r(y),
    |r^(j)(y)|≤K j!100^j y^(4−j)L(y),  j=0,1,2,3,
    L(y)=1+log(1/y).

Assume the displayed derivatives are weak derivatives of the same field.
Let χ∈C∞([0,δ]) equal 1 near zero and vanish in a neighborhood of δ.
Evenly reflect χf about y=0 and extend by zero to the 2π-periodic line.
Then the result F belongs to H³ and its standard physical-space norm
satisfies

    ||F||_{H³(−π,π)} ≤ √2 [Σ_{j=0}³ H_j²]^(1/2),       (1)
    H_j=Σ_{k=0}^j binom(j,k)||χ^(j−k)||∞ D_k,
    D_k=|c| a_k √J_k + (|d| b_k + K k!100^k) √I_k,
    a=(1,3,6,6),  b=(1,5,19,50),
    J_k=δ^(7−2k)/(7−2k),
    I_k=δ^(9−2k)[L(δ)²/(9−2k)
                    +2L(δ)/(9−2k)²+2/(9−2k)³].

All cutoff derivatives in (1) are explicit inputs. If c,d,K and the
cutoff are uniformly bounded over a family, so is ||F||_{H³}. For a fixed
finite logarithmic weight power, the same argument gives finite modified
moments and constants, not a uniform constant over unbounded log degree.

## Proof

For k≤3, the kth derivative of y³ is a_k y^(3−k). For the logarithmic
term, the coefficients of |log y| and of the nonlogarithmic part are,
respectively, (1,4,12,24) and (0,1,7,26). Since |log y|≤L(y) and L≥1,

    |∂^k(y⁴ log y)| ≤ b_k y^(4−k)L(y).

The triangle inequality and the recorded remainder bound give
||f^(k)||_{L²(0,δ)}≤D_k. The formulas for J_k and I_k follow by direct
integration. Leibniz then gives ||(χf)^(j)||₂≤H_j for j≤3, retaining all
transition terms where χ changes.

The source bounds imply f'(0)=0 and continuity of f and f'' at the seam
after even reflection. In distributional differentiation of the reflected
field, the only possible delta through order three would come from a jump
in f or f'; those jumps vanish. Thus its first three weak derivatives are
the even/odd reflected ordinary derivatives, with squared full-line norms
twice those on the positive side. Vanishing near δ makes the zero extension
and periodic join smooth there. Summing the four squared derivative norms
gives (1). No smooth even replacement of the cubic is used: its third
weak derivative is allowed to jump.

Applying (1) separately to u and v, and an independently verified H³ bound
for the coefficient f in the quadratic bridge model, converts that model's
right side into a finite expression in collar constants and cutoff norms.
A coefficient that is not localized must instead be bounded in the actual
periodic/global norm; the collar estimate alone cannot do that. The mapping
also says nothing about the nonlinear bridge prefactor, physical half-kernel,
thermal images or common regulator.

Remaining to-do list: verify global coefficient and atlas bounds, control the
coupled nonlinear bridge and physical boundary, settle the regulator and
novelty audits, and certify the supported statements on GCP.

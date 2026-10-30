# Source transfer and interior Poisson bound for the model square

This continues `lapse-square-collar-boundary-transfer.md` for the same
one-dimensional lapse-weighted model. It retains sources in the removed
collar and constructs an interior Poisson solution at positive mass. It is
not a physical resolvent, an all-mode trace bound, or a Lean certificate.

Let the definitions of H_mu, P_nu, Y=(psi,xi), K and h be those in the cited
note, and let (P_nu*P_nu+M^2)psi=g on [s0,s1], with M>0. The flux equations
now read

    (H_mu+i nu)psi=f^-2 xi,
    (H_mu-i nu)xi=g-M^2 psi.

Thus Y'=K Y+(0,i sigma_2 g). With U(s,r) the homogeneous fundamental matrix,
variation of constants gives the exact identity

    Y(s0)=U(s0,s1)Y(s1)
            + integral_(s1)^s0 U(s0,r)(0,i sigma_2 g(r)) dr. (1)

The orientation of the integral carries its sign. Gronwall and Cauchy--Schwarz
bound the source term by

    |source contribution| <= exp(h) sqrt(ell) ||g||_L2(collar),
    ell=s1-s0.                                           (2)

This is valid for arbitrary collar sources, not just sources supported in
the retained region. If the endpoint data Y(s1) lie in the local plane B,
projection onto B-perp also gives

    |Proj_(B-perp)Y(s0)|
       <= (exp(h)-1)|Y(s1)| + exp(h)sqrt(ell)||g||_2.  (3)

Equation (3) displays the remaining trace of the full solution: it cannot
be bounded merely from the plane estimate without a resolvent and trace
estimate for Y(s1).

For a separate interior Poisson estimate, let I be a finite interval or a
half-line with finite endpoint s0, and suppose f,f^-1,a and their first weak
derivatives are bounded on a fixed small endpoint neighborhood. Impose the
same local projector P_- psi=0 and P_- xi=0 at s0, and choose a self-adjoint
nonnegative square L=P_nu*P_nu on I, with a compatible fixed condition at
any other finite endpoint. Assume the local H2 trace regularity of its
composition domain. For arbitrary prescribed r,gamma in Ran(P_-), there is
a unique L2 solution of

    (L+M^2)w=0,    P_- w(s0)=r,  P_- xi_w(s0)=gamma.    (4)

To construct it, use a smooth cutoff supported in the fixed endpoint
neighborhood and choose an H2 lift v with P_-v(s0)=r and P_+v(s0)=0. Since
sigma_2 maps the two sigma_1 eigenspaces isometrically onto one another,
P_-xi_v=f(s0)^2 P_-[-i sigma_2 v'+(mu a sigma_1+i nu)v] uniquely determines
the P_+ component of v'(s0). A linear endpoint polynomial times the cutoff
therefore yields both prescribed values. There is a finite constant C_loc,
polynomial in the displayed coefficient and derivative bounds and in
|mu|, |nu| and M, such that

    ||v||_2 + ||(L+M^2)v||_2 <= C_loc (|r|+|gamma|).  (5)

Here L on v denotes its local differential expression; v need not satisfy
the s0 domain condition. The lift vanishes near any other endpoint. Set

    w=v-(L+M^2)^(-1)(L+M^2)v.                          (6)

The resolvent term belongs to Dom L and has zero boundary data in (4), so w
has the prescribed data and solves the homogeneous equation. Positivity
gives the explicit, generally nonsharp bound

    ||w||_2 <= C_loc(1+M^(-2)) (|r|+|gamma|).          (7)

For uniqueness, the difference of two such solutions satisfies both local
square boundary conditions and the fixed condition at the other end, so it
belongs to Dom L; positivity of L+M^2 forces it to vanish. Equation (7)
depends on the chosen local lift and does not assert uniform behavior as
M->0 or as angular/thermal frequencies grow.

Combining (3) with (7) is possible once an independently established trace
bound controls |Y(s1)| for the full resolvent. That step, the physical
unitary/normal and bundle identification, angular and thermal summation,
trace-class localization, and the common regulator are not supplied here.
No numerical calculation is used.

Remaining to-do list: bound the full-solution endpoint trace and summed
Poisson map, match the physical square and boundary, prove the full response
and regulator, resolve prior art, prepare the manuscript, and certify in Lean
on GCP.
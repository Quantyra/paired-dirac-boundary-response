# Weighted local derivative bound for the paired heat form

Status: ordinary conditional estimate using the closed sectorial-form
semigroup theorem. It supplies the derivative step left open in
[the paired Davies note](paired-form-davies-estimate.md), provided the
listed form and local graph hypotheses hold uniformly. It does not verify
the physical rough family, the complete contact, or Lean certification.

## Weighted time derivative

Adopt the Davies note's closed first-order form q(u)=||Du||² and scalar
multiplier/product hypotheses. For a real bounded Lipschitz φ with
||dφ||∞≤α, let T_φ(t)=e^φ e^(-tL)e^(-φ). The transformed form is

    q_φ(v,w)=<D(e^(-φ)v),D(e^φ w)>.

Its domain is the same V. Expanding the two product rules and applying
Young's inequality to the cross terms shows, with constants depending only
on the Clifford bound a,

    Re q_φ(v,v) ≥ (1/2)||Dv||² - C a²α²||v||²,
    |Im q_φ(v,v)| ≤ (1/2)||Dv||² + C a²α²||v||².       (1)

For example, use 2aα||v||||Dv||≤(1/2)||Dv||²+2a²α²||v||².
Thus q_φ shifted by C'a²α² is uniformly sectorial with angle bounded
strictly below π/2. The closed-form representation theorem gives a bounded
analytic semigroup in a fixed complex sector. Cauchy's estimate there,
with a circle of radius proportional to t, yields

    ||e^φ L e^(-tL)e^(-φ)||
       ≤ C₁ t^(-1) exp(C₂ a²α² t),      t>0.            (2)

The constants are independent of the oscillation or absolute value of φ;
only its Lipschitz constant enters the form estimates. This invokes the
standard analytic-semigroup theorem for closed sectorial forms; it is not a
Lean proof of that theorem.

## Local energy identity

Let E,F be separated sets, and choose real ψ∈W^{1,∞} equal to one near F,
with support at positive distance d₁ from E. For u=e^(-tL)1_E f, the
product rule gives the exact real identity

    ||D(ψu)||² = Re <Lu,ψ²u> + ||c(dψ)u||².              (3)

It holds first for smooth elements of Dom(L), then by form approximation;
ψu and ψ²u are in V because scalar multipliers preserve the first-order
projector domain. The identity includes no boundary term: the closed form
is the starting point.

The unweighted Davies estimate bounds ||1_suppψ u|| by
exp[-d₁²/(4a²t)]||f||. Apply (2) with a distance weight that is zero on E
and at least αd₁ on supp ψ to obtain

    ||1_suppψ Lu||
       ≤ C₁ t^(-1) exp(-αd₁+C₂a²α²t)||f||.            (4)

Optimizing α=d₁/(2C₂a²t) yields a Gaussian off-diagonal factor. Combining
(3), (4), the heat bound and ||c(dψ)||≤a||dψ||∞ gives

    ||D(ψ e^(-tL)1_E)||
       ≤ C₃(1+t^(-1/2)) exp[-d₁²/(C₄a²t)].           (5)

The constants depend on the cutoff derivative and the sectorial estimates,
not on the heat input. If a first-order C supported in F obeys the local
estimate ||Cw||≤c₁(||D(ψw)||+||ψw||), (5) and Davies immediately give the
desired derivative off-diagonal operator norm. This avoids commuting ψ
through a heat operator.

## Remaining uniformity

To use (5) for the physical/auxiliary collar comparison one must prove that
the actual cutoff, form domains, coefficient bounds and local graph
constant c₁ are common to the physical-side approximants. A uniform heat
trace or localized Schatten estimate is still needed to turn the operator
norm into the Hilbert–Schmidt bounds used in the trace Duhamel argument.
The mixed domain and regular bolt remain physical identification inputs;
metric derivatives and all response vertices need separate estimates. No
numerical computation is used.

Remaining to-do list: verify the uniform physical form and trace hypotheses;
complete the Euclidean contact and geometric vertices, novelty audit,
manuscript and GCP Lean certification.

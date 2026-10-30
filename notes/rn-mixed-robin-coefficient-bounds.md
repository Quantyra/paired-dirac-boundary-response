# Uniform Robin coefficients for radial fields on RN cuts

This checks the explicit scalar Robin coefficient in the mixed square-domain
formula, on the fixed RN outer collar. It does not prove a uniform H3
estimate or independently establish the physical projector domain.

Use the collar metric and cut u=delta in
`rn-moving-cut-uniform-trace.md`. Let f_e(u) be a real radial field with
uniform physical-chart derivatives through order three, and put
E_e=exp(-f_e/2). Assume |f_e| is uniformly bounded and the standard
Gauss/projector hypotheses of `multiplier-square-boundary.md` hold. With a
consistent normal n, the composed square boundary conditions are

  (1-P) gamma psi=0,
  P(nabla_n+S_e)gamma psi=0,
  S_e=(K-partial_n f_e)/2.                             (1)

For n=+u sqrt(B)/b partial_u, the trace of the second fundamental form is

  K=(sqrt(B)/b)(-3+u B'/(2B)),                          (2)

and reversing n reverses both K and partial_n f_e. Since B is smooth and
B(0)>0, K is uniformly bounded as delta->0. On u=delta, both K and
partial_n f_e are constants in the thermal and spherical coordinates.
The same is true for E_e. Consequently S_e and E_e are uniformly bounded
and all their intrinsic tangential derivatives vanish on each cut. The
projection P is parallel for the intrinsic boundary connection provided the
copy involution is parallel, as shown conditionally in the cited square
boundary note; under that hypothesis its intrinsic derivatives vanish too.

The weighted physical-side cubic/log family has uniform physical-chart C5
bounds in the collar by `physical-rough-family-heat-diagonal.md`; in
particular it supplies the field bounds just used. Uniform bounds in a
collar of fixed physical width also control the normal derivatives needed
for extending these coefficients into boundary charts. Fixed smooth interior
and bolt extensions remain separate hypotheses. Because the physical metric
coefficient and E_e are uniformly positive, the leading square coefficient
E_e^4 is uniformly elliptic. Expressing the condition in conormal form as in
`finite-cut-shifted-form-coercivity.md` adds a convention-dependent
zeroth-order coefficient built from the metric, connection and first-order
terms; its uniform bounds require the corresponding common local gauges and
connection estimates.

The geometric and gauge inputs can be made more concrete for the fixed standard seed. `rn-physical-cut-uniform-geometry.md` gives uniformly controlled physical boundary charts and second fundamental form near r=R, and `rn-cut-monopole-local-gauges.md` constructs uniformly controlled local magnetic gauges for the matched-copy connection. In those frames, uniform C5 physical-chart bounds on f_e control E_e and its derivatives through order five, while the fixed seed controls metric, spin connection and magnetic coefficients to the finite orders required by the displayed square and boundary expressions. Consequently the local coefficient boundedness required to express the Robin condition in those frames follows under the same stipulated operator, projector and gauge identification. This is a coefficient check, not a proof of a uniform mixed elliptic estimate or of equality with the source's actual boundary realization.
This checks the radial coefficient portion of the mixed-boundary regularity
hypotheses, not the full boundary theorem. The smooth bundled projector,
uniform coordinate/gauge bounds, domain equivalence and applicable H3
estimate still have to be verified. No numerical run or Lean certificate is
claimed.

Remaining to-do list: verify the remaining mixed-boundary and physical bundle
hypotheses, establish H3 and regulator matching, complete the prior-art audit
and manuscript, and certify supported claims in Lean on GCP.
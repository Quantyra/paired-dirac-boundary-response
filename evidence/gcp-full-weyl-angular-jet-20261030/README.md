# GCP check: full-Weyl angular jet cancellation

Run date: 2026-10-31 UTC / 2026-10-30 HST. The checked source is
`lean/FullWeylAngularJet.lean` at technical repository commit `760ea6f`;
SHA-256 `8e72285e4a9eb74bde549d88d53a2c37fbe1ebe8a0ddb9ca3fb0be7d103286e9`.

Run `paper1-full-weyl-angular-jet-20261030c` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, with Lean 4.30.0 (`d024af099ca4bf2c86f649261ebf59565dc8c622`)
and Lake 5.0.0. The checked theorem is `full_weyl_leading_angular_jet`.
Its axiom report is `[propext, Classical.choice, Quot.sound]`; no `sorryAx`
was reported. The compiled `.olean` SHA-256 is
`36f4c0b59924f0f01500f2cfb4d2de1095d5343baa5dea5ab421b0151762019a`.

The theorem certifies only the rational polynomial identity

```text
1 + 3(1 - x/6 + x^2/60) - (3/2)x(-1/6 + x/30) = 4 - x/4.
```

This is the coefficient cancellation in the leading angular contribution to
the flat full-Weyl tangent subtraction. It does not certify the Taylor
remainder, Euler--Maclaurin estimates, mode sum, Fourier integral, operator
domains, physical trace normalization, LLL contribution, common regulator,
curved remainder, or P1-C as a whole.

The targeted run reused the retained source-only environment from
`paper1-sourceonly-6858aa7-20261029`; Lake reported local-change warnings for
nine dependency repositories. This is not a clean dependency rebuild or an
exact-tree acceptance replay. The complete source, compiler output, compiled
artifact, exit code and finish time for runs a-c are retained in the adjacent
run directories. Runs a and b failed during draft elaboration and were
superseded by c; their diagnostics are preserved.

Remaining to-do list: prove and audit the ordinary tangent asymptotics and
physical full-Weyl/source transfer; formalize additional claims only after
their analytic hypotheses are fixed.

# First Dirac vertex as a localized annulus source

This connects the scalar source-map estimate in `physical-annulus-cubic-source-localization.md` to the first-order vertex inventory in `mixed-heat-vertex-inventory.md`. It gives a fixed-mode, fixed-parameter graph-to-flux estimate, not the full mixed heat response or an actual resolvent comparison.

On the physical annulus delta<=y<=2delta use the unitary radial coordinate x defined by dx/dy=U(y)^(-1), U=y/L4+O(y³). Let P be the closed first-order mode realization and suppose its local expression in x has principal derivative -i sigma_2 partial_x, with the declared smooth scalar base congruence and bounded local zeroth-order coefficients. For a stationary radial direction v,

 P_v=-(vP+Pv)/2=-vP-(1/2)[P,v],
 [P,v]=-i sigma_2 partial_x v                              (1)

on the stated common core, with the corresponding bounded principal multiplier if an additional fixed scalar base is retained. The direction commutes with the unitary radial change. If |v(y)|<=K y³ and |partial_y v|<=K y², then partial_x v=U partial_y v=O(K delta³) uniformly on the annulus. Thus

 ||1_ann P_v h|| <= C K delta³ (||P h||+||h||),           (2)

for h in the first-order domain, provided the scalar product rule holds there. Multiplying the output by b_conf=log U adds at most C(1+|log delta|) to the right side. These estimates retain the gradient commutator; they do not replace the first-order vertex by scalar multiplication.

The inhomogeneous flux map B_delta is uniformly bounded for fixed mu,nu,zeta by `physical-annulus-source-displacement.md`. Applying it to the annular output of (1) gives

 ||B_delta 1_ann P_v h||
       <= C_(mu,nu,zeta) K delta³ (||P h||+||h||).        (3)

For L=P*P and h=exp(-tL)w, spectral calculus supplies ||P exp(-tL)||<=(2 e t)^(-1/2), hence

 ||B_delta 1_ann P_v exp(-tL)||
       <= C_(mu,nu,zeta) K delta³ [1+(2 e t)^(-1/2)].  (4)

The log-weighted output has the same bound times 1+|log delta|. The source-to-flux operator is interpreted in its original ds half-density or its unitary x representation; no measure is changed without that unitary.

For two such directions, the mixed first-order Dirac derivative is P_uw=uwP+(u[P,w]+w[P,u])/2 on the common core. The same argument gives an O(delta^6) graph-to-source bound for this individual Dirac derivative. The positive-square mixed vertex additionally contains both products of first derivatives, adjoints and form-domain boundary terms; they are not controlled by that observation alone.

The constants above can depend on fixed mode and spectral parameters. The full resolvent's retained-side Poisson map, source transport, angular/thermal summation, all square vertices and regulator still need estimates. No claim is made that (4) proves the physical mixed response, a trace-norm limit or Lean certification.

Remaining to-do list: establish mode-uniform source and Poisson bounds and all square vertices, complete physical matching and regulator, finish novelty and manuscript, and certify supported claims on GCP.

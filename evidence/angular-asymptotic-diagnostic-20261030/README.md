# Magnetic tower finite-sum diagnostic

Run `./scripts/check-magnetic-tower.ps1` on Windows PowerShell 5.1.26100.9711. The output columns are q, a=t/b^2, final included n, (Theta minus the displayed two-term approximation)/a^2, and (mass-weighted sum minus its displayed approximation)/a. The sums stop before a n(n+q)>=80. This is a finite floating-point diagnostic of `notes/magnetic-angular-subleading-asymptotics.md`, not a rigorous infinite-tail bound, proof of Euler--Maclaurin, physical response or Lean certificate.

For q=0,1,3 and a=0.02,0.01,0.005 the recorded scaled residuals remain of comparable magnitude as a decreases, consistent with the predicted O(a^2) and O(a) orders. The calculation does not validate uniformity in q or a limit.

SHA-256 of `scripts/check-magnetic-tower.ps1`: `0f2c89c85d8616365b9a282b113fb93c20d1f4312fc83c3090a78fe4183d7cd3`. SHA-256 of `output.txt`: `404112768d5b242a74afdadc85c25a2a9af56377870ad8b05fb9f1155d7397a7`.

Remaining to-do list: complete the physical and regulator proofs, settle novelty and scope, finish the manuscript, and certify supported claims in Lean on GCP.

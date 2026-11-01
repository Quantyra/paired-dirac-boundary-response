$ErrorActionPreference = 'Stop'
$repo = 'C:\Users\dfred\Desktop\Projects\IGH\paired-dirac-boundary-response'
$ff = [string][char]12

function Repair($rel, $pairs) {
    $path = Join-Path $repo $rel
    $t = [System.IO.File]::ReadAllText($path)
    foreach ($p in $pairs) {
        $t = $t.Replace($ff + $p[0], $p[1])
    }
    [System.IO.File]::WriteAllText($path, $t, (New-Object System.Text.UTF8Encoding($false)))
    $left = 0
    foreach ($ch in $t.ToCharArray()) { if ($ch -eq [char]12 -or $ch -eq [char]11 -or $ch -eq [char]7) { $left++ } }
    "$rel  remaining_ctrl=$left"
}

Repair 'evidence\gcp-full-weyl-angular-jet4-20261030\README.md' @(
    @('ull_weyl_leading_angular_jet', '`full_weyl_leading_angular_jet'),
    @('ull_weyl_subtracted_jet_through_fourth_order', '`full_weyl_subtracted_jet_through_fourth_order')
)

Repair 'manuscript\DRAFT.md' @(
    @('lat_pointwise_reduction', '`flat_pointwise_reduction'),
    @('lat_finite_time_sum_bound', '`flat_finite_time_sum_bound'),
    @('; the integral itself is not, because the retained Mathlib build has no measure theory.',
      '; the integral itself is certified in [`gcp-manuscript-integral-20261101`](../evidence/gcp-manuscript-integral-20261101/README.md); the Fourier/Parseval derivation of the cubic bound remains unformalized.')
)

Repair 'notes\physical-product-contact-operator-gap.md' @(
    @('inite-cut-congruence-uniformity-obstruction.md', '`finite-cut-congruence-uniformity-obstruction.md')
)

Repair 'notes\source-conversion-response-crosswalk.md' @(
    @('inite-cut-congruence-uniformity-obstruction.md', '`finite-cut-congruence-uniformity-obstruction.md')
)

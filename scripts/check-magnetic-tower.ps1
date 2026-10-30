# Independent finite-sum diagnostic; this does not prove the infinite-tail bound.
$ErrorActionPreference = 'Stop'
foreach ($q in @(0.0,1.0,3.0)) {
  foreach ($a in @(0.02,0.01,0.005)) {
    $theta=0.0; $weighted=0.0; $n=1
    while ($a * $n * ($n + $q) -lt 80.0) {
      $f=$n*($n+$q)
      $d=2.0*($q+2.0*$n)
      $term=$d*[Math]::Exp(-$a*$f)
      $theta += $term
      $weighted += $term*$f
      $n++
    }
    $thetaApprox=2.0/$a-$q-1.0/3.0+$a*($q*$q/6.0-1.0/30.0)
    $weightedApprox=2.0/($a*$a)-$q*$q/6.0+1.0/30.0
    '{0:F0} {1:F3} {2:D} {3:E8} {4:E8}' -f $q,$a,($n-1),(($theta-$thetaApprox)/($a*$a)),(($weighted-$weightedApprox)/$a)
  }
}
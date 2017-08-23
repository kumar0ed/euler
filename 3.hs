{-# OPTIONS_GHC -O3 -optc-O3 #-}

minimize n factor=
  if n`mod`factor==0
  then minimize (n`div`factor) factor
  else n

pollardRho' n x y 1=pollardRho' n x' y' (gcd (abs (x'-y')) n)
  where
    x'=g x
    y'=g (g y)
    g k=(1+(k^2))`mod`n
pollardRho' _ _ _ d=d

pollardRho n=pollardRho' n 2 2 1

primeFactors 1=[]
primeFactors n=factor:(primeFactors n')
  where
    factor=pollardRho n
    n'=minimize n factor

main=print.maximum.primeFactors$ 600851475143

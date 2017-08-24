{-# OPTIONS_GHC -O3 -optc-O3 #-}

squareOfSum n=(n*(n+1)`div`2)^2
sumOfSquare n=n*(n+1)*(2*n+1)`div`6

diff n=(squareOfSum n)-(sumOfSquare n)

main=print.diff$ 100

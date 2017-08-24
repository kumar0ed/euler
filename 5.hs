{-# OPTIONS_GHC -O3 -optc-O3 #-}

main=print$ foldl lcm 1 [1..20]

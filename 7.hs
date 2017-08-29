{-# OPTIONS_GHC -O3 -optc-O3 #-}

wheelList =  [1, 7, 11, 13, 17, 19, 23, 29]

wheel n=map (m+) wheelList
  where m=30*n

candidates =concatMap wheel [1..]

isPrime n=not.(any isDivicible)$ rootCandidates
  where
    rootCandidates =takeWhile (<=(ceiling.sqrt.fromIntegral$ n)) primes
    isDivicible x= n`mod`x==0

primes = [2, 3, 5]++(tail wheelList)++(filter isPrime candidates)

main =print$ primes!!(10001-1)


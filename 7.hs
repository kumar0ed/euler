{-# OPTIONS_GHC -O3 -optc-O3 #-}

wheel n=map (m+) [1, 7, 11, 13, 17, 19, 23, 29]
  where m=30*n


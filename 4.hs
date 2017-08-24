{-# OPTIONS_GHC -O3 -optc-O3 #-}

isPalindrome n=m==(reverse m)
 where m=show n
main=print.maximum.filter isPalindrome$ [x*y|x<-[100..999],y<-[100..x]]

--idea 1
sumOfN n=n*(n+1)`div`2
sumOfMultiplesOfN m n=sumOfN$ m`div`n
main=print$ 3*(sumOfMultiplesOfN 999 3)+5*(sumOfMultiplesOfN 999 5)-15*(sumOfMultiplesOfN 999 15)


----idea 0
--main=print$ sum [x|x<-[1..999],x`mod`3==0||x`mod`5==0]

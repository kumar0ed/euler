--idea 0
fib=zipWith (+) (0:(1:fib)) (0:fib)
main=print.sum.takeWhile (<=4000000).filter even$ fib

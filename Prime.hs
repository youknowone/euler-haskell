
module Prime where

primes = primes_inner [] [2 ..]
    where
    primes_inner ps (x:xs) = x:(primes_inner (x:ps) [n | n<-xs, n `mod` x /= 0])


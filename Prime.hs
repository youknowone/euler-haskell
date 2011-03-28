
module Prime where

primes = primes_inner [2 ..]
    where
	primes_inner (x:xs) = x:(primes_inner [n | n<-xs, n `mod` x /= 0])

divisors n
    | n < 2 = [n]
    | otherwise = divisors_inner n primes
    where
    divisors_inner remain px@(p:ps)
        | remain == 1 = []
        | p^2 > n = [remain]
        | remain `mod` p == 0 = p : divisors_inner (remain `div` p) px
        | otherwise = divisors_inner remain ps



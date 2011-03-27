
primes = primes_inner [] [2 ..]
	where
	primes_inner ps (x:xs) = x:(primes_inner (x:ps) [n | n<-xs, n `mod` x /= 0])

factors n
	| n < 2 = [n]
	| otherwise = factors_inner n n [] primes
	where
	factors_inner value remain facts prms@(p:ps) 
		| remain == 1 = facts
		| p * p > n = remain:facts
		| remain `mod` p == 0 = factors_inner value (remain `div` p) (p:facts) prms
		| otherwise = factors_inner value remain facts ps


main = do
	print $ head $ factors 600851475143
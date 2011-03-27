
import Prime

factors n
	| n < 2 = [n]
	| otherwise = factors_inner n [] primes
	where
	factors_inner remain facts px@(p:ps) 
		| remain == 1 = facts
		| p * p > n = remain:facts
		| remain `mod` p == 0 = factors_inner (remain `div` p) (p:facts) px
		| otherwise = factors_inner remain facts ps


main = do
	print $ head $ factors 600851475143

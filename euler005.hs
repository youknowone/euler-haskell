
lcm' [] = 0
lcm' ns = lcm_inner ns 1
	where
	lcm_inner [] r = r
	lcm_inner (n:ns) r = lcm_inner ns (r * (n `div` (gcd n r)))

main = do
	print $ lcm' [1 .. 20]

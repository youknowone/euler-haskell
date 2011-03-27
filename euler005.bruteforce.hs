
lcm' ns = lcm_inner ns 1
	where
	lcm_inner [] r = r
	lcm_inner ns r
		| foldl (&&) True (map ((0 ==).(r `mod`)) ns) = r
		| otherwise = lcm_inner ns (r+1)

main = do
	print $ lcm' [1 .. 20]

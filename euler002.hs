
fib_sum n = fib_sum_inner [1,0]
	where
	fib_sum_inner s@(x1:x2:xs)
		| x > n = 0
		| otherwise = even_value x + fib_sum_inner (x:s)
		where
			x = x1 + x2
			even_value n = if even n then n else 0

main = do
	print $ fib_sum 4000000

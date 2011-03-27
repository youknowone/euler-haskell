
sum3_5 n = [x|x <- [1..], mod x 3 == 0 || mod x 5 == 0] `sum_to` n
	where
	sum_to (x:xs) n
		| x >= n = 0
		| otherwise = x + (xs `sum_to` n)

main = do
	print $ sum3_5 1000 


sum3_5 n = sum_to [x|x <- [1..], mod x 3 == 0 || mod x 5 == 0]
	where
	sum_to (x:xs)
		| x >= n = 0
		| otherwise = x + (sum_to xs)

main = do
	print $ sum3_5 1000 

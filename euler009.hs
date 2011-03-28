
find_pythagorean_triplet n = fpt_inner 1 1
	where
	fpt_inner a b
		| a > c = (-1,-1,-1)
		| a^2 + b^2 == c^2 = (a, b, c)
		| b > c = fpt_inner (a+1) (a+1)
		| otherwise = fpt_inner a (b+1)
		where
			c = n - (a + b)

mult_triplet (a,b,c) = a*b*c

main = do
	print $ find_pythagorean_triplet 1000
	print $ mult_triplet( find_pythagorean_triplet 1000 )

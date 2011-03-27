
is_palindrome n = n == reverse_num n 0
	where
	reverse_num 0 tgt = tgt
	reverse_num src tgt = reverse_num (src `div` 10) (tgt * 10 + (src `mod` 10))

max_palindrome n = mp_inner n n 0
	where
	mp_inner a b max
		| a * 2 < n = max
		| a * b < max = mp_inner (a-1) (a-1) max
		| is_palindrome (a*b) = mp_inner (a-1) (a-1) (a*b)
		| otherwise = mp_inner a (b-1) max

main = do
	print $ max_palindrome 999

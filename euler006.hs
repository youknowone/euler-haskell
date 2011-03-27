
square_diff n = (sum [1..n]) ^2 - (sum (map (^2) [1..n]))

main = do
	print $ square_diff 100

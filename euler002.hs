
fibonaccis = fib_inner 0 1
	where
	fib_inner a b = a:(fib_inner b (a+b))

main = do
	print $ sum (takeWhile (<= 4000000) ([n|n<-fibonaccis,even n]))

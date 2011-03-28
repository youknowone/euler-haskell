
import Prime

main = do
	print $! sum ( takeWhile (<=2000000) primes )

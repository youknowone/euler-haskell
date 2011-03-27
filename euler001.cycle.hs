
module Main where

import System.IO

sum3_5 0 = 0
sum3_5 n
	| n `mod` 3 == 0 = n + sum3_5(n-1)
	| n `mod` 5 == 0 = n + sum3_5(n-1)
	| otherwise = sum3_5(n-1)

main :: IO()
main =  do
	print (sum3_5 999)

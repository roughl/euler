import Data.List
import Data.Numbers.Primes

main = print $ head [ (a,a+1,a+2,a+3) |  a <- [1..], check a, check (a+1), check (a+2), check(a+3) ]
	where check a = (length $ nub $ primeFactors a) == 4


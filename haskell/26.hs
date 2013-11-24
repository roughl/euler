import Data.Numbers.Primes

order c a b
	| (a^c `mod` b) == 0 = 0
	| (a^c `mod` b) == 1 = c
	| otherwise = order (c+1) a b

main = print $ maximum $ map (order 1 10) $ takeWhile (< 999)  primes

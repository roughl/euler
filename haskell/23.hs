import Data.List
import qualified Data.Set as Set

n=28123-12

divisors :: (Integral a) => a -> [a]
divisors n =nub$ 1:(smaldivs n) ++ (map (\x -> quot n x) (smaldivs n))
	where smaldivs n = [i|i<-[2..floor$sqrt$fromIntegral n], mod n i==0]

abundants = [i|i<-[12..n], sum (divisors i) > i]

sumOfPairs xs = do
	a <- xs
	b <- xs
	[a+b]

setSumOfAbundants =  Set.fromList $filter (<=n)$ sumOfPairs abundants

lessThenMax = Set.fromDistinctAscList [1..n]

main = print $ Set.fold (+) 0 $ Set.difference lessThenMax setSumOfAbundants


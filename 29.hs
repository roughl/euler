import Data.Map (toList, fromList)
main = print $ length$nub' [(a^b,0)|a<-[2..100], b<-[2..100]]
	where nub' = toList . fromList

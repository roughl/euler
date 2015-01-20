digits n = reverse$digs n
	where digs a
			| a==0 = []
			| otherwise = a `mod` 10 : digs (a `div` 10)


main = print $ maximum $ map (sum . digits) [a^b | a<-[1..99], b<-[1..99]]


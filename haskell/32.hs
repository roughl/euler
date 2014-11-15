import Data.List

check s 
	| m01*m24==prod58 = prod58
	| m0*m14==prod58 = prod58
	| otherwise = 0 where
	m0 = (s!!0)
	m01 = (10*m0+s!!1)
	m24 = (100*s!!2+10*s!!3+s!!4) 
	m14 = m24+ (1000*s!!1)
	prod58 = (1000*s!!5+100*s!!6+10*s!!7+s!!8) 


main = print $ sum $ nub $ filter (>0) $ map check $ permutations [1..9]

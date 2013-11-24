import Data.Char
digits n = reverse$digs n
	where digs a
			| a==0 = []
			| otherwise = a `mod` 10 : digs (a `div` 10)

fraction n = frac 0 !! (n-1)
	where frac a = (digits a) ++ (frac (a+1))

main = print $ product $ map fraction  [10^x | x<-[0..6]]

-- better solution:
main2 = print $ product $ map (\x->digitToInt$ concat[show x|x<-[0..]]!!(10^x))[0..6]

-- even better:
main3 = print $ product $ map (digitToInt . ((concatMap show [0..])!!) .(10^))[0..6]

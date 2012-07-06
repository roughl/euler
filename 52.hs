import Data.List

-- not needed
--digits :: Integral n => n -> [n]
--digits 0 = []
--digits i = lastDigit : digits rest
--	where (rest, lastDigit) = quotRem i 10

--sdigits i = sort $ digits i

sdigits i = sort $ show i

main = print $ head [x | x <- [1..], sdigits(x*2)==sdigits x, sdigits(x*3)==sdigits x, sdigits(x*4)==sdigits x, sdigits(x*5)==sdigits x, sdigits(x*6)==sdigits x ]


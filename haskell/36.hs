import Numeric
import Data.Char

palindromic10 a = (show a) == reverse (show a)
palindromic2 a = (binary a) == reverse (binary a) where
	binary n = showIntAtBase 2 intToDigit n ""

main = print $ sum [x|x<-[1..999999], odd x, palindromic10 x, palindromic2 x]


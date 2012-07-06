import System.IO
import Data.Char
import Data.Bits

wordsWhen p s =  case dropWhile p s of
	"" -> []
	s' -> w : wordsWhen p s''
		where (w, s'') = break p s'

decrypt input key = zipWith xor input (cycle key)

keys = [[a,b,c] | a<-[97..122], b<-[97..122], c<-[97..122]]

check [] = True
check (x:rest) = checks x && check rest
	where checks x = isAlphaNum y || isSpace y || isPunctuation y
		where y = (chr x)

checkAll inpStr = filter check $ map (decrypt (map (\x -> read x ::Int) $ wordsWhen (==',') inpStr)) keys

main = do
	inh <- openFile "cipher1.txt" ReadMode
	inpStr <- hGetContents inh
	print $ map (\x -> map chr x ) $ checkAll inpStr
	print $ map sum $ checkAll inpStr


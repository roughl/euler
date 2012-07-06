import Data.List

main = print$ take 1 $ drop 999999 $ sort $ permutations [0..9]

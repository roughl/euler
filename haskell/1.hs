import Data.List

multipleof n = takeWhile (<1000) $ [n*a | a<-[1..]]

main = print $ sum $ nub $  (multipleof 3)++(multipleof 5)


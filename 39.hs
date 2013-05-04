import Data.List
rightTriangles p = [ (p-c-b,b,c) | c <- [1..p `div` 2], b <- [1..(p-c) `div` 2], (p-c-b)^2 + b^2 == c^2 ] 

maximised = map length $ map rightTriangles [1..1000]

main = print $ (elemIndex (maximum maximised) maximised)


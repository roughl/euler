fak n = product [1..n]

selections n r = (fak n) `div` ( (fak r)*(fak (n-r)))

main = print$length$filter (>1000000) [selections n r | n<-[1..100], r<-[1..n]]

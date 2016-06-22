mylength :: [a] -> Int
mylength [] = 0
mylength (_:xs) = 1 + mylength xs

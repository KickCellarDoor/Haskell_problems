myDuplicateN :: [a] -> Int -> [a]
myDuplicateN xs n = foldr ((++) . replicate n) [] xs

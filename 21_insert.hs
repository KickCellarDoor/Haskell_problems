myinsert :: a -> [a] -> Int -> [a]
myinsert a xs n = take (n-1) xs ++ [a] ++ drop (n-1) xs

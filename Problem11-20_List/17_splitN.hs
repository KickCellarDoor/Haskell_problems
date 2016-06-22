splitN :: [a] -> Int -> ([a],[a])
splitN [] _ = ([],[])
splitN l@(x:xs) n
  |n > 0      = (x:ys,zs)
  |otherwise  = ([],l)
  where (ys,zs) = splitN xs (n-1)

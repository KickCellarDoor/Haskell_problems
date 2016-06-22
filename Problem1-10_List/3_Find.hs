myfind :: [a] -> Int -> a
myfind (x:_) 1 = x
myfind (_:xs) k = myfind xs (k-1)

myslice :: [a] -> Int -> Int -> [a]
myslice [] _ _ = []
myslice (x:xs) m n   | m > 1              = myslice xs (m-1) (n-1)
                     | m == 1 && n >= 1    = x : myslice xs 1 (n-1)
                     | n == 0             = []

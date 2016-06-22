dropN :: [a] -> Int -> [a]
dropN xs n = dropN' xs n
  where
    dropN' [] k = []
    dropN' (x:xs) k
      |k == 1      = dropN' xs n
      |otherwise   = x : dropN' xs (k-1)

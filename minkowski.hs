minkowski :: [Double] -> [Double] -> Int -> Double
minkowski [] [] _ = 0
minkowski (x:xs) (y:ys) p = abs((x-y) ^ p) + minkowski xs ys p

each :: [[Double]] -> Int -> [[Double]]
each [] _ = []
each (x:xs) p = helper x xs p : each xs p
  where
        helper :: [Double] -> [[Double]] -> Int -> [Double]
        helper [] _ p = []
        helper _ [] p = []
        helper x (y:ys) p = minkowski x y p  : helper x ys p

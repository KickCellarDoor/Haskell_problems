myrange :: Int -> Int -> [Int]
myrange a b = take (b-a+1) [a ..]

myCompress :: (Eq a) => [a] -> [a]
myCompress [x] = [x]
myCompress (x : ys@(y : _))
  | x == y    = myCompress ys
  | otherwise = x : myCompress ys

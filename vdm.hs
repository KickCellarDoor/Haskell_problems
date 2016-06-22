myvdm :: [Double] -> [Double] -> Double -> Double -> Double -> Double
myvdm [] [] _ _ _  = 0

myvdm (x:xs) (y:ys) sum1 sum2 p = abs (x / sum1 - y / sum2) ^ p + myvdm xs ys sum1 sum2 p

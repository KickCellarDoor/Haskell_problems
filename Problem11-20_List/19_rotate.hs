myRotate :: [a] -> Int -> [a]
myRotate [] _ = []
myRotate l@(x:xs) m |m > 0   = myRotate xs (m-1) ++ [x]
                    |m == 0  = l
                    |m < 0   = myRotate l (m + length l) 

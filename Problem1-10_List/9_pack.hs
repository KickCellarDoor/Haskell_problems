import Data.List

myPack :: (Eq a) => [a] -> [[a]]
myPack [] = [] 
myPack (x:xs) = (x:first) : myPack rest
  where (first,rest) = span (== x) xs

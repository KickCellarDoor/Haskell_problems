import Data.List
import Control.Arrow

myPack :: (Eq a) => [a] -> [[a]]
myPack [] = []
myPack (x:xs) = (x:first) : myPack rest
  where (first,rest) = span (== x) xs

mylength :: [a] -> Int
mylength [] = 0
mylength (_:xs) = 1 + mylength xs

runLength :: (Eq a) => [a] -> [(Int,a)]
runLength = map (mylength Control.Arrow.&&& head) . myPack

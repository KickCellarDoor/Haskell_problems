import Data.List
import Control.Arrow
data ListItem a = Single a | Multiple Int a
  deriving (Show)

myPack :: (Eq a) => [a] -> [[a]]
myPack [] = []
myPack (x:xs) = (x:first) : myPack rest
  where (first,rest) = span (== x) xs

mylength :: [a] -> Int
mylength [] = 0
mylength (_:xs) = 1 + mylength xs

runLength :: (Eq a) => [a] -> [(Int,a)]
runLength = map (mylength Control.Arrow.&&& head) . myPack

runLength' :: (Eq a) => [a] -> [ListItem a]
runLength' = map runLengthHelper . runLength
  where runLengthHelper (1,x) = Single x
        runLengthHelper (n,x) = Multiple n x

import System.Random
import Control.Monad (replicateM)
randomN :: [a] -> Int -> IO [a]
randomN [] _ = return []
randomN l n
  |n < 0      = error "N must be greater than zero!"
  |otherwise  = do pos <- replicateM n $
                          getStdRandom $ randomR (0,length l - 1)
                   return [l !! p |p <-pos]

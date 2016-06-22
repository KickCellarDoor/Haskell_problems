import System.Random
import Control.Monad (replicateM)
drawFrom :: Int -> Int -> IO [Int]
drawFrom n m = helper n [1..m]
helper 0 _ = return []
helper n xs = do r <- randomRIO (0,length xs -1)
                 let remaining = take r xs ++ drop (r+1) xs
                 rest <- helper (n-1) remaining
                 return (xs!!r : rest)

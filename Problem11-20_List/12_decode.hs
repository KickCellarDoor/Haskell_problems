data ListItem a = Single a | Mutiple Int a

mydecode :: [ListItem a] -> [a]
mydecode = concatMap decodeHelper
  where decodeHelper (Single x) = [x]
        decodeHelper (Mutiple n x) = replicate n x

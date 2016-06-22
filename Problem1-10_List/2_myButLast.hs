myButLast''' :: [a] -> a
myButLast''' [] = error"Error Input"
myButlast''' [x] = error"Error Input"
myButLast''' (x:xs) =
  if length xs == 1 then x
  else myButLast''' xs

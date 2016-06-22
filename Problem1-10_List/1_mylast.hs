mylast :: [a] -> a
mylast [] = error "Error!"
mylast [x] = x
mylast (_:xs) = mylast xs

{-
  Using foldl, define a function dec2int :: [Int] -> Int,
  e.g. dec2int [2,3,4,5] -> 2345
  dec2int [] = 0
  dec2int (x:xs) = 10*x + dec2int xs
  
  foldl (#) v [x0,x1,...,xn] = (...((v # x0) # x1) # xn)
  v = 0
  # = (\x xs -> 10*x + xs)
  hence 
-}
dec2int = foldl (\x xs -> 10*x + xs) 0
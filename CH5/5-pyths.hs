{- Simple brute force approach iteration all the way to n for both x and y, where sqrt(n^2-1) would suffice.
-}
pyths :: Int -> [(Int, Int,Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]
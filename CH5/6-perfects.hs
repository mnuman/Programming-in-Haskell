factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

{- a number is considered perfect is the sum of iets factors, excluding the number itself, is equal to that number -}
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], x == sum(factors x) - x]
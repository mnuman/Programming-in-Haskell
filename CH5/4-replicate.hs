mreplicate :: Int -> a -> [a]
mreplicate n a = [a | x <- [1..n]]
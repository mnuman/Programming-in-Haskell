and' :: [Bool] -> Bool
and' [] = True
and' (x:xs) | x         = and' xs
            | otherwise = False
           
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

replicate' :: Int -> a -> [a]
replicate' 0 c = []
replicate' n c = c : replicate' (n-1) c


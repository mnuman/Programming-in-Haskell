sum' :: Num a => [a] -> a
sum' [] = 0
sum' (n:ns) = n + sum' ns

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' n (x:xs) = x : take (n-1) xs

last' :: [a] -> a
last' [x] = x
last' (_:xs) = last xs
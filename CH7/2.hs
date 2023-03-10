all' :: (a->Bool) -> [Bool] -> Bool
all' = and (map p xs)

any' :: (a->Bool) -> [Bool] -> Bool
any' = or (map p xs)

takeWhile' :: (a->Bool) -> [a] -> [a]
takeWhile' p (x:xs) | p x = (x : takeWhile' p xs)
                    | otherwise = []
                    
dropWhile' :: (a->Bool) -> [a] -> [a]
dropWhile' p (x:xs) | p x = dropWhile' p xs
                    | otherwise = (x:xs)
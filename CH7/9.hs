altMap :: (a ->b) -> (a->b) -> [a] -> [b]
altMap f g [] = []
altMap f g (x:xs) = f x : altMap g f xs

luhnDouble :: Int -> Int
luhnDouble x | x < 5 = 2 * x
             | otherwise = 2 * x - 9

luhn :: [Int] -> Bool
luhn xs = s `mod` 10 == 0
          where s = sum (altMap luhnDouble (\x -> x) xs)

-- luhn [1,7,8,4] --> True
-- luhn [4,7,8,3] --> False
luhnDouble :: Int -> Int
luhnDouble x | x < 5 = 2 * x
             | otherwise = 2 * x - 9

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = s `mod` 10 == 0
               where s = luhnDouble a + b + luhnDouble c + d
               
mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z

mult2 :: Int -> Int -> Int -> Int
mult2 = \x -> (\y -> (\z -> x * y * z))

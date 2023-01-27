scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [xs!!i * ys!!i | i <- [0..length xs - 1]]
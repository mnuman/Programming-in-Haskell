euclid :: Int -> Int -> Int
euclid m n | m == n = m
           | m > n  = euclid (m - n) n 
           | n > m  = euclid (n - m) m
{-
 Using ^#^ as the operator as both ^ and ^^ are already bound by the prelude, so need yet another operator for exponentiation.
-}
(^#^) :: Int -> Int -> Int
m ^#^ n | n == 0 = 1
m ^#^ n | n > 0  = m * (m ^#^ (n-1))
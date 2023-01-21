third1 :: [a] -> a
third1 as = as !! 2

third2 :: [a] -> a
third2 as = head $ tail $ tail as

third3 :: [a] -> a
third3 (_:_:a:as) = a
halve :: [a] -> ([a],[a])
halve as = (take x as, drop x as)
           where x = length as `div` 2
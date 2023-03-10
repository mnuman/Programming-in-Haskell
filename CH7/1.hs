{-
  Express list comprehension [f x | x <-xs, p x] using higher-order functions map and filter
-}
listcomp = map f filter p xs
import Data.Char
type Bit = Int
unfold :: (t -> Bool) -> (t -> a) -> (t -> t) -> t -> [a]
unfold p h t x | p x       = []
               | otherwise = h x : unfold p h t (t x)

-- original definition               
chop8 :: [Bit] -> [[Bit]]
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

chop8' :: [Bit] -> [[Bit]]
chop8' = unfold (null) (take 8) (drop 8)

map' :: (a -> b) -> [a] -> [b]
map' f = unfold (null) (\(x:_) -> f x) (drop 1)

-- iterate f x  = [x, f x, f (f x), f ( f ( f x)), ...]
iterate' f = unfold (\_ -> False) f f
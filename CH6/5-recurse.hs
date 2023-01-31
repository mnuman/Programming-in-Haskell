drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n-1) xs

Evaluating drop 3 [1,2,3,4,5]
drop 3 [1,2,3,4,5] = drop 3 (_:[2,3,4,5]) = drop (3-1) [2,3,4,5] = drop 2 (2:[3,4,5]) = drop (2-1) [3,4,5] = drop 1 (3:[4,5]) = drop (1-1) [4,5] = drop 0 [4,5] = [4,5]

init :: [a] -> [a]
init [_] = []
init (x:xs) = x : init xs

Evaluating init [1,2,3]
init [1,2,3] = init (1:[2,3]) = 1 : init [2,3] = 1 : init (2:[3]) = 1 : 2 : init [3] = 1 : 2 : [] = [1,2]
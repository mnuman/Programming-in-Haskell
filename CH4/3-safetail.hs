safetaila :: [a] -> [a]
safetaila as = if null as then [] else tail as

safetailb :: [a] -> [a]
safetailb as | null as   = []
             | otherwise = tail as
             
safetailc :: [a] -> [a]
safetailc [] = []
safetailc as = tail as
               

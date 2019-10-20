main = do
    print (perm 56 7)
 
perm :: Int -> Int -> Int
perm n r
    | r == 1    = n
    | otherwise = n * (perm (n - 1) (r - 1))
main = do
    print (choose 96 4)
 
choose :: Int -> Int -> Int
choose n r
    | n - r == 1    = n
    | otherwise = div (n * (choose (n - 1) r)) (n-r)
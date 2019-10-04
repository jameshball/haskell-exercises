main = do
    print (binary 128)
 
binary :: Int -> Int
-- Pre: n >= 0
binary n
    | n < 2    = n
    | otherwise = binary (div n 2) * 10 + mod n 2
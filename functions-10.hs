main = do
    print (quotient 0 20)

-- Pre: n >= 0, m > 0.
quotient :: Int -> Int -> Int
quotient n m
    | n - m < 0 = 0
    | otherwise = quotient (n - m) m + 1
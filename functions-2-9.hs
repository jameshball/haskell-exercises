main = do
    print (remainder 0 10)

-- Pre: n >= 0, m > 0.
remainder :: Int -> Int -> Int
remainder n m
    | n - m < m = n - m
    | otherwise = remainder (n - m) m
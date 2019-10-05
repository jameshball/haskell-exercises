main = do
    print (chop 128)
 
-- Pre: n >= 0
-- Returns the number of 10s in a decimal number and the remainder.
chop :: Int -> (Int, Int)
chop n
    | n < 10    = (0, n)
    | otherwise = let (q, r) = chop (n - 10) in (q + 1, r)
        
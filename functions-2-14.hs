main = do
    print (concatenate 123 0)
 
-- Pre: n > 0
-- Returns the number of 10s in a decimal number and the remainder.
chop :: Int -> (Int, Int)
chop n
    | n < 10    = (0, n)
    | otherwise = let (q, r) = chop (n - 10) in (q + 1, r)
    
{--
-- Pre: m, n > 0
-- Concatenates two integers.
concatenate :: (Int, Int) -> Int
concatenate (m, n) = powerOf10 n * m + n
    where
        -- Pre: p >= 0
        -- Returns the power of 10 that is greater than the input.
        -- E.g. 345 -> 1000
        powerOf10 :: Int -> Int
        powerOf10 p
            | p == 0    = 1
            | p < 10    = 10
            | otherwise = let (q, r) = chop p in 10 * powerOf10 q
--}

-- Pre: m, n >= 0
-- Concatenates two integers.
concatenate :: Int -> Int -> Int
concatenate m n
    | n == 0    = m
    | otherwise = let (q, r) = chop n in concatenate m q * 10 + r
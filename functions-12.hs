main = do
    print (sub 10 10)
 
-- Pre: m, n >= 0
-- Adds two non-negative integers, recursively
add :: Int -> Int -> Int
add m n
    | n == 0    = m
    -- Tail recursive. No +1 required.
    | otherwise = add (succ m) (pred n)

-- Pre: m, n >= 0
-- Subtracts two non-negative integers, recursively.
sub :: Int -> Int -> Int
sub m n
    | n == 0    = m    
    -- Also tail recursive.
    | otherwise = sub (pred m) (pred n)

-- Pre: m, n > 0
-- Returns the larger of two positive integers.
larger :: Int -> Int -> Int
larger m n
    | m == n    = m
    | otherwise = larger' m n
    where
        -- We want to retain the original values in memory so we create another function with new values.
        larger' :: Int -> Int -> Int
        larger' a b
            | a == 0    = m
            | b == 0    = n
            | otherwise = larger' (pred a) (pred b)

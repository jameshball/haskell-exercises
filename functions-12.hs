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
-- Subtracts two non-negative integers, recursively
sub :: Int -> Int -> Int
sub m n
    | n == 0    = m    
    -- Also tail recursive.
    | otherwise = sub (m - 1) (n - 1)

-- Try to re-write without using < and purely succ/pred.
larger :: Int -> Int -> Int
larger m n
    | sub m n < 0   = n
    | otherwise     = m
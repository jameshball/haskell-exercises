main = do
    print (fib 100)
 
-- Pre: n >= 0
-- Returns the nth Fibonacci number.
fib :: Int -> Int
-- We know fib 0 == 0 and fib 1 == 1 hence we start with fib' n 0 1
fib n = fib' n 0 1
    where
        fib' :: Int -> Int -> Int -> Int
        fib' c fibK fibKPlusOne
            | c == 0    = fibK
            | otherwise = fib' (c - 1) (fibKPlusOne) (fibK + fibKPlusOne)


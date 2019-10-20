main = do
    print (isPrime 47)

isPrime :: Int -> Bool
isPrime a
    | a > 1      = [x | x <- [2 .. round $ sqrt $ fromIntegral a], mod a x == 0] == []
    | otherwise  = False

-- Lovely solution to this by William Grant:
{--
primes = [x | x <- [2..], isPrime x]

isPrime :: Int -> Bool
isPrime 2 = True
isPrime x = [y | y <- (takeWhile ((<=) limit) primes), mod x y == 0] == []
    where limit = floor $ sqrt $ fromIntegral x
--}
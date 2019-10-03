import Data.Char

main = do
    print (isPrime 47)

isPrime :: Int -> Bool
isPrime a
    | a > 1      = [x | x <- [2 .. round $ sqrt $ fromIntegral a], mod a x == 0] == []
    | otherwise  = False
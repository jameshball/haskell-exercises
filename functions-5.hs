import Data.Char

main = do
    print (isPrime 49)
 
isPrime :: Int -> Bool
isPrime a
    = if a > 1 then if [x | x <- [2 .. round $ sqrt $ fromIntegral a], mod a x == 0] == [] then True else False else False
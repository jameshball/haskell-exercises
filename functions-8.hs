import Data.Char

main = do
    print (choose 6 2)
 
choose :: Float -> Float -> Float
choose n r
    | n - r == 1    = n
    | otherwise = (n / (n - r)) * (choose (n - 1) r)
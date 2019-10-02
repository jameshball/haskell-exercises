import Data.Char

main = do
    print (celToFahr 40)
    
celToFahr :: Float -> Float
celToFahr c
    = c * (9/5) + 32
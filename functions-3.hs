import Data.Char

main = do
    print (distance (0, 0) (1, 1))
    
distance :: (Float, Float) -> (Float, Float) -> Float
distance (x1, y1) (x2, y2)
    = sqrt ((x1 - x2)^2 + (y1 - y2)^2)
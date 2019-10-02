import Data.Char

main = do
    print (triangleArea (0, 0) (23, 11) (21,8))

type Vertex = (Float, Float)
    
distance :: Vertex -> Vertex -> Float
distance (x1, y1) (x2, y2)
    = sqrt ((x1 - x2)^2 + (y1 - y2)^2)

triangleArea :: Vertex -> Vertex -> Vertex -> Float
triangleArea x y z
    = let (a, b, c) = (distance x y, distance x z, distance y z) in let s = (a + b + c)/2 in sqrt (s * (s - a) * (s - b) * (s - c))
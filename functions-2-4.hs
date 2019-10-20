main = do
    print (triangleArea (0, 0) (23, 11) (21,8))

-- Type synonymn
type Vertex = (Float, Float)
    
distance :: Vertex -> Vertex -> Float
distance (x1, y1) (x2, y2)
    = sqrt ((x1 - x2)^2 + (y1 - y2)^2)

triangleArea :: Vertex -> Vertex -> Vertex -> Float
triangleArea x y z =
    sqrt (s * (s - a) * (s - b) * (s - c))
    where
        s = (a + b + c)/2
        a = distance x y
        b = distance x z
        c = distance y z
main = do
    print (goldenRatio 0.0000000000000001)
 
-- Pre: 0 < e < 1
-- Returns the goldenRatio to an accuracy of e.
goldenRatio :: Double -> Double
-- Initial rMinusOne value is arbitrarily inaccurate.
goldenRatio e = goldenRatio' 9999 0 1
    where
        goldenRatio' :: Double -> Double -> Double -> Double
        goldenRatio' rMinusOne fibK fibKPlusOne
            | goldRatEst < e    = r
            | otherwise         = goldenRatio' r fibKPlusOne fibKPlusTwo
            where
                fibKPlusTwo = fibK + fibKPlusOne
                r = fibKPlusTwo / fibKPlusOne
                goldRatEst = (abs (r - rMinusOne)) / r


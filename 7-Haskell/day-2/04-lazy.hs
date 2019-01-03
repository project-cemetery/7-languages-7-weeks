module Main where
  
  concatIntegers :: Integer -> Integer -> Integer
  concatIntegers x y = read ((show x) ++ (show y)) :: Integer

  lazy :: Integer -> Integer -> [Integer]
  lazy position x = map (\y -> if (y `mod` position == 0) then concatIntegers x y else y) [1..]

  lazyX = lazy 3
  lazyY = lazy 5

  lazyXY x y = lazy 8 (x + y)

  main :: IO ()
  main = return ()

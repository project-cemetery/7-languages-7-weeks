module Main where
  
  customGcd :: Integer -> Integer -> Integer
  customGcd a 0 = a
  customGcd 0 b = b
  customGcd a b = if (a > b) then customGcd b (a - b) else customGcd a (b - a)

  main :: IO ()
  main = return ()

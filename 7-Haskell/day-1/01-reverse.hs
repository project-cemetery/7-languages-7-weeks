module Main where

  customReverse :: [a] -> [a]
  customReverse ([]) = []
  customReverse (head:tail) = customReverse tail ++ [head]

  main :: IO ()
  main = return ()

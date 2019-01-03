module Main where

  customSort :: (Ord a) => [a] -> [a]
  customSort [] = []
  customSort (x:xs) = customSort [y | y <- xs, y <= x] ++ [x] ++ customSort [y | y <- xs, y > x]

  main :: IO ()
  main = return ()

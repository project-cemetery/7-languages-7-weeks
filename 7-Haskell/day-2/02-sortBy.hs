module Main where

  customSortBy :: (a -> a -> Bool) -> [a] -> [a]
  customSortBy _ [] = []
  customSortBy by (x:xs) = (customSortBy by [y | y <- xs, by x y]) ++ [x] ++ (customSortBy by [y | y <- xs, not (by x y)])

  main :: IO ()
  main = return ()

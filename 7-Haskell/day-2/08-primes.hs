module Main where
  
  primes = [n | n <- [2..], product [1..n-1] `rem` n == n - 1]

  main :: IO ()
  main = return ()

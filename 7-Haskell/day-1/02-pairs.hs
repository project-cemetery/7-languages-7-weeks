module Main where

  colors = ["black", "white", "blue", "yellow", "red"]
  colorPairs = [(a, b) | a <- colors, b  <- colors, a < b]

  main :: IO ()
  main = return ()

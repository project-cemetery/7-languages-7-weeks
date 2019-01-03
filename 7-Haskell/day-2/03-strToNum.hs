module Main where
  import Data.Char (isDigit)
  import Data.Text (isInfixOf, pack)

  clearStr :: String -> String
  clearStr str = dropWhile (\char -> not (isDigit char)) str

  strToNum :: String -> Float
  strToNum str = read (clearStr str) :: Float

  main :: IO ()
  main = return ()

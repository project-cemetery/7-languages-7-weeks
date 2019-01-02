module Main where

  data Color = Red | Green | Blue
    deriving (Eq, Show, Enum)
  colors = [Red ..]

  coloring = head [[("Tennessee"  , cr1),
    ("Mississippi", cr2),
    ("Alabama"    , cr3),
    ("Georgia"    , cr4),
    ("Florida"    , cr5)]
    | cr1 <- colors,
      cr2 <- colors,
      cr3 <- colors,
      cr4 <- colors,
      cr5 <- colors,
      cr1 `notElem` [cr2, cr3, cr4],
      cr3 `notElem` [cr2,      cr4],
      cr5 `notElem` [cr2, cr3, cr4]]

  main :: IO ()
  main = return ()

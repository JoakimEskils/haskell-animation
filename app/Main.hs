module Main where

import Graphics.Gloss
import Packaget

main :: IO ()
main = display window background drawing
  where
    window = InWindow "Nice Window" (200, 200) (0, 0)
    background = white
    drawing = Circle 80
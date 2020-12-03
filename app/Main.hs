module Main where

import Graphics.Gloss
import Packaget

windowDisplay :: Display
windowDisplay = InWindow "Window" (200, 200) (10, 10)

animationFunc :: Float -> Picture
animationFunc time = Circle (2 * time)

main :: IO ()
main = animate windowDisplay white animationFunc

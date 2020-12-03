module Main where

import Data.Complex
import Graphics.Gloss

windowDisplay :: Display
windowDisplay = InWindow "Window" (200, 200) (10, 10)

main :: IO ()
main = animate windowDisplay white animationFunc

animationFunc :: Float -> Picture
animationFunc time = thickCircle (4 * time) (7 * time)
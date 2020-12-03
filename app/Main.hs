module Main where

import Graphics.Gloss
import Packaget

width, height :: Int
(width, height) = (10000, round . (* sqrt 2) . fromIntegral $ width)

windowDisplay :: Display
windowDisplay = InWindow "Mandelbrot" (200, 200) (10, 10)

main :: IO ()
main = display windowDisplay white (Circle 80)
module Main where

import Graphics.Gloss

main :: IO ()
main = animate (InWindow "window" (800, 600) (10, 10)) black frame

frame :: Float -> Picture
frame iteration = Pictures [Translate 0 (-150) $ figure 7 iteration]

figColor :: Color
figColor = makeColor 1 0 1 0.5

figure :: Int -> Float -> Picture
figure 0 iteration = Blank
figure n iteration = Pictures [Color figColor $ rectangleSolid 5 720
  ,Translate 0 50
 $ Rotate (600 * cos iteration / (fromIntegral n) )
 $ figure (n-1) iteration
 , Translate 0 70
 $ figure (n-1) iteration
   ]
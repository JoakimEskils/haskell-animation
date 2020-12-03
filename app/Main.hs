module Main where

import Data.Complex
import Graphics.Gloss

converge :: Char -> Complex Double -> Complex Double -> Char
converge c b a
  | magnitude a > 3 = c
  | c == ' ' = c
  | otherwise = converge (pred c) b (a * a + b)

main :: IO ()
main = putStrLn (unlines $ zoom 200 (-3, -1) (-1, 1))

zoom n (r0, r1) (i0, i1) =
  map (map q . flip map (linspace n r0 r1) . flip (:+)) (linspace (n / 2) i0 i1)
  where
    linspace m a b = [a, a + ((b - a) / m) .. b]
    q u = converge '~' u u

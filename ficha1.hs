module Ficha1 where

--1
--
cenas1 = (*) 2 . (1+)
cenas2 = succ . (2*)

cenas3 :: [a] -> Int
cenas3 = succ . length

cenas4 :: (Int, Int) -> Int
cenas4 = succ . (*) 2 . uncurry (+)

length' :: [a] -> Int
length' = foldr (\_ -> (+)1) 0 

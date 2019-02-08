module Ficha1 where

import Control.Monad
import Data.Maybe

--1
--
cenas1 = (*) 2 . (1 +)

cenas2 = succ . (2 *)

cenas3 :: [a] -> Int
cenas3 = succ . length

cenas4 :: (Int, Int) -> Int
cenas4 = succ . (*) 2 . uncurry (+)

length' :: [a] -> Int
length' = foldr (const succ) 0

reverse' :: [a] -> [a]
reverse' = foldr (\x l -> (:)) []

catMaybes' :: [Maybe a] -> [a]
catMaybes' = map fromJust . filter isJust

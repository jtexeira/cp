module Ficha1 where

import Data.Maybe

--1
--
cenas1 = (*) 2 . (+) 1

cenas2 = succ . (*) 2

cenas3 :: [a] -> Int
cenas3 = succ . length

cenas4 :: (Int, Int) -> Int
cenas4 = succ . (*) 2 . uncurry (+)

length' :: [a] -> Int
length' = foldr (const succ) 0

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

catMaybes' :: [Maybe a] -> [a]
catMaybes' = map fromJust . filter isJust
--4
uncurry' :: (a -> b -> c) -> (a,b) -> c
uncurry' f (a,b) = f a b

curry' :: ((a,b) -> c) -> a -> b -> c
curry' f a b = f (a,b)

flip' :: (a -> b -> c) -> b -> a -> c
flip' f b a = f a b

--7
concat' :: [[a]] -> [a]
concat' [[]] = []
concat' [] = []
concat' (h:t) = h ++ concat' t
--9
m :: (a -> b) -> [a] -> [b]
m f = foldr ((:) . f) []

m' :: (a -> b) -> [a] -> [b]
m' = map

module Ficha1 where

import Data.Maybe

--1

cenas1 = (*) 2 . (+) 1

cenas2 = succ . (*) 2

cenas3 :: [a] -> Int
cenas3 = succ . length

cenas4 :: (Int, Int) -> Int
cenas4 = succ . (*) 2 . uncurry (+)

--2

length' :: [a] -> Int
length' = foldr (const succ) 0

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

--3

catMaybes' :: [Maybe a] -> [a]
catMaybes' = map fromJust . filter isJust

--4

uncurry' :: (a -> b -> c) -> (a,b) -> c
uncurry' f (a,b) = f a b

curry' :: ((a,b) -> c) -> a -> b -> c
curry' f a b = f (a,b)

flip' :: (a -> b -> c) -> b -> a -> c
flip' f b a = f a b

--5

data LTree a = Leaf a | Fork (LTree a, LTree a)

flatten :: LTree a -> [a]
flatten (Leaf a) = [a]
flatten (Fork (a,b)) = flatten a ++ flatten b

mirror :: LTree a -> LTree a
mirror (Fork (a,b)) = Fork (mirror b, mirror a)
mirror a = a

fmap' :: (b -> a) -> LTree b -> LTree a
fmap' f (Leaf b) = Leaf (f b)
fmap' f (Fork (a,b)) = Fork (fmap' f a, fmap' f b)

--7

concat' :: [[a]] -> [a]
concat' (h:t) = h ++ concat' t
concat' _ = [] 

--8

pota :: [Int] -> [Int]
pota = foldr (\ x acc -> if x > 0 then succ x : acc else acc) []

--9

m :: (a -> b) -> [a] -> [b]
m f = foldr ((:) . f) []

m' :: (a -> b) -> [a] -> [b]
m' = map

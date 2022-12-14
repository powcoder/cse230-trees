https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module CSE230.List where

import Prelude hiding (maximum)

-------------------------------------------------------------------------------
-- | clone
-------------------------------------------------------------------------------
-- >>> clone 5 'a'
-- "aaaaa"
--
-- >>> clone 3 "cat"
-- ["cat","cat","cat"]

clone :: Int -> a -> [a]
clone n x 
  | n <= 0    = error "fill this in"
  | otherwise = error "fill this in"

-------------------------------------------------------------------------------
-- | Padding a List
-------------------------------------------------------------------------------
data Dir = DirL | DirR
  deriving (Eq, Show)

-- >>> pad DirL 10 0 [1,2,3,4,5] 
-- [0,0,0,0,0,1,2,3,4,5]

-- >>> pad DirR 10 0 [1,2,3,4,5] 
-- [1,2,3,4,5,0,0,0,0,0]

-- >>> pad DirL 3 0 [1,2,3,4,5] 
-- [1,2,3,4,5]

-- >>> pad DirR 3 0 [1,2,3,4,5] 
-- [1,2,3,4,5]

pad :: Dir -> Int -> a -> [a] -> [a]
pad dir n x ys = error "fill this in"


-------------------------------------------------------------------------------
-- | 'isSubSequence s1 s2' returns True if `s1` is a sub-sequence of `s2` i.e.
--   if `s1` can be obtained by deleting some elements of `s2`
-------------------------------------------------------------------------------
-- >>> isSubSequence "cat" "dog"
-- False
--
-- >>> isSubSequence "cat" "craptasticdog"
-- True
--
isSubSequence :: (Eq a) => [a] -> [a] -> Bool
isSubSequence []         _      = error "fill this in"
isSubSequence _          []     = error "fill this in"
isSubSequence xxs@(x:xs) (y:ys) = error "fill this in"

-------------------------------------------------------------------------------
-- | maximum 
-------------------------------------------------------------------------------
-- >>> maximum 99 []
-- 99
--
-- >>> maximum 99 [90, 100, 200, 52]
-- 200

maximum :: (Ord a) => a -> [a] -> a 
maximum d xs = foldr f base xs  
  where 
    base     = error "fill this in"
    f        = error "fill this in"

-------------------------------------------------------------------------------
-- | intersperse
-------------------------------------------------------------------------------
-- >>> intersp '|' "chewbacca"
-- "|c|h|e|w|b|a|c|c|a|"

-- >>> intersp "yo!" ["which", "way", "is", "the", "park"]
-- ["yo!","which","yo!","way","yo!","is","yo!","the","yo!","park","yo!"]

intersp :: a -> [a] -> [a]
intersp s xs = foldr f base xs
  where 
    base     = error "fill this in"
    f x r    = error "fill this in"

-------------------------------------------------------------------------------
-- Higher Order: iter
-------------------------------------------------------------------------------
-- >>> iter 10 (\x -> 2 * x) 1
-- 1024

iter :: Int -> (a -> a) -> a -> a
iter 0 _ x = error "fill this in"
iter n f x = error "fill this in"

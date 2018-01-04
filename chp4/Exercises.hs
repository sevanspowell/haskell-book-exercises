{-# OPTIONS_GHC -Wall #-}

module Exercises where

-- Exercises: Mood Swing
data Mood = Blah | Woot deriving Show

-- 1. Type constructor is 'Mood'
-- 2. If a function required a Mood value, the values you could possibly use are
--    'Blah' and 'Woot'
-- 3. changeMood :: Mood -> Woot should be changeMood :: Mood -> Mood, first is
--    incorrect as a type signature specifies the types of the values returned,
--    not the values themselves.
-- 4.
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- Exercises: Find the Mistakes
-- 1. not (True && True)  -- Function application has a higher precedence than any operator
-- 2. not (x == 6)
-- 3. (1 * 2) > 5
-- 4. "Merry" > "Happy"
-- 5. ["1", "2", "3"] ++ ["look at me!"]

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "eyyyyy. What's shakin'?"
  else
    putStrLn "pshhhh."
  where cool =
          coolness == "downright frosty yo"

-- Chapter Exercises
-- 1. length :: [a] -> Integer
-- 2. a) 5
--    b) 3
--    c) 2
--    d) 5
-- 3. b) Returns an error as length returns an Int, only fractional numbers can
--    be divided, a) works as these integers are promoted to Fractional numbers,
--    however the return type of the length function is fixed as an Int, which
--    has no Fractional typeclass instance.
-- 4. ?
-- 5. Boolean, True
-- 6. Boolean, False
-- 7. a) Works, True
--    b) Doesn't work, list elements must all be of the same type
--    c) Works, 5
--    d) Works, False
--    e) Doesn't work, 9 is not a Boolean value

-- 8.
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

-- 9.
myAbs :: Integer -> Integer
myAbs x = if x < 0
          then -x
          else x

-- 10.
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- Correcting syntax
-- 1.
plus :: (Num a) => a -> a -> a
plus = (+)

ff :: (Foldable t) => t a -> Int
ff xs = l `plus` 1
  where
    l = length xs

-- 2.
id' :: a -> a
id' = (\x -> x) 

-- 3.
fst' :: (a, b) -> a
fst' (a, _) = a

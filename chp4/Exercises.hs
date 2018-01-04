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


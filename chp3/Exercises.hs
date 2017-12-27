-- Chapter 3 Exercises
module Exercises where
-- 1.

-- 2.
-- a) d
-- b) b
-- c) e
-- d) a
-- e) b

-- 3.
-- "Curry is awesome" ++ "!"
-- ["Curry is awesome!" !! 4] -- [] to convert char to string (:[])
-- drop 9 "Curry is awesome!"

appendExclamation :: String -> String
appendExclamation xs = xs ++ "!"

fifthChar :: String -> String
fifthChar xs = [xs !! 4]

drop9Chars :: String -> String
drop9Chars xs = drop 9 xs

thirdLetter :: String -> Char
thirdLetter xs = xs !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

rvrs :: String
rvrs = awesome ++ " " ++ is ++ " " ++ curry
  where
    curry = take 5 str
    awesome = drop 9 str
    is = drop 6 (take 8 str)
    str = "Curry is awesome"

module Reverse where

rvrs :: String
rvrs = awesome ++ " " ++ is ++ " " ++ curry
  where
    curry = take 5 str
    awesome = drop 9 str
    is = drop 6 (take 8 str)
    str = "Curry is awesome"

main :: IO ()
main = print $ rvrs

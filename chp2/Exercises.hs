import Prelude (String, IO, pi, (*), (++), putStrLn, (+), (/), negate, (^))

sayHello :: String -> IO ()
sayHello x =
  putStrLn ("Hello " ++ x ++ "!")

-- triple x = x * 3

-- Exercises: Comprehension Check
-- 1.
-- let half x = x / 2
-- let square x = x * x

-- 2.
areaCircle r = 3.14 * (r * r)

-- 3.
areaCircle' r = pi * (r * r)

-- Exercises: Parentheses and Association
-- 1. Parentheses change result
-- 2. Parentheses do not change result
-- 3. Parentheses change result

-- Exercises: Heal the Sick
-- 1. let area x = 3.14 * (x * x)
-- 2. let double x = x * 2
-- 3.
x = 7
y = 10
f = x + y

-- Exercises: A Head Code
-- 1. 5
-- 2. 25
-- 3. 30
-- 4. 6

one = x * 3 + y
  where x = 3
        y = 1000

two = x * 5
  where y = 10
        x = 10 * 5 + y

three = z / x + y
  where x = 7
        y = negate x
        z = y * 10

-- Chapter Exercises

-- Parenthesization
-- 1. 2 + (2 * 3) - 1
-- 2. (^) 10 $ (1 + 1)
-- 3. ((2 ^ 2) * (4 ^ 5)) + 1

-- Equivalent expressions
-- 1. Same result
-- 2. Same result
-- 3. Different result: (400 - 37) vs. (37 - 400)
-- 4. Different result: integral vs fractional division
-- 5. Different result: ((2 * 5) + 18) vs (2 * (5 + 18))

-- More fun with functions
-- let z = 7
-- let y = z + 8
-- let x = y ^ 2
-- let waxOn = x * 5
--
-- 1. 1135
--    1135
--   -1110
--    1110
--
-- 3. 3375
--
-- 4.
waxOn = x * 5
  where x = y ^ 2
        y = z + 8
        z = 7

-- 5.
triple x = x * 3

-- 6.
waxOff x = triple x

-- 7. waxOff 10 = 30
--    waxOff (-50) = -150
waxOff' x = (triple x) / x

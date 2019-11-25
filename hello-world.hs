notmain = do putStrLn "Hello, World!"; print (fac 10)
fac 0 = 1
fac n = n * fac (n-1)

add                     :: Integer -> Integer -> Integer
add x y                 =  x + y
inc                    = add 1
doubleUp x = add x x
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)
multiplyBy9 = (*9)
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
applyNTimes :: Int -> (a -> a) -> a -> a
applyNTimes n f val = foldl (\s e -> e s) val [f | x <- [1..n]]

main = do
       print (inc 4)
       print (doubleUp 7)
       print (doubleUp (inc 4))
       print (add 3 (add 4 5))
       print (multiplyBy9(divideByTen(20)))
       print (multiplyBy9 7)
       print (applyTwice multiplyBy9 5)
       print (applyNTimes 6 inc 4)

--or maybe uncomment this version of main

--main = do putStrLn "What is 2 + 2?";
--          x <- readLn
--          if x == 4
--              then putStrLn "You're right!"
--              else putStrLn "You're wrong!"

--or maybe use this main

--greet = do name <- getLine; putStrLn ("Hey " ++ name ++ ", you rock!")
--main = do
--    foo <- putStrLn "Hello, what's your name?"
--    greet
----    name <- getLine
--    putStrLn "Hello, World!"
----    putStrLn ("Hey " ++ name ++ ", you rock!")


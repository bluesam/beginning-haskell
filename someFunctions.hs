double x = x + x
quadruple x = double (double x)
factorial n = product [1..n]
average numbers = sum numbers  `div` length numbers
average2 xs = sum xs / fromIntegral(length xs)
--myFunction :: [a]=>a=>a
--myFunction [] = 0
--myFunction [x:xs] = x + myFunction xs
--myFunction [3] = 4
--myFunction [x:xs] = x + myFunction [xs]
reverseQSort [] = []
reverseQSort (x : xs) = reverseQSort larger ++ [x] ++ reverseQSort smaller
      where smaller = [a | a <-xs, a <= x]
            larger = [b | b <- xs, b>x]

main = do
       print (double 2)
       print (average [1,2,3,4,5])
       print (reverseQSort [3,2,1,4,7,9,8,0,6,5])

-- TASK make your own last and remove function
--TASK check the type of a tuple with multiple types of members

--QUESTION what is the use of vagrant and docker
--QUESTION what is a type signature

--if there is no main, this won't compile but still could be opened in ghci by ghci someFunction.hs
-- infix operator ` allows us to write f x y as x `f` y. It is a syntactic sugar.
--(+) 2 2 equals 2+2
--(-) ((*) 6 11) 2 equals 6 * (11 - 2)
--by convention lists have s as suffix in their name. For example xs, ns, nss
--you can also name stuff as x' or x'' . Haskell allows ' as suffix in a function name
--Hungarian notation means ss as suffix means list of lists and xs means list of type x which is just a naming convention
--some ghci commands
-- type :reload in ghci to reload with the latest compiled changes
-- type the filename.hs to load it into ghci
-- :quit to exit
-- :? show all commands
-- :load name to load script name
-- : type expr to show type of expr
-- :edit name to edit script name
-- :edit to edit current script
-- :t expression to show the type of the expression such as :t "hello world" and :t not. Yes it works on functions too.
--Types like the type of length, which contain type variables, are called polymorphic, because it is like they have many different types at once.
--
--We can be even more adventurous. In Haskell, functions are just values like anything else. So, we can put functions into lists!
--
-- length [length, head]
--All elements of a list must be of the same type! Let’s see what happens if this is not the case:
--
-- [True, "Hello"]
--Haskell also provides tuples. Tuples have a fixed length, but elements of different types can be combined.
--such (1, "Hello")

--what is type inference?
--how does this expression work?
--e :: t
--why does every expression have a type in Haskell?
--in GHCi the :type command calculates the type of an expression without evaluating it.

--Int is fixed precision integer
--Integer is arbitrary precision integer

--why doesn't Integer overflow but Int does?
--the type of a tuple indicates the length of the tuple too

--how is that a function is a mapping from values of one type to values of another type?
--t1 -> t2 is the type of functions that map values of type t1 to values of type t2.
--in that case t1 is the domain of the function while t2 is the range.
--what are domain and range in the above case?

--how to know when a function is receiving two ints and returns an int and when a
--function receives an int and returns a function that takes an int and returns and int
--or in other words, how to know if the function is curried or not?

--curried functions take the arguments one by one.
--what is the difference between
--add :: (Int, Int) -> Int
--add :: Int -> (Int -> Int)
--and what is the correct way to write the above type signatures?

--how can every function be turned into a curried function?
--how does partial application of function work in curried functions?

--what is the reason to use curried functions?
--in what case should one use a curried function over a non curried one?

--how is this function a curried function?
mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

--how is curried function different than method overloading and reusing?
--for example someMethod(arg1){do something}, someMethod(arg1, arg2){someMethod(arg1), do something}

--how is Haskell optimized for curried functions?


--start from types and classes part 3

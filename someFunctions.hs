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



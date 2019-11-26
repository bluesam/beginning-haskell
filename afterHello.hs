--main = print ("hi")
listOfSomeNumbers = [1,2,3,4,5]
newList =reverse (take 3 listOfSomeNumbers) ++ reverse (drop 3 listOfSomeNumbers)
main = do
       print (head listOfSomeNumbers)
       print (tail listOfSomeNumbers)
       putStrLn (show (listOfSomeNumbers !! 2))
       print (take 3 listOfSomeNumbers)
       print (drop 3 listOfSomeNumbers)
       print (length listOfSomeNumbers)
       print (sum listOfSomeNumbers)
       print (product listOfSomeNumbers)
       print (newList)
       print (reverse listOfSomeNumbers)
       print (show "About now on strings")
       print ("Now on strings")
       print (init "We are living in Hello")
       print (reverse ["We","are","living", "in", "hell"])
       print (reverse ["We","are","living", "in"], ["hell"])
       print (null "hello")
       print ("don't do not "++"hello", "it is a type error")
       print ((,)"Helloo" "worldd")-- to show you the infix operator works on default functions too. Here (,) is a function too.
       print (fst (1,2))--the fst and snd work on tuples not lists
       print (head "")--code stops running from here because of the null variable exception



-- head [1,2,3,4,5]
-- tail [1,2,3,4,5]
--[1,2,3,4,5] !! 2
--take 3 [1,2,3,4,5]
--what are higher order functions like map, filter and fold
--drop 3 [1,2,3,4,5]
--length [1,2,3,4,5]
--sum [1,2,3,4,5]
--product [1,2,3,4,5]
-- [1,2,3]++[4,5]
--reverse [1,2,3,4,5]
--f a +b means f(a)+b i.e functions have more precedence than addition

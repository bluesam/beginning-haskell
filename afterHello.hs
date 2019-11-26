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

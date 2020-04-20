import Data.List
import System.IO

--tuples can have elements of different types
randomTuple = (1, "Random Tuple")

--tuple pairs
bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith --where snd means second

--using zip to combine data from multiple lists
names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]
namesAndAddresses = zip names addresses

--type declaration of a function
addMe :: Int -> Int -> Int
--it means get an integer then another integer and then return an integer
--I don't seem to understand it properly
--now for function creation(is that the proper name?), the format is given below
--funcName param1 param2 = operations (returned value)
addMe x y = x + y

--making a function without declaring the type can make it use multiple types for parameters
--which can be a useful thing but can also cause problems/unintended effects
sumMe x y = x + y

--add tuples
addTuples :: (Int,Int) -> (Int,Int) -> (Int,Int)
addTuples (x, y) (x2, y2) = (x+x2, y +y2)
--note that this one only receives tuples of size 2

--using conditions with functions
drivingAge  :: Int -> String
drivingAge 18 = "You can drive"
drivingAge 80 = "You are too old"
--now the above one will work with only two of those values
--u can use x or _ to make it work with other values
drivingAge _= "I don't about that one"
--drivingAge x= "I don't know about that one"

--using recursion, example of factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)
--Every recursion needs a breaking point/case to stop it, otherwise it will keep on going forever
--Here the breaking point is 0.
--Think of it as an if condition.
--When the value passed is 0, give 1. When it is not 1, do n * factorial (n-1)
--and now factorial calls itself until the value is finally 0.
--what I don't understand here is that how does it not process negative values when given those.
--like is there a built-in safety system?
--how to make a function process negative numbers?

--another way to do factorial is to use product on lists
productFactorial n = product [1..n]
--this one won't process 0 as input because you can't make a list from 1 to 0. but why not?
--also why can't it make a list from 1 to -3? how to make a list from -3 to 3 or from 3 to -3?
--and if it does make a list like that then why can't it do the product? what exactly is the reason for error?

--using some conditions in a function
isOdd :: Int -> Bool
isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True
--here you can see that the conditions are defined using |
--also the code looks too clean because there are not parenthesis in the condition check
--what exactly is the role of | here?
--can I use parenthesis here to make it easier to know when the condition check ends

--another way to make the above function is:
isEven n = n `mod` 2 == 0
--how does this one return false when the given an odd number? there is no condition for odd defined there
-- or is it based on some default behavior thing?
--how is it related to guards in Haskell?

--some more stuff about guards in Haskell
whatGrade :: Int -> String
whatGrade age
    | (age >=5 && age <= 6) = "Kindergarten"
    | (age >6 && age <= 10) = "Elementary School"
    | (age > 10 && age <= 14) = "Middle School"
    | (age >14 && age <= 18) = "High School"
    | otherwise = "College"
--doesn't it all execute in an if else style?

--where clause in Haskell
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible batting average"
    | avg <= 0.250 = "Average player"
    | avg <= 0.280 = "You are doing pretty good"
    | otherwise = "You are a superstar"
    where avg = hits/atBats

--making functions that use lists
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ " and the rest is " ++ show xs
--here the empty brackets are for the empty lists.
--the first condition is for when the list is empty
--the second one is for when the list contains one item, that is why it is empty [] after x
--the third is for when the list contains two items, that is why it is empty [] after x and y
--the the fourth is for when the list contains more than 2 items, x for the first and xs for the rest of the items

--using as patterns
getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first leter in " ++ all ++ " is " ++ [x]
--can't it be done using some other way?
--this is so confusing. I can't understand the as patterns
--and what exactly does the all do? and why is there an @? does all combines all the elements together?
--what is a better use case for the above concept?

--main function
main = do
    putStrLn "What is ur name?"
    name <- getLine
    putStrLn ("Hello " ++ name)

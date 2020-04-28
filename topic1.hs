import Data.List
import System.IO
import qualified FirstModule
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

--using higher order functions
times4 :: Int -> Int
times4 x = x * 4
listTimes4 = map times4 [1,2,3,4,5]
--map is a function that seems to accept another function and applies all the elements in the list to the function
--could it be also done using a for loop like thing i.e for x in list times4?

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs
--now what happens is that it passes x to the times4 function, and then passes the rest i.e xs to itself
--and then it gets a new x which it passes to times4 and a new xs which it passes to itself again.
--and then when the list is finally empty, it just gives back the empty list and ends the execution
--the above thing uses recursion to times4 all the elements of a list.
--recursion is indeed used a lot in Haskell.

--checking if strings are equal using recursion
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x ==y && areStringsEq xs ys
areStringsEq _ _ = False
-- here there are two _ separated by space because it means any two inputs that are not covered before
--strings that have different lengths will be processed using that last case which always returns false
--the last one sort of acts like a safety check too

--passing a function to a function
doMult :: (Int -> Int) -> Int
--here (Int -> Int) means a function that gets an int and returns an int
--and doMult receives a function and returns an int.
--and the function that doMult receives is a function that receives an int and returns an int
doMult func = func 3
num3Times4 = doMult times4
--now here num3Times4 gives the function times4 to the do mult function
--now the doMult gives the number 3 to the function times4
--times4 multiplies 3 by 4 and returns 12
--the above thing looks cool but could it be used for something useful? right now it seems gimmicky to me

--we can also make a function that returns a function
getAddFunc :: Int -> (Int -> Int)
--as you can see that it receives an Int and returns a function that receives and returns an Int
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4
--the above one looks cool but what is an example of a use case that makes using such a trick useful?
--also isn't the above thing partially applied function?

--using the adds3 in for a list using map
threePlusList = map adds3 [1,2,3,4,5]

--using lambda functions
double1To10 = map (\x -> x * 2) [1..10]
--the \ is used to define a lambda
--x is the input it receives and then x * 2 is the output here

--comparision operators in Haskell are < > <= >= == and /= which is not equal to
--logical operators are && || not

--if statements in Haskell
doubleEvenNumber y =
    if (y `mod` 2 /= 0)--condition check for odd number
    then y
    else y*2

--example of case
getClass :: Int -> String
getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go away"
-- here the underscore is the default case
--the "of" makes it look confusing. what is the purpose of "of" here?

getClassFromModule x = FirstModule.getClass x
--continue watching it from 57 minutes or 56 maybe

--main function
main = do
    putStrLn "What is ur name?"
    name <- getLine
    putStrLn ("Hello " ++ name)

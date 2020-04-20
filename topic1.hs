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
--what I don't understand here is that how does it not process negative values. like is there a built-in safety system?
--how to make a function process negative numbers?


--main function
main = do
    putStrLn "What is ur name?"
    name <- getLine
    putStrLn ("Hello " ++ name)

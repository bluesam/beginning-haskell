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
--start from 33 minutes, time for a break

--main function
main = do
    putStrLn "What is ur name?"
    name <- getLine
    putStrLn ("Hello " ++ name)

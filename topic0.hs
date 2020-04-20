{-
some comment
another comment
-} 
--single line coomment
import Data.List
import System.IO

--get the max number in Int type
maxInt = maxBound :: Int

minInt = minBound :: Int

--Integer is the unbounded int which means the max number
--your computer can hold
--Float is a single percision floating point
--Double is bigger than float and has 11 point percision

--why does this second cause problem? and the first doesn't
--bigFloat = 3.99999999999 + 0.00000000005
bigFloat = 3.99999999999 + 0.000000000005

--Bool is the true or false thing
--Char is there with '
--Tuple is like lists and can store multiple types of values
--why do tuples mostly contain two values in everyday usage?

--u can declare a permanent value of a variable by like this
--doesn't assigning a permanent value to a variable make it a constant
always5 :: Int
always5 = 5
--I don't understand the above code for always5
--is it a type of variable declaration and initialization that is done
--separately on two lines?

--tuple operations like sum
sumOfNums = sum [1..1000]
--you can see above that it generates range like in python and rust
--but it also includes the last number. doesn't it?

--simple math operations like add, sub etc are easy
divEx = 5/4

--use infix operator for writing intuitive code in some cases
modEx = 5 `mod` 4 --where mod is used for remainder of division

--if u want to do addition on a negative number, u gotta put it in parenthisis
negNumEx = 10 + (-4)

--u can use fromIntegral to convert an int to float
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9) --because sqrt requires a float

--some more math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2 --can this one be used for other powers too?
truncateVal = truncate 9.999 -- what does this one do?
roundVal = round 9.999 --does it round up or round down or both
ceilingVal = ceiling 9.999
floorVal = floor 9.999
sin45 = sin 45
--and also cos, tan, asin, atan, acos, sinh, tanh, cosh, asinh, atanh, acosh
--what is the differece between cos and cosh?
--and do they use degrees or radians? what is the differnce between deg and rad

--AND operator is &&. OR operator is ||. NOT operator is not().

--some basics operations on lists
primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13,17,19,23]
--u can use : to combine elements into a list
favNums =  2 : 7 : 21 : 66 :[]
--lists inside of list
multList = [[3,5,7],[11,13,17]]
--make a new list using list and a member
morePrimes2 = 2 : morePrime
--length of list
lenPrime = length morePrimes2
--some more operations on lists
revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
--get the second member of a list
secondPrime = morePrimes2 !! 1
--first and last values
firstPrime = head morePrimes2
lastPrime = last morePrimes2
--get everything except the last member in a list
primeInit = init morePrimes2 --why is it called init?
--get first 3 elements
first3Primes = take 3 morePrimes2
--get everything except the first 3 elememts
notFirst3 = drop 3 morePrimes2
--check if a value is a member
is7InList = 7 `elem` morePrimes2 -- using the inix instead of prefix
--get max and min values from a list
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
--get the product of all the numbers in a list
prodPrimes = product morePrimes2
--generate some numbers and give them to a new lilst
zeroToTen = [0..10]
--easily get even numbers
evenList = [2,4..20]
--but what about some complex pattern? for example the table of 4
fourTable = [0,4..40]
--generate character list of every other char
oddLetters = ['A', 'C'..'Z']
--infinite lists by not providing ending value
infinTableOf10 = [10,20..]--don't try printing this because it doesn't stop
fiftythIn10Table = infinTableOf10 !! 49 --index starts from 0
--u can repeat a number a given number of times
many2s = take 10 (repeat 2)
--another way to do this is using replicate
many3s = replicate 10 3
--you can also repeat a sequence of numbers
cycleList = take 10 (cycle [1,2,3,4,5])
--multiply every member by 2
listTimes2 = [x *2 | x <- [1..10]]
--u can also filter the output of operations on the members of list
listTimes3 = [x*3 | x <- [1..20], x*3 <= 50]
--but I can't understand the above syntax. what else could be done there?
--get the output that satisfies both conditions
divisBy9And13 = [x | x <- [1..500], x `mod` 9 == 0, x `mod` 13 ==0]
--get the output that satisfies only one of the conditions
divisBy9Or13 = [x | x <- [1..500], x `mod` 9 == 0 || x `mod` 13 ==0]
--sort a list
sortedList = sort [42, 10, 420, 44, 77, 11, 13, 2020, 1001]
sortedList2 = sort ["yeah", "oh", "yeah"]
--u can also add the members of two lists in matrix addition style by using zipWith
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
-- u can also divide two lists like that
divOfLists = zipWith (/) [10,14,25,42] [2,7,5,42]
--filter an existing list using filter
listBiggerThan5 = filter (>5) morePrime
--sort of a while loop
evensUpTo20 = takeWhile (<=20) [2,4..]
--perform an operation on a number and do the operation on the next one using the result of previous
--now this one may look scary and complex but here are some examples
divOfLists2 = foldr (/) 2 [40, 8, 12, 24, 4]
--what the foldr does is that it starts doing the operation provided from the right of the array
--to the left side but it first applies it using the number provided before the list.
-- in this example, it first divides 4/2, then divides 24 by the result of the previous division
--and then 12 by the previous result and so on until the list ends and
--that final result is the output of the whole line that is saved in the divOfLists2
--it is a bit complex so it takes some time getting used to it but it can be very useful sometimes

--similarly there is a foldl which does the same thing but from left to the right
multOfList = foldl (*) 1 [2, 3, 4, 5]
--here the first number to be multiplied will be 1 by 2 which basically results in 2 since 1 x 2 = 2
--and then 2 x 3 and so on till the list ends.
--u can also do advanced operations on the list members because of something called list comprehension
power3List = [3^n | n <- [1..10]]
--here as u can see that the elements of list are provided as the value of n as shown by <-
--u can also use two lists at a time in a multi-variable scenario
--example of multiplication tables shown below
multTable = [[x * y | y <- [1..10]] | x <- [1..13]]
--now u might ask that why is the list for y inside the bracket but not the list for x
--i am not sure about this and I don't claim to understand it properly but my guess is that
-- it is an operation on x which is like the outer loop and the list for y is an inner loop
--which does the operation x * y. so in other words for x in 1..10 do for y in 1..10 do x * y
--and thus the number of sub-lists depends on the number of members in the list for x and
--the number of elements in the sub-lists depends on the number of members in the list for y

--Now finally done with lists but the file is already quite long so time for a new file called topic1.hs
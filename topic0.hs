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
--
--consider making a new file after 100 lines
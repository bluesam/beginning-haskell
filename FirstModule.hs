module FirstModule (getClass, doubleEvenNumbers) where

import Data.List
import System.IO


getClass :: Int -> String
getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go away. from first module"


doubleEvenNumbers y =
    if (y `mod` 2 /= 0)--condition check for odd number
    then y
    else y*2


--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Lists                                                                 --
--------------------------------------------------------------------------------

module Lab where

--------------------------------------------------------------------------------

import Data.Char (isDigit)

--------------------------------------------------------------------------------

-- without explicit brackets
numbers :: [Int]
numbers = 4 : 8 : 15 : 16 : 23 : 42 : []

-- with explicit brackets to show the associativity of cons
-- the number 4 is currently missing from the beginning of this list
numbers' :: [Int]
numbers' = 4 : (8 : (15 : (16 : 23 : (42 : []))))

-- syntactic sugar for lists
-- the number 42 is currently missing from the end of this list
numbers'' :: [Int]
numbers'' = [4,8,15,16,23,42]

--------------------------------------------------------------------------------

isPalindrome :: [Char] -> Bool 
isPalindrome x = x == reverse x

validModuleCode :: [Char] -> Bool 
validModuleCode [] = False 
validModuleCode (a:b:c:d:e:xs)
    | length (a:b:c:d:e:xs) /= 5 = False
    | a /= 'c' = False 
    | b /= 's' = False
    | isDigit c && isDigit d && isDigit e = True
    | otherwise = True
validModuleCode _ = False

--------------------------------------------------------------------------------

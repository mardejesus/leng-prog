module Lists (member, union, intersection, difference,
              insert, insertionSort,
              binaryToDecimal, toDecimal, toDec, decimal, firsts,
              binaryAdd) where
  
import Data.Char(digitToInt)  

member:: Int -> [Int] -> Bool
member _ []      = False
member e (x:xs)  = e == x || member e xs


union:: [Int] -> [Int] -> [Int]
union [] ys     = ys
union (x:xs) ys 
  | member x ys = union xs ys
  | otherwise   = x : union xs ys

-- Remove Implementations, from, here on

intersection:: [Int] -> [Int] -> [Int]
intersection a b
    | length a == 0 = []
    | member (head a) b = [head a] ++ intersection (tail a) b
    | otherwise = intersection (tail a) b


difference:: [Int] -> [Int] -> [Int]
difference a b
    | length a == 0 = []
    | member (head a) b = difference (tail a) b
    | otherwise = [head a] ++ difference (tail a) b

insert:: Int -> [Int] -> [Int]
insert element a
    | length a == 0 = [element]
    | element>head(a) = [head a] ++ insert element (tail a)
    | otherwise = [element] ++ a

insertionSort :: [Int] -> [Int]
insertionSort a
    | length a == 0 = []
    | otherwise = insert (head a) (insertionSort (tail a))

binaryToDecimal :: [Int] -> Int
binaryToDecimal binary
    | length binary == 1 = (head binary) * (2^0)
    | otherwise = ((head binary) * 2^((length binary) - 1)) + binaryToDecimal (tail binary)
    
toDecimal :: Int -> [Int] -> Int
toDecimal base num
    | length num == 1 = (head num) * (base^0)
    | otherwise = ((head num) * base^((length num) - 1)) + binaryToDecimal (tail num)

charToDec :: Char -> Int -> Int
charToDec char base = case lookup char list of
  Just v -> v
  Nothing -> 0
  where
      list = zip (take base (['0'..'9']++['A'..'Z'])) [0..]
      -- busca en la lista el número correspondiente al char

toDec::Int -> String -> Int
toDec base s
    | length s == 0 = 0
    | otherwise = ((charToDec (s !! 0) base) * (base ^ ((length s)-1))) + (toDec base (drop 1 s))


-- Same as `toDec` But use a list comprehension

decimal::Int -> String -> Int
decimal base s
    | length s == 0 = 0
    | otherwise = ((charToDec (s !! 0) base) * (base ^ ((length s)-1))) + (decimal base (drop 1 s))


firsts::[a] -> [[a]]
firsts list = [take i list | i <- [1..(length list)]]

-- Given two String that represents numbers in binary implement the 'binaryAdd' function
-- DO NOT USE a predefined '+' operation

binaryAdd::String -> String -> String

{-
binaryAdd a b
    let newA = if length a < length b then replicate (length b - length a) '0' ++ a else a
        newB = if length b < length a then replicate (length a - length b) '0' ++ b else b
    in
-}

-- hago una función que sume tres bits y me devuelva el bit de resultado y el de acarreo
addBits :: Char -> Char -> Char -> (Char, Char)
addBits a b c = (x1, x2) where
    x1 = if ((a /= b) /= c) then '1' else '0'
    x2 = if ((a && b) || ((a||b)&&c)) then '1' else '0'

-- merge
merge :: [Int] -> [Int] -> [Int]
merge a [] = a
merge [] b = b
merge (a:as) (b:bs)
    | a<=b = a : merge as b
    | otherwise = b : merge a bs
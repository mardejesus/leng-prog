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

toDec::Int -> String -> Int
toDec base s = error "Implement it"

-- Same as `toDec` But use a list comprehension

decimal::Int -> String -> Int
decimal  = error "Implement it"

firsts::[a] -> [[a]]
firsts = error "Implement it"

-- Given two String that represents numbers in binary implement the 'binaryAdd' function
-- DO NOT USE a predefined '+' operation

binaryAdd::String -> String -> String
binaryAdd  = error "Implement it"

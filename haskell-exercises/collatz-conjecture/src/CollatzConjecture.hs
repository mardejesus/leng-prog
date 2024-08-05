module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collatzRecursive n 0

collatzRecursive :: Integer -> Integer -> Maybe Integer
collatzRecursive n cont
    | n == 1 = Just cont
    | mod n 2 == 0 = collatzRecursive (div n 2) (cont+1)
    | otherwise = collatzRecursive ((n*3)+1) (cont+1)

-- para ejecutar tests, abrir directorio en la terminal, y ejecutar stack test
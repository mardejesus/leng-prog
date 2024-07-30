module Fraction (Fraction, add, sub, mul, divide, hcf) where

type Fraction = (Int, Int)

-- Implement the `add` Function

add :: Fraction -> Fraction -> Fraction
add (a, b) (c, d) = (numerador, denominador)
    where
        numerador = (a*d)+(b*c)
        denominador = b*d

-- Implement the `sub` Function

sub :: Fraction -> Fraction -> Fraction
sub (a, b) (c, d) = (numerador, denominador)
    where
        numerador = (a*d)-(b*c)
        denominador = b*d

-- Implement the `mul` Function

mul :: Fraction -> Fraction -> Fraction
mul (a,b) (c,d) = (numerador, denominador)
    where
        numerador = a*c
        denominador = b*d

-- Implement the `divide` Function

divide :: Fraction -> Fraction -> Fraction
divide (a,b) (c,d) = (numerador, denominador)
    where
        numerador = a*d
        denominador = b*c

-- Implement the `hcf` Function

hcf :: Int -> Int -> Int
hcf n d = hcfRecursivo n d n

-- busca de forma recursiva de mayor a menor, un número que sea divisor de ambos parámetros
hcfRecursivo :: Int -> Int -> Int -> Int
hcfRecursivo a b divisor
    | divisor==1 = 1
    | (mod a divisor == 0) && (mod b divisor == 0) = divisor
    | otherwise = hcfRecursivo a b (divisor-1)

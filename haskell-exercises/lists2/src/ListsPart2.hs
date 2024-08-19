module ListsPart2 (Bit(..), bitAt, charToBits, bits, queens) where

import Data.Char(ord)  
import Data.Bits(testBit)
  
data Bit = F | T  deriving (Eq, Show, Enum, Read)
type Bits = [Bit]

bitAt :: Int -> Char -> Bit
bitAt n c = if testBit (ord c) (7-n) then T else F 
-- dado un char y una posición, devuelve el bit (T o F) en esa posición de la representación del char como byte

charToBits :: Char -> Bits
charToBits c = [bitAt n c | n <- [0..7]]

bits::String -> Bits
bits str = [bitAt n c | c <- str, n<-[0..7]]
-- un string es una lista de caracteres

type Solution = [Int]

queens::Int -> [Solution]
queens = error "Implement It"

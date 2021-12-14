module Data.Nat (
  Nat,
  SubResult(..),
  fromInt,
  add,
  mul,
  sub,
  zero
) where


newtype Nat = Nat Int deriving (Show, Eq, Ord)

data SubResult = Positive Nat | Negative Nat


fromInt :: Int -> SubResult
fromInt n
  | n < 0 = Negative $ Nat (- n)
  | otherwise = Positive $ Nat n

add :: Nat -> Nat -> Nat
add (Nat a) (Nat b) = Nat (a + b)

sub :: Nat -> Nat -> SubResult
sub (Nat a) (Nat b)
  | a < b = Negative $ Nat (b - a)
  | otherwise = Positive $ Nat (a - b)

mul :: Nat -> Nat -> Nat
mul (Nat a) (Nat b) = Nat (a * b)

zero :: Nat
zero = Nat 0

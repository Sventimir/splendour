module Data.Player (
  Player(..)
) where

import Data.Nat (Nat, SubResult(..), fromInt, add, mul, zero)
import Data.Card (Card(..), Colour(..), Assets(..), Price)
import Data.Lord (Lord(..), lordScore)


data Player = Player {
    wallet :: Assets,
    gold :: Nat,
    table :: [Card],
    lords :: [Lord]
  }


playerScore :: Player -> Nat
playerScore p = add
  (foldl (\total card -> add total $ score card) zero $ table p)
  (mul lordScore . natLength $ lords p)
  where
  natLength :: [a] -> Nat
  natLength l = case fromInt $ length l of
    Positive n -> n
    Negative n -> error "Negative list length"

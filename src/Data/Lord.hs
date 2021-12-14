module Data.Lord (
  Lord(..),
  lordScore
) where

import Data.Nat (Nat, SubResult(..), fromInt)
import Data.Card (Price)


newtype Lord = Lord Price

lordScore :: Nat
lordScore = case fromInt 3 of
  Positive n -> n
  Negative _ -> error "Three is negative."

module Data.Card (
  Colour(..),
  Assets(..),
  Price,
  Card(..),
  colouredAssets
) where

import Data.Nat (Nat)


data Colour = Diamond | Ruby | Emerald | Saphire | Obsydian

data Assets = Assets {
    diamond, ruby, emerald, saphire, obsydian :: Nat
  }

type Price = Assets

colouredAssets :: Colour -> Assets -> Nat
colouredAssets Diamond = diamond
colouredAssets Ruby = ruby
colouredAssets Emerald = emerald
colouredAssets Saphire = saphire
colouredAssets Obsydian = obsydian

data Card = Card {
    score :: Nat,
    colour :: Colour,
    price :: Price
  }

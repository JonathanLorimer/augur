module Core where

{-
-- What is authorization? At its core it is a function with the type resource × policy → boolean. What confounds this definition
-- is that policies can contain arbitrary amounts of data, and therefore the function terms that inhabit the aformentioned type
-- can become arbitrarily complex. Managing that complexity is the goal of this exercise
-}

import Data.List
open Data.List


-- A representation of authorization as a mapping from an actor to a set of resources.
-- The use of lists here is for simplicity, we should assume that list membership is unique.
record Relation (A B : Set) (A₁ B₁ : Set₁) : Set₁ where
  field
    rel : A → B₁

    rel-inv : B → A₁

_∘_ : { A B C : Set } → { A₁ B₁ C₁ : Set₁ } → Relation A B A₁ B₁ → Relation B C B₁ C₁ → Relation A C A₁ C₁
_∘_ = ?

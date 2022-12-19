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
record Authorization (Actor Resource : Set) : Set where
  field
    authorize : Actor → List Resource

    inspect : Resource → List Actor

_∘_ : { A B C : Set } → Authorization A B → Authorization B C → Authorization A C
_∘_ = ?

open import Equality

module boolean where

    data Bool : Set where
        true  : Bool
        false : Bool

    id : Bool → Bool
    id true = true
    id false = false

    not : Bool → Bool
    not true = false
    not false = true

    always-true : Bool → Bool
    always-true b = true

    always-false : Bool → Bool
    always-false b = false
    
{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Qclassexample where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE

import qualified Data.Text
-- classexample.Boolean
d_Boolean_2 = ()
data T_Boolean_2 = C_true_4 | C_false_6
-- classexample.not
d_not_8 :: T_Boolean_2 -> T_Boolean_2
d_not_8 v0
  = case coe v0 of
      C_true_4 -> coe C_false_6
      C_false_6 -> coe C_true_4
      _ -> MAlonzo.RTE.mazUnreachableError
-- classexample.not'
d_not''_10 :: T_Boolean_2 -> T_Boolean_2
d_not''_10 v0 = coe seq (coe v0) (coe C_false_6)

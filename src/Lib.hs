module Lib where

import Control.Monad (MonadFail (fail), when)
import Data.Time
import Language.Haskell.TH

todoWhen :: IO Bool -> String -> Q [a]
todoWhen ioBool message = do
  condition <- runIO ioBool
  when condition $ fail message
  pure []

todoOrDieAfter :: Integer -> Int -> Int -> Q [a]
todoOrDieAfter year month day =
  todoWhen (isAfterToday $ fromGregorian year month day) "The day has come 🙀"

isAfterToday :: Day -> IO Bool
isAfterToday deadline = (deadline >) . utctDay <$> getCurrentTime

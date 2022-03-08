module TodoOrDie where

import Control.Monad (MonadFail (fail), when)
import Data.Time
import Language.Haskell.TH

todoOrDieIf :: Bool -> String -> Q [a]
todoOrDieIf condition message = do
  when condition $ fail message
  pure []

todoOrDieWhen :: IO Bool -> String -> Q [a]
todoOrDieWhen ioBool message = do
  condition <- runIO ioBool
  todoOrDieIf condition message

todoOrDieAfterDate :: Integer -> Int -> Int -> Q [a]
todoOrDieAfterDate year month day = do
  let deadline = fromGregorian year month day
  todoOrDieWhen (isBeforeToday deadline) "The day has come 🙀"

isBeforeToday :: Day -> IO Bool
isBeforeToday deadline = (deadline <) . utctDay <$> getCurrentTime

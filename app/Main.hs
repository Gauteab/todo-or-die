{-# LANGUAGE TemplateHaskell #-}

module Main where

import TodoOrDie

-- trigger a compile error if we're past a certain date
$(todoOrDieAfterDate 3000 1 1) -- its the year 3000!

main :: IO ()
main = do
  putStrLn "Compiled!"

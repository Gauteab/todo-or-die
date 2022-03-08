{-# LANGUAGE TemplateHaskell #-}

module Main where

import Lib

-- trigger a compile error if we're past a certain date
$(todoOrDieAfter 3000 1 1) -- its the year 3000!

main :: IO ()
main = putStrLn "Compiled!"

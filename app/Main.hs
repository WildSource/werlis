{- |
Module      :  Main
Copyright   :  (c) WildSource
License     :  MIT License

Maintainer  :  ilovetrap123@hotmail.com
Stability   :  unstable
Portability :  non-portable (using GHC2021)

A programming language using only french keywords
-}

module Main where

import System.Environment
import Lexer.Tokenizer

main :: IO ()
main = do
    args <- getArgs
    path <- readFile $ head args
    if null args
    then print "Execute prompt"
    else print $ tokenize path 

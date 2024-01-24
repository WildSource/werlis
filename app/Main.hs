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
    tokenize readFile $ head args
    if args == []
    then print "Execute prompt"
    else print "Execute File" 

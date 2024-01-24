{- |
Module      :  Lexer.Tokenizer
Copyright   :  (c) WildSource
License     :  MIT License

Maintainer  :  ilovetrap123@hotmail.com
Stability   :  unstable
Portability :  non-portable (using GHC2021)

Tokenizes a string input
-}

module Lexer.Tokenizer (
    tokenize
) where

import Text.Read

getLines :: String -> [String]
getLines "" = []
getLines content = lines content

data TokenType = Literal | Operator deriving (Show)
data Token = Token {rawData :: String, tokenType :: TokenType} deriving (Show)

whichType :: String -> TokenType
whichType token =
    case readMaybe token :: Maybe Int of
        Just _ -> Literal
        Nothing -> Operator

createToken :: String -> Token
createToken content = Token content $ whichType content

getTokens :: String -> [Token]
getTokens "" = [] 
getTokens sentence = let wordList = words sentence in [createToken word | word <- wordList]

tokenize :: String -> [[Token]]
tokenize "" = []
tokenize content = [getTokens line | line <- sentences] where
    sentences = getLines content

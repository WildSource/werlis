module Lexer.Frontend () where

import Lexer.ErrorReporter

type Path = String

executeFile :: Path -> IO ()
executeFile "" = displayError "Empty path provided" 
executeFile path = tokenize path

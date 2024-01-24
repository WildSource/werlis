module Lexer.ErrorReporter (displayError) where

displayError :: String -> IO () 
displayError msg = 
    let formattedMessage = "Error: " ++ msg
    in print formattedMessage 

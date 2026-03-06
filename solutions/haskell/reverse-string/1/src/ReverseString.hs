module ReverseString (reverseString) where

reverseString :: String -> String
reverseString str
  | str == "" = ""
  | otherwise = last str : reverseString (init str)

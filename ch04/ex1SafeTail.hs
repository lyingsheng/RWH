safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x : rest) = Just rest

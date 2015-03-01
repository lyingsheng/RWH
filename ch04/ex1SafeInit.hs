safeInit [] = Nothing
safeInit (x : xs) = if null xs
                    then Just []
                    else Just (x : transfer (safeInit xs))

transfer Nothing = []
transfer (Just a) = a

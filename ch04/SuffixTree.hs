-- as-pattern
suffixes :: [a] -> [[a]]
suffixes xs@(_ : xs') = xs : suffixes xs'
suffixes _ = []

-- no as-pattern
noAsPattern :: [a] -> [[a]]
noAsPattern (x : xs) = (x : xs) : noAsPattern xs
noAsPattern _ = []

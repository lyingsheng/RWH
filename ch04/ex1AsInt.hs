import Data.Char (digitToInt)

-- Implemented with fold
asInt_fold :: String -> Int
asInt_fold cs = sign cs * foldl step 0 (preprocess cs)
  where step acc c = acc * 10 + digitToInt c

sign (s : _) | s == '-' = -1
             | otherwise = 1
sign _ = 1

preprocess (s : cs) | s == '+' = cs
              | s == '-' = cs
              | otherwise = s : cs
preprocess [] = []

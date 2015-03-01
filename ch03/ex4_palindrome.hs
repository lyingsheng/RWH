makePalindrome :: [a] -> [a]
makePalindrome list = list ++ rev list
  where rev [] = []
        rev (x:xs) = rev xs ++ (x : [])

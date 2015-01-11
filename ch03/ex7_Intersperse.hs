intersperse delimiter arrays
  | null arrays = ""
  | length arrays == 1 = head arrays
  | otherwise = head arrays ++ (delimiter : []) ++ intersperse delimiter (tail arrays)

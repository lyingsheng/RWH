niceDrop n xs
  | n <= 0 || null xs = xs
  | otherwise = niceDrop (n - 1) (tail xs)

niceDrop2 n xs | n <= 0 = xs
niceDrop2 _ [] = []
niceDrop2 n (_:xs) = niceDrop2 (n - 1) xs

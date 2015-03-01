-- normal
myLength :: Num a => [t] -> a
myLength xs = if null xs
              then 0
              else 1 + myLength (tail xs)

-- pattern matching
myLength2 [] = 0
myLength2 (_:xs) = 1 + myLength2 xs

-- guards
myLength3 :: [t] -> Int
myLength3 xs
  | null xs = 0
  | otherwise = 1 + myLength3 (tail xs)

-- guards & pattern matching
myLength4 xs | null xs = 0
myLength4 (_:xs) = 1 + myLength4 xs

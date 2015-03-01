myFoldl step zero (x : xs) = myFoldl step (step zero x) xs
myFoldl _  zero [] = zero

foldlSum :: [Integer] -> Integer
foldlSum xs = myFoldl step 0 xs
  where step acc x = acc + x

niceSum :: [Integer] -> Integer
niceSum xs = myFoldl (+) 0 xs


nicerSum :: Num a => [a] -> a
nicerSum = foldl (+) 0

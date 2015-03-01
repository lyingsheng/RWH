-- using local functions
mean :: [Double] -> Double
mean arr = fst(foo(arr)) / snd(foo(arr))
  where foo [] = (0, 0) -- (sum, length)
        foo (x:xs) = (x + fst(foo(xs)), 1 + snd(foo(xs)))

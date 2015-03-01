import System.Environment (getArgs)

transposeWith function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do
          args <- getArgs
          case args of
           [input, output] -> transposeWith function input output
           _ -> putStrLn "error: exactly two argument needed."

        myFunction = transpose


transpose ln = unlines (transposeHelper [] (lines ln))

transposeHelper array [] = array
transposeHelper array (ln : lns) = transposeHelper (addToArray array ln) lns

addToArray :: [String] -> [Char] -> [String]
addToArray [] [] = []
addToArray [] (t : text) = (t : []) : (addToArray [] text)
addToArray array [] = array
addToArray (a : arr) (t : text) = (a ++ (t : [])) : (addToArray arr text)
